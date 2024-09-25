import 'package:meta/meta.dart';
import '../../youtube_explode_dart.dart';

import '../reverse_engineering/pages/watch_page.dart';
import '../reverse_engineering/player/player_response.dart';

@internal
class VideoController {
  /// Used to fetch streams without signature deciphering, but has limited streams.
  static const androidTestSuiteClient = {
    'context': {
      'client': {
        'clientName': 'ANDROID_CREATOR',
        'clientVersion': '24.24.100',
        'androidSdkVersion': 30,
        // 'userAgent':
        // 'com.google.android.youtube/17.36.4 (Linux; U; Android 12; GB) gzip',
        'hl': 'en',
        'gl': 'US',
        'utcOffsetMinutes': 0,
      },
    },
  };

  /// Used to to fetch all the video streams (but has signature deciphering).
  static const androidClient = {
    'context': {
      'client': {
        'clientName': 'ANDROID',
        'clientVersion': '19.09.37',
        'androidSdkVersion': 30,
        'userAgent':
            'com.google.android.youtube/19.09.37 (Linux; U; Android 11) gzip',
        'hl': 'en',
        'timeZone': 'UTC',
        'utcOffsetMinutes': 0,
      },
    },
  };

  /// Used to fetch streams for age-restricted videos without authentication.
  static const tvClient = {
    'context': {
      'client': {
        'clientName': 'TVHTML5_SIMPLY_EMBEDDED_PLAYER',
        'clientVersion': '2.0',
        'hl': 'en',
        'gl': 'US',
        'utcOffsetMinutes': 0,
      },
      'thirdParty': {
        'embedUrl': 'https://www.youtube.com',
      },
    },
  };

  @protected
  final YoutubeHttpClient httpClient;

  VideoController(this.httpClient);

  Future<WatchPage> getVideoWatchPage(VideoId videoId) {
    return WatchPage.get(httpClient, videoId.value);
  }

  Future<PlayerResponse> getPlayerResponse(VideoId videoId,
      Map<String, Map<String, Map<String, Object>>> client) async {
    assert(client['context'] != null, 'client must contain a context');
    assert(client['context']!['client'] != null,
        'client must contain a context.client');

    final userAgent = client['context']!['client']!['userAgent'] as String?;
    // From https://github.com/Tyrrrz/YoutubeExplode:
    // The most optimal client to impersonate is the Android client, because
    // it doesn't require signature deciphering (for both normal and n-parameter signatures).
    // However, the regular Android client has a limitation, preventing it from downloading
    // multiple streams from the same manifest (or the same stream multiple times).
    // As a workaround, we're using ANDROID_TESTSUITE which appears to offer the same
    // functionality, but doesn't impose the aforementioned limitation.
    // https://github.com/Tyrrrz/YoutubeExplode/issues/705
    final content = await httpClient.postString(
      'https://www.youtube.com/youtubei/v1/player?key=AIzaSyA8eiZmM1FaDVjRy-df2KTyQ_vz_yYM39w&prettyPrint=false',
      body: {
        ...client,
        'videoId': videoId.value,
      },
      headers: {
        if (userAgent != null) 'User-Agent': userAgent,
      },
    );
    return PlayerResponse.parse(content);
  }

  Future<PlayerResponse> getPlayerResponseWithSignature(
    VideoId videoId,
    String? signatureTimestamp,
  ) async {
    /// The only client that can handle age-restricted videos without authentication is the
    ///  TVHTML5_SIMPLY_EMBEDDED_PLAYER client.
    ///  This client does require signature deciphering, so we only use it as a fallback.
    final content = await httpClient.postString(
      'https://www.youtube.com/youtubei/v1/player?key=AIzaSyA8eiZmM1FaDVjRy-df2KTyQ_vz_yYM39w&prettyPrint=false',
      body: {
        ...tvClient,
        'videoId': videoId.value,
        'playbackContext': {
          'contentPlaybackContext': {
            'signatureTimestamp': signatureTimestamp ?? '19369',
          },
        },
      },
    );
    return PlayerResponse.parse(content);
  }
}
