import 'package:youtube_explode_dart/src/reverse_engineering/responses/search_page.dart';

import '../common/common.dart';
import '../reverse_engineering/responses/playlist_response.dart';
import '../reverse_engineering/youtube_http_client.dart';
import '../videos/video.dart';
import '../videos/video_id.dart';
import 'base_search_content.dart';
import 'search_query.dart';

/// YouTube search queries.
class SearchClient {
  final YoutubeHttpClient _httpClient;

  /// Initializes an instance of [SearchClient]
  SearchClient(this._httpClient);

  /// Enumerates videos returned by the specified search query.
  /// (from the YouTube Embedded API)
  Stream<Video> getVideos(String searchQuery) async* {
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

  /// Enumerates videos returned by the specified search query
  /// (from the video search page).
  /// Contains only instances of [SearchVideo] or [SearchPlaylist]
  Stream<BaseSearchContent> getVideosFromPage(String searchQuery) async* {
    var page = await SearchPage.get(_httpClient, searchQuery);
    yield* Stream.fromIterable(page.initialData.searchContent);

    // ignore: literal_only_boolean_expressions
    while (true) {
      page = await page.nextPage(_httpClient);
      if (page == null) {
        return;
      }
      yield* Stream.fromIterable(page.initialData.searchContent);
    }
  }

  /// Queries to YouTube to get the results.
  @Deprecated('Use getVideosFromPage instead')
  Future<SearchQuery> queryFromPage(String searchQuery) =>
      SearchQuery.search(_httpClient, searchQuery);
}

/*
    channelId = ChannelId.fromString(channelId);
    var page = await ChannelUploadPage.get(
        _httpClient, channelId.value, videoSorting.code);
    yield* Stream.fromIterable(page.initialData.uploads);

    // ignore: literal_only_boolean_expressions
    while (true) {
      page = await page.nextPage(_httpClient);
      if (page == null) {
        return;
      }
      yield* Stream.fromIterable(page.initialData.uploads);
    }
 */
