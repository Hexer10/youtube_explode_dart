import 'package:meta/meta.dart';
import '../../youtube_explode_dart.dart';

import '../reverse_engineering/pages/watch_page.dart';
import '../reverse_engineering/player/player_response.dart';
import 'youtube_api_client.dart';

@internal
class VideoController {
  @protected
  final YoutubeHttpClient httpClient;

  VideoController(this.httpClient);

  Future<WatchPage> getVideoWatchPage(VideoId videoId) {
    return WatchPage.get(httpClient, videoId.value);
  }

  Future<PlayerResponse> getPlayerResponse(VideoId videoId,
      YoutubeApiClient client) async {
    final payload = client.payload;
    assert(payload['context'] != null, 'client must contain a context');
    assert(payload['context']!['client'] != null,
        'client must contain a context.client');

    final userAgent = payload['context']!['client']!['userAgent'] as String?;

    final content = await httpClient.postString(client.apiUrl,
      body: {
        ...payload,
        'videoId': videoId.value,
      },
      headers: {
        if (userAgent != null) 'User-Agent': userAgent,
        ...client.headers,
      },
    );
    return PlayerResponse.parse(content);
  }
}
