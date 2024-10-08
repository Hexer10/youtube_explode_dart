import 'dart:collection';

import '../../exceptions/exceptions.dart';
import '../../extensions/helpers_extension.dart';
import '../../retry.dart';
import '../../reverse_engineering/cipher/cipher_manifest.dart';
import '../../reverse_engineering/heuristics.dart';
import '../../reverse_engineering/models/stream_info_provider.dart';
import '../../reverse_engineering/pages/watch_page.dart';
import '../../reverse_engineering/youtube_http_client.dart';
import '../video_controller.dart';
import '../video_id.dart';
import 'stream_controller.dart';
import 'streams.dart';

/// Queries related to media streams of YouTube videos.
class StreamClient {
  final YoutubeHttpClient _httpClient;
  final StreamController _controller;

  /// Initializes an instance of [StreamClient]
  StreamClient(this._httpClient) : _controller = StreamController(_httpClient);

  CipherManifest? _cipherManifest;

  /// Gets the manifest that contains information
  /// about available streams in the specified video.
  ///
  /// If [fullManifest] is set to `true`, more streams types will be fetched
  /// and track of different languages (if present) will be included.
  Future<StreamManifest> getManifest(dynamic videoId,
      {bool fullManifest = false}) {
    videoId = VideoId.fromString(videoId);

    return retry(_httpClient, () async {
      final streams =
          await _getStreams(videoId, fullManifest: fullManifest).toList();
      if (streams.isEmpty) {
        throw VideoUnavailableException(
          'Video "$videoId" does not contain any playable streams.',
        );
      }

      final response = await _httpClient.head(streams.first.url);
      if (response.statusCode == 403) {
        throw YoutubeExplodeException(
          'Video $videoId returned 403 (stream: ${streams.first.tag}',
        );
      }

      // Remove duplicate streams (must have same tag and audioTrack (if it's an audio stream))
      final uniqueStreams = LinkedHashSet<StreamInfo>(
        equals: (a, b) {
          if (a.runtimeType != b.runtimeType) return false;
          if (a is AudioStreamInfo && b is AudioStreamInfo) {
            return a.tag == b.tag && a.audioTrack == b.audioTrack;
          }
          return a.tag == b.tag;
        },
        hashCode: (e) {
          if (e is AudioStreamInfo) {
            return e.tag.hashCode ^ e.audioTrack.hashCode;
          }
          return e.tag.hashCode;
        },
      );
      uniqueStreams.addAll(streams);

      return StreamManifest(uniqueStreams.toList());
    });
  }

  /// Gets the HTTP Live Stream (HLS) manifest URL
  /// for the specified video (if it's a live video stream).
  Future<String> getHttpLiveStreamUrl(VideoId videoId) async {
    final watchPage = await WatchPage.get(_httpClient, videoId.value);

    final playerResponse = watchPage.playerResponse;

    if (playerResponse == null) {
      throw TransientFailureException(
        "Couldn't extract the playerResponse from the Watch Page!",
      );
    }

    if (!playerResponse.isVideoPlayable) {
      throw VideoUnplayableException.unplayable(
        videoId,
        reason: playerResponse.videoPlayabilityError ?? '',
      );
    }

    final hlsManifest = playerResponse.hlsManifestUrl;
    if (hlsManifest == null) {
      throw VideoUnplayableException.notLiveStream(videoId);
    }
    return hlsManifest;
  }

  /// Gets the actual stream which is identified by the specified metadata.
  Stream<List<int>> get(StreamInfo streamInfo) =>
      _httpClient.getStream(streamInfo, streamClient: this);

  Future<CipherManifest> _getCipherManifest() async {
    if (_cipherManifest != null) {
      return _cipherManifest!;
    }

    final playerSource = await _controller.getPlayerSource();
    final manifest = playerSource.cipherManifest;
    if (manifest == null) {
      throw YoutubeExplodeException(
        'Could not find the cipher operations manifest.',
      );
    }
    return _cipherManifest = manifest;
  }

  Stream<StreamInfo> _getStreams(VideoId videoId,
      {required bool fullManifest}) async* {
    try {
      // Use await for instead of yield* to catch exceptions
      await for (final stream
          in _getStream(videoId, VideoController.iosClient)) {
        yield stream;
      }
      if (fullManifest) {
        await for (final stream
            in _getStream(videoId, VideoController.androidClient)) {
          yield stream;
        }
      }
    } on VideoUnplayableException catch (e) {
      if (e is VideoRequiresPurchaseException) {
        rethrow;
      }
      yield* _getCipherStream(videoId);
    }
  }

  Stream<StreamInfo> _getStream(VideoId videoId,
      Map<String, Map<String, Map<String, Object>>> ytClient) async* {
    final playerResponse =
        await _controller.getPlayerResponse(videoId, ytClient);
    if (!playerResponse.previewVideoId.isNullOrWhiteSpace) {
      throw VideoRequiresPurchaseException.preview(
        videoId,
        VideoId(playerResponse.previewVideoId!),
      );
    }

    if (playerResponse.videoPlayabilityError?.contains('payment') ?? false) {
      throw VideoRequiresPurchaseException(videoId);
    }

    if (!playerResponse.isVideoPlayable) {
      throw VideoUnplayableException.unplayable(
        videoId,
        reason: playerResponse.videoPlayabilityError ?? '',
      );
    }
    yield* _parseStreamInfo(playerResponse.streams, videoId);

    if (!playerResponse.dashManifestUrl.isNullOrWhiteSpace) {
      final dashManifest =
          await _controller.getDashManifest(playerResponse.dashManifestUrl!);
      yield* _parseStreamInfo(dashManifest.streams, videoId);
    }
  }

  Stream<StreamInfo> _getCipherStream(VideoId videoId) async* {
    final cipherManifest = await _getCipherManifest();
    final playerResponse = await _controller.getPlayerResponseWithSignature(
      videoId,
      cipherManifest.signatureTimestamp,
    );

    if (!playerResponse.isVideoPlayable) {
      throw VideoUnplayableException.unplayable(
        videoId,
        reason: playerResponse.videoPlayabilityError ?? '',
      );
    }

    yield* _parseStreamInfo(playerResponse.streams, videoId);
  }

  Stream<StreamInfo> _parseStreamInfo(
      Iterable<StreamInfoProvider> streams, VideoId videoId) async* {
    for (final stream in streams) {
      final itag = stream.tag;
      var url = Uri.parse(stream.url);
      if (!stream.signature.isNullOrWhiteSpace) {
        final cipherManifest = await _getCipherManifest();
        url = url.setQueryParam(
          stream.signatureParameter!,
          cipherManifest.decipher(stream.signature!),
        );
      }

      final contentLength = stream.contentLength ??
          (await _httpClient.getContentLength(url, validate: false)) ??
          0;

      if (contentLength <= 0) {
        continue;
      }

      final container = StreamContainer.parse(stream.container!);
      final fileSize = FileSize(contentLength);
      final bitrate = Bitrate(stream.bitrate!);

      final audioCodec = stream.audioCodec;
      final videoCodec = stream.videoCodec;

      // Muxed or Video-only
      if (!videoCodec.isNullOrWhiteSpace) {
        final framerate = Framerate(stream.framerate ?? 24);
        // TODO: Implement quality from itag
        final videoQuality = VideoQualityUtil.fromLabel(stream.qualityLabel);

        final videoWidth = stream.videoWidth;
        final videoHeight = stream.videoHeight;
        final videoResolution = videoWidth != null && videoHeight != null
            ? VideoResolution(videoWidth, videoHeight)
            : videoQuality.toVideoResolution();

        // Muxed
        if (!audioCodec.isNullOrWhiteSpace &&
            stream.source != StreamSource.adaptive) {
          assert(stream.audioTrack == null);
          yield MuxedStreamInfo(
            videoId,
            itag,
            url,
            container,
            fileSize,
            bitrate,
            audioCodec!,
            videoCodec!,
            stream.qualityLabel,
            videoQuality,
            videoResolution,
            framerate,
            stream.codec,
          );
          continue;
        }

        // Video only
        yield VideoOnlyStreamInfo(
          videoId,
          itag,
          url,
          container,
          fileSize,
          bitrate,
          videoCodec!,
          stream.qualityLabel,
          videoQuality,
          videoResolution,
          framerate,
          stream.fragments ?? const [],
          stream.codec,
        );
        continue;
        // Audio-only
      } else if (!audioCodec.isNullOrWhiteSpace) {
        yield AudioOnlyStreamInfo(
            videoId,
            itag,
            url,
            container,
            fileSize,
            bitrate,
            audioCodec!,
            stream.qualityLabel,
            stream.fragments ?? const [],
            stream.codec,
            stream.audioTrack);
      } else {
        throw YoutubeExplodeException('Could not extract stream codec');
      }
    }
  }
}
