import '../reverse_engineering/responses/search_page.dart';
import '../reverse_engineering/youtube_http_client.dart';
import 'related_query.dart';

///
class SearchQuery {
  final YoutubeHttpClient _httpClient;

  /// Search query
  final String searchQuery;

  final SearchPage _page;

  /// Initializes a SearchQuery
  SearchQuery(this._httpClient, this.searchQuery, this._page);

  /// Search a video.
  static Future<SearchQuery> search(
      YoutubeHttpClient httpClient, String searchQuery) async {
    var page = await SearchPage.get(httpClient, searchQuery);
    return SearchQuery(httpClient, searchQuery, page);
  }

  /// Get the data of the next page.
  /// Returns null if there is no next page.
  Future<SearchQuery> nextPage() async {
    var page = await _page.nextPage(_httpClient);
    if (page == null) {
      return null;
    }
    return SearchQuery(_httpClient, searchQuery, page);
  }

  /// Content of this search.
  /// Contains either [SearchVideo] or [SearchPlaylist]
  List<dynamic> get content => _page.initialData.searchContent;

  /// Videos related to this search.
  /// Contains either [SearchVideo] or [SearchPlaylist]
  List<dynamic> get relatedVideos => _page.initialData.relatedVideos;

  /// Returns the queries related to this search.
  List<RelatedQuery> get relatedQueries => _page.initialData.relatedQueries;

  /// Returns the estimated search result count.
  int get estimatedResults => _page.initialData.estimatedResults;
}
