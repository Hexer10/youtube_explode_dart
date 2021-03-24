import 'dart:async';

import 'package:collection/collection.dart';
import 'package:youtube_explode_dart/src/reverse_engineering/responses/search_page.dart';

import '../../youtube_explode_dart.dart';
import '../extensions/helpers_extension.dart';

/// This list contains search videos.
class SearchList extends DelegatingList<Video> {
  final SearchPage _page;
  final YoutubeHttpClient _httpClient;

  ///
  SearchList(List<Video> base, this._page, this._httpClient) : super(base);

  ///
  Future<SearchList?> nextPage() async {
    final page = await _page.nextPage(_httpClient);
    if (page == null) {
      return null;
    }
    return SearchList(
        page.initialData.searchContent
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
