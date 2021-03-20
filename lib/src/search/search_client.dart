import 'dart:convert';

import '../../youtube_explode_dart.dart';
import '../extensions/helpers_extension.dart';
import '../retry.dart';
import '../reverse_engineering/responses/search_page.dart';
import '../reverse_engineering/youtube_http_client.dart';
import 'base_search_content.dart';
import 'search_filter.dart';
import 'search_list.dart';
import 'search_query.dart';

/// YouTube search queries.
class SearchClient {
  final YoutubeHttpClient _httpClient;

  /// Initializes an instance of [SearchClient]
  SearchClient(this._httpClient);

  /// Enumerates videos returned by the specified search query
  /// (from the video search page).
  /// The videos are sent in batch of 20 videos.
  /// You [SearchList.nextPage] to get the next batch of videos.
  Future<SearchList> getVideos(String searchQuery, {SearchFilter filter = const SearchFilter('')}) async {
    final page = await SearchPage.get(_httpClient, searchQuery, filter: filter);

    return SearchList(
        page.initialData.searchContent
            .whereType<SearchVideo>()
            .map((e) => Video(e.id, e.title, e.author, null, e.uploadDate?.toDateTime(), e.description, e.duration.toDuration(),
                ThumbnailSet(e.id.value), null, Engagement(e.viewCount, null, null), e.isLive))
            .toList(),
        page,
        _httpClient);
  }

  /// Enumerates videos returned by the specified search query
  /// (from the video search page).
  /// Contains only instances of [SearchVideo] or [SearchPlaylist]
  Stream<BaseSearchContent> getVideosFromPage(String searchQuery,
      {bool onlyVideos = true, SearchFilter filter = const SearchFilter('')}) async* {
    SearchPage? page;
    // ignore: literal_only_boolean_expressions
    for (;;) {
      if (page == null) {
        page = await retry(() async => SearchPage.get(_httpClient, searchQuery, filter: filter));
      } else {
        page = await page.nextPage(_httpClient);
        if (page == null) {
          return;
        }
      }

      if (onlyVideos) {
        yield* Stream.fromIterable(page!.initialData.searchContent.whereType<SearchVideo>());
      } else {
        yield* Stream.fromIterable(page!.initialData.searchContent);
      }
    }
  }

  /// Returns the suggestions youtube provide while search on the page.
  Future<List<String>> getQuerySuggestions(String query) async {
    final request = await _httpClient.get(
        'https://suggestqueries-clients6.youtube.com/complete/search?client=youtube&hl=en&gl=en&q=${Uri.encodeComponent(query)}&callback=func');
    final body = request.body;
    final startIndex = body.indexOf('func(');
    final jsonStr = body.substring(startIndex + 5, body.length - 1);
    final data = json.decode(jsonStr) as List<dynamic>;
    final suggestions = data[1] as List<dynamic>;
    return suggestions.map((e) => e[0]).toList().cast<String>();
  }

  /// Queries to YouTube to get the results.
  @Deprecated('Use getVideosFromPage instead - '
      'Should be used only to get related videos')
  Future<SearchQuery> queryFromPage(String searchQuery) => SearchQuery.search(_httpClient, searchQuery);
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
