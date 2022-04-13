import 'dart:async';

import 'package:collection/collection.dart';

import '../../youtube_explode_dart.dart';
import '../extensions/helpers_extension.dart';
import '../reverse_engineering/pages/search_page.dart';
import 'base_search_content.dart';

/// This list contains search videos.
///This behaves like a [List] but has the [SearchList.nextPage] to get the next batch of videos.
class SearchList<T extends BaseSearchContent> extends DelegatingList<T> {
  final SearchPage _page;
  final YoutubeHttpClient _httpClient;

  /// Construct an instance of [SearchList]
  /// See [SearchList]
  SearchList(List<T> base, this._page, this._httpClient) : super(base);

  /// Fetches the next batch of videos or returns null if there are no more
  /// results.
  Future<SearchList?> nextPage() async {
    final page = await _page.nextPage(_httpClient);
    if (page == null) {
      return null;
    }

    return SearchList<T>(page.searchContent as List<T>, page, _httpClient);
  }
}

class VideoSearchList extends DelegatingList<Video> {
  final SearchPage _page;
  final YoutubeHttpClient _httpClient;

  /// Construct an instance of [SearchList]
  /// See [SearchList]
  VideoSearchList(List<Video> base, this._page, this._httpClient) : super(base);

  /// Fetches the next batch of videos or returns null if there are no more
  /// results.
  Future<VideoSearchList?> nextPage() async {
    final page = await _page.nextPage(_httpClient);
    if (page == null) {
      return null;
    }

    return VideoSearchList(
        page.searchContent
            .whereType<SearchVideo>()
            .map((e) => Video(
                e.id,
                e.title,
                e.author,
                ChannelId(e.channelId),
                e.uploadDate.toDateTime(),
                null,
                e.description,
                e.duration.toDuration(),
                ThumbnailSet(e.id.value),
                null,
                Engagement(e.viewCount, null, null),
                e.isLive))
            .toList(),
        page,
        _httpClient);
  }
}
