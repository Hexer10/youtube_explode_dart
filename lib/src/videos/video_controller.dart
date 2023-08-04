import 'package:meta/meta.dart';
import 'package:youtube_explode_dart/src/reverse_engineering/clients/youtube_player_client.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

import '../reverse_engineering/pages/watch_page.dart';

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
      }
    }
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
    final content = await _httpClient.postString(
        'https://www.youtube.com/youtubei/v1/player?key=AIzaSyA8eiZmM1FaDVjRy-df2KTyQ_vz_yYM39w&prettyPrint=false',
        body: {
          ..._androidSuiteClient,
          'videoId': videoId.value
        },
        headers: {
          'User-Agent':
              'com.google.android.youtube/17.36.4 (Linux; U; Android 12; GB) gzip'
        });
    return PlayerResponse.parse(content);
  }

  Future<PlayerResponse> getPlayerResponseWithSignature(
      VideoId videoId, String? signatureTimestamp) async {
    final content = await _httpClient.postString(
        'https://www.youtube.com/youtubei/v1/player?key=AIzaSyA8eiZmM1FaDVjRy-df2KTyQ_vz_yYM39w&prettyPrint=false',
        body: {
          ..._tvClient,
          'videoId': videoId.value,
          'playbackContext': {
            'contentPlaybackContext': {
              'signatureTimestamp': signatureTimestamp ?? '19369',
            }
          }
        });
    return PlayerResponse.parse(content);
  }
}
