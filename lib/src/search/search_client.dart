import '../common/common.dart';
import '../reverse_engineering/responses/playlist_response.dart';
import '../reverse_engineering/youtube_http_client.dart';
import '../videos/video.dart';
import '../videos/video_id.dart';
import 'search_query.dart';

/// YouTube search queries.
class SearchClient {
  final YoutubeHttpClient _httpClient;

  /// Initializes an instance of [SearchClient]
  SearchClient(this._httpClient);

  /// Enumerates videos returned by the specified search query.
  Stream<Video> getVideosAsync(String searchQuery) async* {
    var encounteredVideoIds = <String>{};

    for (var page = 0; page < double.maxFinite; page++) {
      var response =
          await PlaylistResponse.searchResults(_httpClient, searchQuery);

      var countDelta = 0;
      for (var video in response.videos) {
        var videoId = video.id;

        if (!encounteredVideoIds.add(videoId)) {
          continue;
        }

        yield Video(
            VideoId(videoId),
            video.title,
            video.author,
            video.channelId,
            video.uploadDate,
            video.description,
            video.duration,
            ThumbnailSet(videoId),
            video.keywords,
            Engagement(video.viewCount, video.likes, video.dislikes));
        countDelta++;
      }

      // Videos loop around, so break when we stop seeing new videos
      if (countDelta <= 0) {
        break;
      }
    }
  }

  /// Queries to YouTube to get the results.
  Future<SearchQuery> queryFromPage(String searchQuery) =>
      SearchQuery.search(_httpClient, searchQuery);
}
