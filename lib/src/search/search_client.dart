import '../../youtube_explode_dart.dart';
import '../retry.dart';
import '../reverse_engineering/responses/search_page.dart';
import '../reverse_engineering/youtube_http_client.dart';
import 'base_search_content.dart';
import 'search_query.dart';
import 'search_list.dart';

/// YouTube search queries.
class SearchClient {
  final YoutubeHttpClient _httpClient;

  /// Initializes an instance of [SearchClient]
  SearchClient(this._httpClient);

  /// Enumerates videos returned by the specified search query
  /// (from the video search page).
  /// The videos are sent in batch of 20 videos.
  /// You [SearchList.nextPage] to get the next batch of videos.
  Future<SearchList> getVideos(String searchQuery) {
    var stream =
        getVideosFromPage(searchQuery, onlyVideos: true).cast<SearchVideo>();
    return SearchList.create(stream);
  }

  /// Enumerates videos returned by the specified search query
  /// (from the video search page).
  /// Contains only instances of [SearchVideo] or [SearchPlaylist]
  Stream<BaseSearchContent> getVideosFromPage(String searchQuery,
      {bool onlyVideos = true}) async* {
    var page =
        await retry(() async => SearchPage.get(_httpClient, searchQuery));
    if (onlyVideos) {
      yield* Stream.fromIterable(
          page.initialData.searchContent.whereType<SearchVideo>());
    } else {
      yield* Stream.fromIterable(page.initialData.searchContent);
    }

    // ignore: literal_only_boolean_expressions
    while (true) {
      page = await page.nextPage(_httpClient);
      if (page == null) {
        return;
      }

      if (onlyVideos) {
        yield* Stream.fromIterable(
            page.initialData.searchContent.whereType<SearchVideo>());
      } else {
        yield* Stream.fromIterable(page.initialData.searchContent);
      }
    }
  }

  /// Queries to YouTube to get the results.
  @Deprecated('Use getVideosFromPage instead - '
      'Should be used only to get related videos')
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
