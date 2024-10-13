import 'package:meta/meta.dart';

import '../../youtube_explode_dart.dart';
import '../reverse_engineering/pages/watch_page.dart';
import '../reverse_engineering/player/player_response.dart';

@internal
class VideoController {
  @protected
  final YoutubeHttpClient httpClient;

  VideoController(this.httpClient);

  Future<PlayerResponse> getPlayerResponse(
      VideoId videoId, YoutubeApiClient client,
      {WatchPage? watchPage}) async {
    final payload = client.payload;
    assert(payload['context'] != null, 'client must contain a context');
    assert(payload['context']!['client'] != null,
        'client must contain a context.client');

    final userAgent = payload['context']!['client']!['userAgent'] as String?;
    final ytCfg = watchPage?.ytCfg;

    final content = await httpClient.postString(
      client.apiUrl,
      body: {
        ...payload,
        'videoId': videoId.value,
        if (ytCfg?.containsKey('STS') ?? false)
          'playbackContext': {
            'contentPlaybackContext': {
              'html5Preference': 'HTML5_PREF_WANTS',
              'signatureTimestamp': ytCfg!['STS'].toString()
            }
          },
      },
      headers: {
        if (userAgent != null) 'User-Agent': userAgent,
        'X-Youtube-Client-Name': payload['context']!['client']!['clientName'],
        'X-Youtube-Client-Version':
            payload['context']!['client']!['clientVersion'],
        if (ytCfg != null)
          'X-Goog-Visitor-Id': ytCfg['INNERTUBE_CONTEXT']['client']
              ['visitorData'],
        'Origin': 'https://www.youtube.com',
        'Sec-Fetch-Mode': 'navigate',
        'Content-Type': 'application/json',
        if (watchPage != null) 'Cookie': watchPage.cookieString,
        ...client.headers,
      },
    );
    return PlayerResponse.parse(content);
  }
}
