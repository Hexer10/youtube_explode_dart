import '../channels/channel_id.dart';
import '../common/common.dart';
import '../extensions/helpers_extension.dart';
import '../reverse_engineering/pages/playlist_page.dart' as playlist_page;
import '../reverse_engineering/youtube_http_client.dart';
import '../videos/video.dart';
import '../videos/video_id.dart';
import 'playlist.dart';
import 'playlist_id.dart';

/// Queries related to YouTube playlists.
class PlaylistClient {
  final YoutubeHttpClient _httpClient;

  /// Initializes an instance of [PlaylistClient]
  PlaylistClient(this._httpClient);

  /// Gets the metadata associated with the specified playlist.
  Future<Playlist> get(dynamic id) async {
    id = PlaylistId.fromString(id);

    final response = await playlist_page.PlaylistPage.get(
      _httpClient,
      (id as PlaylistId).value,
    );
    return Playlist(
      id,
      response.title ?? '',
      response.author ?? '',
      response.description ?? '',
      ThumbnailSet(id.value),
      Engagement(response.viewCount ?? 0, null, null),
      response.videoCount,
    );
  }

  /// Enumerates videos included in the specified playlist.
  Stream<Video> getVideos(dynamic id) async* {
    id = PlaylistId.fromString(id);
    final encounteredVideoIds = <String>{};
    final playlistId = (id as PlaylistId).value;

    final url =
        'https://www.youtube.com/playlist?list=$playlistId&hl=en&persist_hl=1';
    final html = await _httpClient.getString(url);

    final ytInitialDataExp = RegExp(
      r'var ytInitialData = (\{.*?\});</script>',
      dotAll: true,
    );
    final ytInitialDataMatch = ytInitialDataExp.firstMatch(html);
    playlist_page.PlaylistPage? page;
    if (ytInitialDataMatch != null) {
      page = playlist_page.PlaylistPage.parse(html, playlistId);
    } else {
      final apiKeyExp = RegExp(r'"INNERTUBE_API_KEY":"(.*?)"');
      final clientVersionExp = RegExp(r'"INNERTUBE_CLIENT_VERSION":"(.*?)"');
      final visitorExp = RegExp(r'"VISITOR_DATA":"(.*?)"');
      final browseIdExp = RegExp(r'"browseId":"(VL.*?)"');
      final apiKey = apiKeyExp.firstMatch(html)?.group(1);
      final clientVersion = clientVersionExp.firstMatch(html)?.group(1);
      final visitorData = visitorExp.firstMatch(html)?.group(1) ?? '';
      final browseId = browseIdExp.firstMatch(html)?.group(1);
      if (apiKey == null || clientVersion == null || browseId == null) {
        throw Exception('Could not extract API info');
      }
      final apiUrl = 'https://www.youtube.com/youtubei/v1/browse?key=$apiKey';
      final headers = {
        'Content-Type': 'application/json',
        'x-youtube-client-name': '1',
        'x-goog-visitor-id': visitorData,
      };
      final body = {
        'context': {
          'client': {'clientName': 'WEB', 'clientVersion': clientVersion},
        },
        'browseId': browseId,
      };
      final resp = await _httpClient.postString(
        apiUrl,
        body: body,
        headers: headers,
      );
      page = playlist_page.PlaylistPage.parse(resp, playlistId);
    }
    if (page == null) {
      throw Exception('Could not extract playlist page');
    }

    for (final video in page.videos) {
      final videoId = video.id;
      if (!encounteredVideoIds.add(videoId)) continue;
      if (video.channelId.isEmpty) continue;
      yield Video(
        VideoId(videoId),
        video.title,
        video.author,
        ChannelId(video.channelId),
        video.uploadDateRaw.toDateTime(),
        video.uploadDateRaw,
        null,
        video.description,
        video.duration,
        ThumbnailSet(videoId),
        null,
        Engagement(video.viewCount, null, null),
        false,
      );
    }

    String? continuationToken = page.initialData.continuationToken;
    final apiKeyExp = RegExp(r'"INNERTUBE_API_KEY":"(.*?)"');
    final clientVersionExp = RegExp(r'"INNERTUBE_CLIENT_VERSION":"(.*?)"');
    final visitorExp = RegExp(r'"VISITOR_DATA":"(.*?)"');
    final apiKey = apiKeyExp.firstMatch(html)?.group(1);
    final clientVersion = clientVersionExp.firstMatch(html)?.group(1);
    final visitorData = visitorExp.firstMatch(html)?.group(1) ?? '';
    if (apiKey == null || clientVersion == null) {
      throw Exception('Could not extract API info');
    }
    final apiUrl = 'https://www.youtube.com/youtubei/v1/browse?key=$apiKey';
    final headers = {
      'Content-Type': 'application/json',
      'x-youtube-client-name': '1',
      'x-goog-visitor-id': visitorData,
    };
    int requestCount = 0;
    const maxRequests = 30;
    while (continuationToken != null && requestCount < maxRequests) {
      requestCount++;
      await Future.delayed(const Duration(milliseconds: 500));
      final body = {
        'context': {
          'client': {'clientName': 'WEB', 'clientVersion': clientVersion},
        },
        'continuation': continuationToken,
      };
      final resp = await _httpClient.postString(
        apiUrl,
        body: body,
        headers: headers,
      );
      final nextPage = playlist_page.PlaylistPage.parse(resp, playlistId);
      for (final video in nextPage.videos) {
        final videoId = video.id;
        if (!encounteredVideoIds.add(videoId)) continue;
        if (video.channelId.isEmpty) continue;
        yield Video(
          VideoId(videoId),
          video.title,
          video.author,
          ChannelId(video.channelId),
          video.uploadDateRaw.toDateTime(),
          video.uploadDateRaw,
          null,
          video.description,
          video.duration,
          ThumbnailSet(videoId),
          null,
          Engagement(video.viewCount, null, null),
          false,
        );
      }
      continuationToken = nextPage.initialData.continuationToken;
    }
  }
}
