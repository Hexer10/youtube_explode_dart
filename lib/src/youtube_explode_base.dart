import 'dart:convert';

import 'package:html/dom.dart';
import 'package:html/parser.dart' as html;
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart' show MediaType;

import 'cipher/cipher.dart';
import 'exceptions/exceptions.dart';
import 'extensions/extensions.dart';
import 'models/models.dart';
import 'parser.dart' as parser;

/// YoutubeExplode entry class.
class YoutubeExplode {
  static final _regMatchExp = RegExp(r'youtube\..+?/watch.*?v=(.*?)(?:&|/|$)');
  static final _shortMatchExp = RegExp(r'youtu\.be/(.*?)(?:\?|&|/|$)');
  static final _embedMatchExp = RegExp(r'youtube\..+?/embed/(.*?)(?:\?|&|/|$)');
  static final _playerConfigExp = RegExp(
      r"yt\.setConfig\({'PLAYER_CONFIG':(.*)}\);",
      multiLine: true,
      caseSensitive: false);
  static final _contentLenExp = RegExp(r'clen=(\d+)');

  /// HTTP Client.
  // Visible only for extensions.
  http.Client client;

  /// Initialize [YoutubeExplode] class and http client.
  YoutubeExplode() : client = http.Client();

  /// Returns a [Future] that completes with a [MediaStreamInfoSet]
  /// Use this to extract the muxed, audio and video streams from a video.
  Future<MediaStreamInfoSet> getVideoMediaStream(String videoId) async {
    if (!validateVideoId(videoId)) {
      throw ArgumentError.value(videoId, 'videoId', 'Invalid video id');
    }

    var playerConfiguration = await getPlayerConfiguration(videoId);

    var muxedStreamInfoMap = <int, MuxedStreamInfo>{};
    var audioStreamInfoMap = <int, AudioStreamInfo>{};
    var videoStreamInfoMap = <int, VideoStreamInfo>{};

    var muxedStreamInfoDics =
        playerConfiguration.muxedStreamInfosUrlEncoded?.split(',');
    if (muxedStreamInfoDics != null) {
      // TODO: Implement muxedStreamInfoDics
      throw UnsupportedError(
          'muxedStreamInfoDics not null not implemented yet.');
    }

    if (playerConfiguration.muxedStreamInfoJson != null) {
      for (var streamInfoJson in playerConfiguration.muxedStreamInfoJson) {
        var itag = streamInfoJson['itag'] as int;
        var urlString = streamInfoJson['url'] as String;
        Uri url;

        if (urlString.isNullOrWhiteSpace &&
            !playerConfiguration.playerSourceUrl.isNullOrWhiteSpace) {
          var cipher = streamInfoJson['cipher'] as String;
          url = await decipherUrl(
              playerConfiguration.playerSourceUrl, cipher, client);
        }
        url ??= Uri.parse(urlString);

        var contentLength = await _parseContentLength(
          streamInfoJson['contentLength'],
          url?.toString(),
        );

        // Extract container
        var mimeType = MediaType.parse(streamInfoJson['mimeType'] as String);

        var container = parser.stringToContainer(mimeType.subtype);
        var codecs = mimeType.parameters['codecs'].split(',');

        // Extract audio encoding
        var audioEncoding = parser.audioEncodingFromString(codecs.last);

        // Extract video encoding
        var videoEncoding = parser.videoEncodingFromString(codecs.first);

        // Extract video quality from itag.
        var videoQuality = parser.videoQualityFromITag(itag);

        // Get video quality label
        var videoQualityLabel = parser.videoQualityToLabel(videoQuality);

        // Get video resolution
        var resolution = parser.videoQualityToResolution(videoQuality);

        assert(url != null);
        assert(contentLength != null && contentLength != -1);
        muxedStreamInfoMap[itag] = MuxedStreamInfo(
            itag,
            url,
            container,
            contentLength,
            audioEncoding,
            videoEncoding,
            videoQualityLabel,
            videoQuality,
            resolution);
      }
    }

    var adaptiveStreamInfoDics =
        playerConfiguration.adaptiveStreamInfosUrlEncoded?.split(',');
    if (adaptiveStreamInfoDics != null) {
      // TODO: Implement adaptiveStreamInfoDics
      throw UnsupportedError(
          'adaptiveStreamInfoDics not null not implemented yet.');
    }

    if (playerConfiguration.adaptiveStreamInfosJson != null) {
      for (var streamInfoJson in playerConfiguration.adaptiveStreamInfosJson) {
        var itag = streamInfoJson['itag'] as int;
        var urlString = streamInfoJson['url'] as String;
        var bitrate = streamInfoJson['bitrate'] as int;
        Uri url;

        if (urlString.isNullOrWhiteSpace &&
            !playerConfiguration.playerSourceUrl.isNullOrWhiteSpace) {
          var cipher = streamInfoJson['cipher'] as String;
          url = await decipherUrl(
              playerConfiguration.playerSourceUrl, cipher, client);
        }
        url ??= Uri.parse(urlString);

        var contentLength = await _parseContentLength(
          streamInfoJson['contentLength'],
          url?.toString(),
        );

        // Extract container
        var mimeType = MediaType.parse(streamInfoJson['mimeType'] as String);

        var container = parser.stringToContainer(mimeType.subtype);
        var codecs = mimeType.parameters['codecs'].toLowerCase();

        // Audio only
        if (streamInfoJson['audioSampleRate'] != null) {
          var audioEncoding = parser.audioEncodingFromString(codecs);
          audioStreamInfoMap[itag] = AudioStreamInfo(
              itag, url, container, contentLength, bitrate, audioEncoding);
        } else {
          // Video only
          var videoEncoding = codecs == 'unknown'
              ? VideoEncoding.av1
              : parser.videoEncodingFromString(codecs);

          var videoQualityLabel = streamInfoJson['qualityLabel'] as String;
          var videoQuality = parser.videoQualityFromLabel(videoQualityLabel);

          var width = streamInfoJson['width'] as int;
          var height = streamInfoJson['height'] as int;
          var resolution = VideoResolution(width, height);

          var framerate = streamInfoJson['fps'];

          videoStreamInfoMap[itag] = VideoStreamInfo(
              itag,
              url,
              container,
              contentLength,
              bitrate,
              videoEncoding,
              videoQualityLabel,
              videoQuality,
              resolution,
              framerate);
        }
      }
    }

    var sortedMuxed = muxedStreamInfoMap.values.toList()
      ..sort((a, b) => a.videoQuality.index.compareTo(b.videoQuality.index));
    var sortedAudio = audioStreamInfoMap.values.toList()
      ..sort((a, b) => a.bitrate.compareTo(b.bitrate));
    var sortedVideo = videoStreamInfoMap.values.toList()
      ..sort((a, b) => a.videoQuality.index.compareTo(b.videoQuality.index));
    return MediaStreamInfoSet(
        sortedMuxed,
        sortedAudio,
        sortedVideo,
        playerConfiguration.hlsManifestUrl,
        playerConfiguration.video,
        playerConfiguration.validUntil);
  }

  /// Returns the player configuration for a given video.
  Future<PlayerConfiguration> getPlayerConfiguration(String videoId) async {
    var playerConfiguration = await _getPlayerConfigEmbed(videoId);

    // If still null try from the watch page.
    playerConfiguration ??= await _getPlayerConfigWatchPage(videoId);

    assert(playerConfiguration != null);
    return playerConfiguration;
  }

  Future<PlayerConfiguration> _getPlayerConfigEmbed(String videoId) async {
    var body = (await client.get(
            'https://www.youtube.com/embed/$videoId?disable_polymer=true&hl=en'))
        .body;
    var document = html.parse(body);
    var playerConfigRaw = document
        .getElementsByTagName('script')
        .map((e) => e.innerHtml)
        .map((e) => _playerConfigExp?.firstMatch(e)?.group(1))
        .firstWhere((s) => s?.trim()?.isNotEmpty ?? false);
    var playerConfigJson = json.decode(playerConfigRaw);

    // Extract player source URL.
    var playerSourceUrl =
        'https://youtube.com${playerConfigJson['assets']['js']}';

    // Get video info dictionary.
    var videoInfoDic = await getVideoInfoDictionary(videoId);

    var playerResponseJson = json.decode(videoInfoDic['player_response']);
    var playAbility = playerResponseJson['playabilityStatus'];

    if (playAbility['status'].toString().toLowerCase() == 'error') {
      throw VideoUnavailableException(videoId);
    }

    var errorReason = playAbility['reason'] as String;

    // Valid configuration
    if (errorReason.isNullOrWhiteSpace) {
      var videoInfo = playerResponseJson['videoDetails'];
      var video = Video(
          videoId,
          videoInfo['author'],
          null,
          videoInfo['title'],
          videoInfo['shortDescription'],
          ThumbnailSet(videoId),
          Duration(seconds: int.parse(videoInfo['lengthSeconds'])),
          videoInfo['keywords']?.cast<String>() ?? const <String>[],
          Statistics(int.parse(videoInfo['viewCount']), 0, 0));

      // Extract if it is a live stream.
      var isLiveStream = playerResponseJson['videoDetails']['isLive'] == true;

      var streamingData = playerResponseJson['streamingData'];
      var validUntil = DateTime.now()
          .add(Duration(seconds: int.parse(streamingData['expiresInSeconds'])));
      var hlsManifestUrl =
          isLiveStream ? streamingData['hlsManifestUrl'] : null;
      var dashManifestUrl =
          isLiveStream ? null : streamingData['dashManifestUrl'];
      var muxedStreamInfosUrlEncoded =
          isLiveStream ? null : videoInfoDic['url_encoded_fmt_stream_map'];
      var adaptiveStreamInfosUrlEncoded =
          isLiveStream ? null : videoInfoDic['adaptive_fmts'];
      var muxedStreamInfosJson = isLiveStream ? null : streamingData['formats'];
      var adaptiveStreamInfosJson =
          isLiveStream ? null : streamingData['adaptiveFormats'];

      return PlayerConfiguration(
          playerSourceUrl,
          dashManifestUrl,
          hlsManifestUrl,
          muxedStreamInfosUrlEncoded,
          adaptiveStreamInfosUrlEncoded,
          muxedStreamInfosJson,
          adaptiveStreamInfosJson,
          video,
          validUntil);
    }

    var previewVideoId = playAbility['errorScreen']
        ['playerLegacyDesktopYpcTrailerRenderer']['trailerVideoId'] as String;
    if (!previewVideoId.isNullOrWhiteSpace) {
      throw VideoRequiresPurchaseException(videoId, previewVideoId);
    }

    // If the video requires purchase - throw (approach two)
    var previewVideoInfoRaw = playAbility['errorScreen']['ypcTrailerRenderer']
        ['playerVars'] as String;

    if (!previewVideoInfoRaw.isNullOrWhiteSpace) {
      var previewVideoInfoDic = Uri.splitQueryString(previewVideoInfoRaw);
      var previewVideoId = previewVideoInfoDic['video_id'];

      throw VideoRequiresPurchaseException(videoId, previewVideoId);
    }
    return null;
  }

  Future<PlayerConfiguration> _getPlayerConfigWatchPage(String videoId) async {
    var videoWatchPageHtml = await _getVideoWatchPageHtml(videoId);
    var playerConfigScript = videoWatchPageHtml
        .querySelectorAll('script')
        .map((e) => e.text)
        .firstWhere((e) => e.contains('ytplayer.config ='));
    if (playerConfigScript == null) {
      var errorReason =
          videoWatchPageHtml.querySelector('#unavailable-message').text.trim();
      throw VideoUnplayableException(videoId, errorReason);
    }

    // Workaround: Couldn't get RegExp to work. TODO: Find working regexp
    var startIndex = playerConfigScript.indexOf('ytplayer.config =');
    var endIndex = playerConfigScript.indexOf(';ytplayer.load =');

    var playerConfigRaw =
        playerConfigScript.substring(startIndex + 17, endIndex);
    var playerConfigJson = json.decode(playerConfigRaw);

    var playerResponseJson =
        json.decode(playerConfigJson['args']['player_response']);
    var playerSourceUrl =
        'https://youtube.com${playerConfigJson['assets']['js']}';

    var videoInfo = playerResponseJson['videoDetails'];
    var video = Video(
        videoId,
        videoInfo['author'],
        null,
        videoInfo['title'],
        videoInfo['shortDescription'],
        ThumbnailSet(videoId),
        Duration(seconds: int.parse(videoInfo['lengthSeconds'])),
        videoInfo['keywords']?.cast<String>() ?? const <String>[],
        Statistics(int.parse(videoInfo['viewCount']), 0, 0));

    var isLiveStream = playerResponseJson['videoDetails']['isLive'] == true;

    var streamingData = playerResponseJson['streamingData'];
    var validUntil = DateTime.now()
        .add(Duration(seconds: int.parse(streamingData['expiresInSeconds'])));
    var hlsManifestUrl = isLiveStream ? streamingData['hlsManifestUrl'] : null;
    var dashManifestUrl =
        isLiveStream ? null : streamingData['dashManifestUrl'];
    var muxedStreamInfosUrlEncoded = isLiveStream
        ? null
        : playerConfigJson['args']['url_encoded_fmt_stream_map'];
    var adaptiveStreamInfosUrlEncoded =
        isLiveStream ? null : playerConfigJson['args']['adaptive_fmts'];
    var muxedStreamInfosJson = isLiveStream ? null : streamingData['formats'];
    var adaptiveStreamInfosJson =
        isLiveStream ? null : streamingData['adaptiveFormats'];

    return PlayerConfiguration(
        playerSourceUrl,
        dashManifestUrl,
        hlsManifestUrl,
        muxedStreamInfosUrlEncoded,
        adaptiveStreamInfosUrlEncoded,
        muxedStreamInfosJson,
        adaptiveStreamInfosJson,
        video,
        validUntil);
  }

  /// Returns the video info dictionary for a given video.
  Future<Map<String, String>> getVideoInfoDictionary(String videoId) async {
    var eurl = Uri.encodeComponent('https://youtube.googleapis.com/v/$videoId');
    var url = 'https://youtube.com/get_video_info?video_id=$videoId'
        '&el=embedded&eurl=$eurl&hl=en';
    var raw = (await client.get(url)).body;
    return Uri.splitQueryString(raw);
  }

  /// Return a [Video] instance.
  /// Use this to extract general info about a video.
  Future<Video> getVideo(String id) async {
    var videoId = parseVideoId(id);
    if (videoId == null) {
      throw ArgumentError.value(id, 'videoId', 'Invalid video id');
    }

    var videoInfoDic = await getVideoInfoDictionary(videoId);
    var playerResponseJson = json.decode(videoInfoDic['player_response']);
    var status = playerResponseJson['playabilityStatus']['status']
        ?.toLowerCase() as String;

    if (status.isNullOrWhiteSpace || status == 'error') {
      throw VideoUnavailableException(videoId);
    }

    var details = playerResponseJson['videoDetails'];

    var title = details['title'];
    var author = details['author'];
    var description = details['shortDescription'];
    var duration = Duration(seconds: int.parse(details['lengthSeconds']));
    var keyWords = details['keywords']?.cast<String>() ?? const <String>[];
    var viewCount = int.tryParse(details['viewCount'] ?? '0') ?? 0;

    var videoPageHtml = await _getVideoWatchPageHtml(videoId);
    var uploadDate = DateTime.parse(videoPageHtml
        .querySelector('meta[itemprop="datePublished"]')
        .attributes['content']);
    var rawLikeCount = videoPageHtml
            .querySelector('.like-button-renderer-like-button')
            ?.text ??
        '0';
    var likeCount = rawLikeCount.isNullOrWhiteSpace
        ? 0
        : int.parse(rawLikeCount.stripNonDigits);

    var rawDislikeCount = videoPageHtml
            .querySelector('.like-button-renderer-dislike-button')
            ?.text ??
        '0';
    var dislikeCount = rawDislikeCount.isNullOrWhiteSpace
        ? 0
        : int.parse(rawLikeCount.stripNonDigits);

    var statistics = Statistics(viewCount, likeCount, dislikeCount);
    var thumbnails = ThumbnailSet(videoId);

    return Video(videoId, author, uploadDate, title, description, thumbnails,
        duration, keyWords, statistics);
  }

  Future<int> _parseContentLength(
      String contentLengthString, String url) async {
    var contentLength = int.tryParse(contentLengthString ?? '') ?? -1;

    if (contentLength <= 0 && !url.isNullOrWhiteSpace) {
      contentLength = _contentLenExp?.firstMatch(url)?.group(1) ?? -1;
    }

    if (contentLength <= 0 && !url.isNullOrWhiteSpace) {
      contentLength = await _requestContentLength(url);
    }

    return contentLength;
  }

  Future<int> _requestContentLength(String url) async {
    var resp;
    try {
      resp = await client.head(url);
    } on Exception {
      return -1;
    }
    if (!resp.headers.containsKey('content-length')) {
      return -1;
    }
    String contentLengthString = resp.headers['content-length'];
    return int.tryParse(contentLengthString ?? '') ?? -1;
  }

  Future<Document> _getVideoWatchPageHtml(String videoId) async {
    var url =
        'https://youtube.com/watch?v=$videoId&disable_polymer=true&bpctr=9999999999&hl=en';
    var raw = (await client.get(url)).body;

    return html.parse(raw);
  }

  /// Returns true if the given [videoId] is valid.
  static bool validateVideoId(String videoId) {
    if (videoId.isNullOrWhiteSpace) {
      return false;
    }

    if (videoId.length != 11) {
      return false;
    }

    return !RegExp(r'[^0-9a-zA-Z_\-]').hasMatch(videoId);
  }

  /// Parses a video id from url or if given a valid id as url returns itself.
  /// Returns null if the id couldn't be extracted.
  static String parseVideoId(String url) {
    if (url.isNullOrWhiteSpace) {
      return null;
    }

    if (validateVideoId(url)) {
      return url;
    }

    // https://www.youtube.com/watch?v=yIVRs6YSbOM
    var regMatch = _regMatchExp.firstMatch(url)?.group(1);
    if (!regMatch.isNullOrWhiteSpace && validateVideoId(regMatch)) {
      return regMatch;
    }

    // https://youtu.be/yIVRs6YSbOM
    var shortMatch = _shortMatchExp.firstMatch(url)?.group(1);
    if (!shortMatch.isNullOrWhiteSpace && validateVideoId(shortMatch)) {
      return shortMatch;
    }

    // https://www.youtube.com/embed/yIVRs6YSbOM
    var embedMatch = _embedMatchExp.firstMatch(url)?.group(1);
    if (!embedMatch.isNullOrWhiteSpace && validateVideoId(embedMatch)) {
      return embedMatch;
    }
    return null;
  }

  /// Closes the youtube explode's http client.
  void close() {
    client.close();
  }

  /* Export the extension static members. */

  /// Parses a playlist [url] returning its id.
  /// If the [url] is a valid it is returned itself.
  static String parsePlaylistId(String url) =>
      PlaylistExtension.parsePlaylistId(url);

  /// Returns true if [username] is a valid Youtube username.
  static bool validateUsername(String username) =>
      ChannelExtension.validateUsername(username);

  /// Parses a username from an url.
  /// Returns null if the username is not found.
  static String parseUsername(String url) =>
      ChannelExtension.parseUsername(url);

  /// Returns true if [channelId] is a valid Youtube channel id.
  static bool validateChannelId(String channelId) =>
      ChannelExtension.validateChannelId(channelId);

  /// Parses a channel id from an url.
  /// Returns null if the username is not found.
  static String parseChannelId(String url) =>
      ChannelExtension.parseChannelId(url);
}
