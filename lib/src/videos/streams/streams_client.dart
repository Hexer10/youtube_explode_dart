import '../../exceptions/exceptions.dart';
import '../../extensions/helpers_extension.dart';
import '../../reverse_engineering/cipher/cipher_operations.dart';
import '../../reverse_engineering/heuristics.dart';
import '../../reverse_engineering/responses/responses.dart';
import '../../reverse_engineering/youtube_http_client.dart';
import '../video_id.dart';
import 'bitrate.dart';
import 'container.dart';
import 'filesize.dart';
import 'framerate.dart';
import 'stream_context.dart';
import 'stream_info.dart';
import 'stream_manifest.dart';
import 'streams.dart';

/// Queries related to media streams of YouTube videos.
class StreamsClient {
  final YoutubeHttpClient _httpClient;

  /// Initializes an instance of [StreamsClient]
  StreamsClient(this._httpClient);

  Future<DashManifest> _getDashManifest(
      Uri dashManifestUrl, Iterable<CipherOperation> cipherOperations) {
    var signature =
        DashManifest.getSignatureFromUrl(dashManifestUrl.toString());
    if (!signature.isNullOrWhiteSpace) {
      signature = cipherOperations.decipher(signature);
      dashManifestUrl = dashManifestUrl.setQueryParam('signature', signature);
    }
    return DashManifest.get(_httpClient, dashManifestUrl);
  }

  Future<StreamContext> _getStreamContextFromVideoInfo(VideoId videoId) async {
    var embedPage = await EmbedPage.get(_httpClient, videoId.toString());
    var playerConfig = embedPage.playerconfig;
    if (playerConfig == null) {
      throw VideoUnplayableException.unplayable(videoId);
    }

    var playerSource =
        await PlayerSource.get(_httpClient, playerConfig.sourceUrl);
    var cipherOperations = playerSource.getCiperOperations();

    var videoInfoResponse = await VideoInfoResponse.get(
        _httpClient, videoId.toString(), playerSource.sts);
    var playerResponse = videoInfoResponse.playerResponse;

    var previewVideoId = playerResponse.previewVideoId;
    if (!previewVideoId.isNullOrWhiteSpace) {
      throw VideoRequiresPurchaseException.preview(
          videoId, VideoId(previewVideoId));
    }

    if (!playerResponse.isVideoPlayable) {
      throw VideoUnplayableException.unplayable(videoId,
          reason: playerResponse.getVideoPlayabilityError());
    }

    if (playerResponse.isLive) {
      throw VideoUnplayableException.liveStream(videoId);
    }

    var streamInfoProviders = <StreamInfoProvider>[
      ...videoInfoResponse.streams,
      ...playerResponse.streams
    ];

    var dashManifestUrl = playerResponse.dashManifestUrl;
    if (!dashManifestUrl.isNullOrWhiteSpace) {
      var dashManifest =
          await _getDashManifest(Uri.parse(dashManifestUrl), cipherOperations);
      streamInfoProviders.addAll(dashManifest.streams);
    }
    return StreamContext(streamInfoProviders, cipherOperations);
  }

  Future<StreamContext> _getStreamContextFromWatchPage(VideoId videoId) async {
    var watchPage = await WatchPage.get(_httpClient, videoId.toString());
    var playerConfig = watchPage.playerConfig;
    if (playerConfig == null) {
      throw VideoUnplayableException.unplayable(videoId);
    }

    var playerResponse = playerConfig.playerResponse;

    var previewVideoId = playerResponse.previewVideoId;
    if (!previewVideoId.isNullOrWhiteSpace) {
      throw VideoRequiresPurchaseException.preview(
          videoId, VideoId(previewVideoId));
    }

    var playerSource =
        await PlayerSource.get(_httpClient, playerConfig.sourceUrl);
    var cipherOperations = playerSource.getCiperOperations();

    if (!playerResponse.isVideoPlayable) {
      throw VideoUnplayableException.unplayable(videoId,
          reason: playerResponse.getVideoPlayabilityError());
    }

    if (playerResponse.isLive) {
      throw VideoUnplayableException.liveStream(videoId);
    }

    var streamInfoProviders = <StreamInfoProvider>[
      ...playerConfig.streams,
      ...playerResponse.streams
    ];

    var dashManifestUrl = playerResponse.dashManifestUrl;
    if (!dashManifestUrl.isNullOrWhiteSpace) {
      var dashManifest =
          await _getDashManifest(Uri.parse(dashManifestUrl), cipherOperations);
      streamInfoProviders.addAll(dashManifest.streams);
    }
    return StreamContext(streamInfoProviders, cipherOperations);
  }

  Future<StreamManifest> _getManifest(StreamContext streamContext) async {
    // To make sure there are no duplicates streams, group them by tag
    var streams = <int, StreamInfo>{};

    for (var streamInfo in streamContext.streamInfoProviders) {
      var tag = streamInfo.tag;
      var url = Uri.parse(streamInfo.url);

      // Signature
      var signature = streamInfo.signature;
      var signatureParameter = streamInfo.signatureParameter ?? 'signature';

      if (!signature.isNullOrWhiteSpace) {
        signature = streamContext.cipherOperations.decipher(signature);
        url = url.setQueryParam(signatureParameter, signature);
      }

      // Content length
      var contentLength = streamInfo.contentLength ??
          await _httpClient.getContentLength(url, validate: false) ??
          0;

      if (contentLength <= 0) {
        continue;
      }

      // Common
      var container = Container.parse(streamInfo.container);
      var fileSize = FileSize(contentLength);
      var bitrate = Bitrate(streamInfo.bitrate);

      var audioCodec = streamInfo.audioCodec;
      var videoCodec = streamInfo.videoCodec;

      // Muxed or Video-only
      if (!videoCodec.isNullOrWhiteSpace) {
        var framerate = Framerate(streamInfo.framerate ?? 24);
        var videoQualityLabel = streamInfo.videoQualityLabel ??
            VideoQualityUtil.getLabelFromTagWithFramerate(
                tag, framerate.framesPerSecond);

        var videoQuality = VideoQualityUtil.fromLabel(videoQualityLabel);

        var videoWidth = streamInfo.videoWidth;
        var videoHeight = streamInfo.videoHeight;
        var videoResolution = videoWidth != -1 && videoHeight != -1
            ? VideoResolution(videoWidth, videoHeight)
            : videoQuality.toVideoResolution();

        // Muxed
        if (!audioCodec.isNullOrWhiteSpace) {
          streams[tag] = MuxedStreamInfo(
              tag,
              url,
              container,
              fileSize,
              bitrate,
              audioCodec,
              videoCodec,
              videoQualityLabel,
              videoQuality,
              videoResolution,
              framerate);
          continue;
        }

        // Video only
        streams[tag] = VideoOnlyStreamInfo(
            tag,
            url,
            container,
            fileSize,
            bitrate,
            videoCodec,
            videoQualityLabel,
            videoQuality,
            videoResolution,
            framerate);
        continue;
      }
      // Audio-only
      if (!audioCodec.isNullOrWhiteSpace) {
        streams[tag] = AudioOnlyStreamInfo(
            tag, url, container, fileSize, bitrate, audioCodec);
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
    // We can try to extract the manifest from two sources:
    //    get_video_info and the video watch page.
    // In some cases one works, in some cases another does.
    try {
      var context = await _getStreamContextFromVideoInfo(videoId);
      return _getManifest(context);
    } on YoutubeExplodeException {
      var context = await _getStreamContextFromWatchPage(videoId);
      return _getManifest(context);
    }
  }

  /// Gets the HTTP Live Stream (HLS) manifest URL
  /// for the specified video (if it's a live video stream).
  Future<String> getHttpLiveStreamUrl(VideoId videoId) async {
    var videoInfoResponse =
        await VideoInfoResponse.get(_httpClient, videoId.toString());
    var playerResponse = videoInfoResponse.playerResponse;
    if (!playerResponse.isVideoPlayable) {
      throw VideoUnplayableException.unplayable(videoId,
          reason: playerResponse.getVideoPlayabilityError());
    }

    var hlsManifest = playerResponse.hlsManifestUrl;
    if (hlsManifest == null) {
      throw VideoUnplayableException.notLiveStream(videoId);
    }
    return hlsManifest;
  }

  /// Gets the actual stream which is identified by the specified metadata.
  Stream<List<int>> get(StreamInfo streamInfo) =>
      _httpClient.getStream(streamInfo);
}
