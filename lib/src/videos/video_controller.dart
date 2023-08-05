import 'package:meta/meta.dart';
import '../../youtube_explode_dart.dart';

import '../reverse_engineering/pages/watch_page.dart';
import '../reverse_engineering/player/player_response.dart';

@internal
class VideoController {
  static const _androidSuiteClient = {
    'context': {
      'client': {
        'clientName': 'ANDROID_TESTSUITE',
        'clientVersion': '1.9',
        'androidSdkVersion': 30,
        'hl': 'en',
        'gl': 'US',
        'utcOffsetMinutes': 0,
      },
    },
  };

  static const _tvClient = {
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

  Future<PlayerResponse> getPlayerResponse(VideoId videoId) async {
    /// From https://github.com/Tyrrrz/YoutubeExplode:
    /// The most optimal client to impersonate is the Android client, because
    /// it doesn't require signature deciphering (for both normal and n-parameter signatures).
    /// However, the regular Android client has a limitation, preventing it from downloading
    /// multiple streams from the same manifest (or the same stream multiple times).
    /// As a workaround, we're using ANDROID_TESTSUITE which appears to offer the same
    /// functionality, but doesn't impose the aforementioned limitation.
    /// https://github.com/Tyrrrz/YoutubeExplode/issues/705
    final content = await httpClient.postString(
      'https://www.youtube.com/youtubei/v1/player?key=AIzaSyA8eiZmM1FaDVjRy-df2KTyQ_vz_yYM39w&prettyPrint=false',
      body: {
        ..._androidSuiteClient,
        'videoId': videoId.value,
      },
      headers: {
        'User-Agent':
            'com.google.android.youtube/17.36.4 (Linux; U; Android 12; GB) gzip',
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
        ..._tvClient,
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
