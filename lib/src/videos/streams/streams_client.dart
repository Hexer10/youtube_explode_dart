import '../../exceptions/exceptions.dart';
import '../../extensions/helpers_extension.dart';
import '../../reverse_engineering/cipher/cipher_operations.dart';
import '../../reverse_engineering/clients/embedded_player_client.dart';
import '../../reverse_engineering/dash_manifest.dart';
import '../../reverse_engineering/heuristics.dart';
import '../../reverse_engineering/models/stream_info_provider.dart';
import '../../reverse_engineering/pages/watch_page.dart';
import '../../reverse_engineering/player/player_source.dart';
import '../../reverse_engineering/youtube_http_client.dart';
import '../video_id.dart';
import 'streams.dart';

/// Queries related to media streams of YouTube videos.
class StreamsClient {
  final YoutubeHttpClient _httpClient;

  /// Initializes an instance of [StreamsClient]
  StreamsClient(this._httpClient);

  Future<DashManifest> _getDashManifest(
    Uri dashManifestUrl,
    Iterable<CipherOperation> cipherOperations,
  ) {
    var signature =
        DashManifest.getSignatureFromUrl(dashManifestUrl.toString());
    if (!signature.isNullOrWhiteSpace) {
      signature = cipherOperations.decipher(signature!);
      dashManifestUrl = dashManifestUrl.setQueryParam('signature', signature);
    }
    return DashManifest.get(_httpClient, dashManifestUrl);
  }

  Future<StreamContext> _getStreamContextFromEmbeddedClient(
    VideoId videoId,
  ) async {
    final page = await EmbeddedPlayerClient.get(_httpClient, videoId.value);

    return StreamContext(page.streams.toList(), const []);
  }

  Future<StreamContext> _getStreamContextFromWatchPage(VideoId videoId) async {
    final watchPage = await WatchPage.get(_httpClient, videoId.toString());

    final playerConfig = watchPage.playerConfig;

    final playerResponse =
        watchPage.playerResponse ?? playerConfig?.playerResponse;
    if (playerResponse == null) {
      throw VideoUnplayableException.unplayable(videoId);
    }

    final previewVideoId = playerResponse.previewVideoId;
    if (!previewVideoId.isNullOrWhiteSpace) {
      throw VideoRequiresPurchaseException.preview(
        videoId,
        VideoId(previewVideoId!),
      );
    }

    final playerSourceUrl = watchPage.sourceUrl ?? playerConfig?.sourceUrl;
    final playerSource = !playerSourceUrl.isNullOrWhiteSpace
        ? await PlayerSource.get(_httpClient, playerSourceUrl!)
        : null;
    final cipherOperations =
        playerSource?.getCipherOperations() ?? const <CipherOperation>[];

    if (!playerResponse.isVideoPlayable) {
      throw VideoUnplayableException.unplayable(
        videoId,
        reason: playerResponse.videoPlayabilityError ?? '',
      );
    }

    if (playerResponse.isLive) {
      throw VideoUnplayableException.liveStream(videoId);
    }

    final streamInfoProviders = <StreamInfoProvider>[
      ...playerResponse.streams,
    ];

    final dashManifestUrl = playerResponse.dashManifestUrl;
    if (!(dashManifestUrl?.isNullOrWhiteSpace ?? true)) {
      final dashManifest =
          await _getDashManifest(Uri.parse(dashManifestUrl!), cipherOperations);
      streamInfoProviders.addAll(dashManifest.streams);
    }
    return StreamContext(streamInfoProviders, cipherOperations);
  }

  Future<StreamManifest> _getManifest(StreamContext streamContext) async {
    // To make sure there are no duplicates streams, group them by tag
    final streams = <int, StreamInfo>{};

    for (final streamInfo in streamContext.streamInfoProviders) {
      final tag = streamInfo.tag;
      var url = Uri.parse(streamInfo.url);

      // Signature
      var signature = streamInfo.signature;
      final signatureParameter = streamInfo.signatureParameter ?? 'signature';

      if (!signature.isNullOrWhiteSpace) {
        signature = streamContext.cipherOperations.decipher(signature!);
        url = url.setQueryParam(signatureParameter, signature);
      }

      // Content length - Dont try to get content length of a dash stream.
      final contentLength = streamInfo.source == StreamSource.dash
          ? 0
          : streamInfo.contentLength ??
              await _httpClient.getContentLength(url, validate: false) ??
              0;

      if (contentLength == 0 && streamInfo.source != StreamSource.dash) {
        continue;
      }
      // Common
      final container = StreamContainer.parse(streamInfo.container!);
      final fileSize = FileSize(contentLength);
      final bitrate = Bitrate(streamInfo.bitrate ?? 0);

      final audioCodec = streamInfo.audioCodec;
      final videoCodec = streamInfo.videoCodec;

      // Muxed or Video-only
      if (!videoCodec.isNullOrWhiteSpace) {
        final framerate = Framerate(streamInfo.framerate ?? 24);
        final videoQuality =
            VideoQualityUtil.fromLabel(streamInfo.qualityLabel);

        final videoWidth = streamInfo.videoWidth;
        final videoHeight = streamInfo.videoHeight;
        final videoResolution = videoWidth != -1 && videoHeight != -1
            ? VideoResolution(videoWidth ?? 0, videoHeight ?? 0)
            : videoQuality.toVideoResolution();

        // Muxed
        if (!audioCodec.isNullOrWhiteSpace &&
            streamInfo.source != StreamSource.adaptive) {
          streams[tag] = MuxedStreamInfo(
            tag,
            url,
            container,
            fileSize,
            bitrate,
            audioCodec!,
            videoCodec!,
            streamInfo.qualityLabel,
            videoQuality,
            videoResolution,
            framerate,
            streamInfo.codec,
          );
          continue;
        }

        // Video only
        streams[tag] = VideoOnlyStreamInfo(
          tag,
          url,
          container,
          fileSize,
          bitrate,
          videoCodec!,
          streamInfo.qualityLabel,
          videoQuality,
          videoResolution,
          framerate,
          streamInfo.fragments ?? const [],
          streamInfo.codec,
        );
        continue;
      }
      // Audio-only
      if (!audioCodec.isNullOrWhiteSpace) {
        streams[tag] = AudioOnlyStreamInfo(
          tag,
          url,
          container,
          fileSize,
          bitrate,
          audioCodec!,
          streamInfo.qualityLabel,
          streamInfo.fragments ?? const [],
          streamInfo.codec,
        );
      }

      // #if DEBUG
      // throw FatalFailureException("Stream info doesn't contain audio/video codec information.");
    }

    return StreamManifest(streams.values);
  }

  /// Gets the manifest that contains information
  /// about available streams in the specified video.
  Future<StreamManifest> getManifest(dynamic videoId) async {
    videoId = VideoId.fromString(videoId);

    try {
      final context = await _getStreamContextFromEmbeddedClient(videoId);
      return _getManifest(context);
    } on YoutubeExplodeException {
      //TODO: ignore
    }
    final context = await _getStreamContextFromWatchPage(videoId);

    return _getManifest(context);
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
      _httpClient.getStream(streamInfo);
}
