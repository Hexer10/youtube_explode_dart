import 'package:collection/collection.dart';
import 'package:html/parser.dart' as parser;

import '../../../youtube_explode_dart.dart';
import '../../extensions/helpers_extension.dart';
import '../../retry.dart';
import '../models/initial_data.dart';
import '../models/youtube_page.dart';

///
class SearchPage extends YoutubePage<_InitialData> {
  ///
  final String queryString;

  late final List<BaseSearchContent> searchContent = initialData.searchContent;

  late final List<dynamic> relatedVideos = initialData.relatedVideos;

  late final int estimatedResults = initialData.estimatedResults;

  /// InitialData
  SearchPage.id(this.queryString, _InitialData initialData)
      : super(null, null, initialData);

  Future<SearchPage?> nextPage(YoutubeHttpClient httpClient) async {
    if (initialData.continuationToken?.isEmpty == null ||
        initialData.estimatedResults == 0) {
      return null;
    }

    final data =
        await httpClient.sendPost('search', initialData.continuationToken!);
    return SearchPage.id(queryString, _InitialData(data));
  }

  ///
  static Future<SearchPage> get(
    YoutubeHttpClient httpClient,
    String queryString, {
    SearchFilter filter = const SearchFilter(''),
  }) {
    final url =
        'https://www.youtube.com/results?search_query=${Uri.encodeQueryComponent(queryString)}&sp=${filter.value}';
    return retry(httpClient, () async {
      final raw = await httpClient.getString(url);
      return SearchPage.parse(raw, queryString);
    });
    // ask for next page
  }

  ///
  SearchPage.parse(String raw, this.queryString)
      : super(parser.parse(raw), (root) => _InitialData(root));
}

class _InitialData extends InitialData {
  _InitialData(JsonMap root) : super(root);

  List<JsonMap>? getContentContext() {
    if (root['contents'] != null) {
      return root
          .get('contents')
          ?.get('twoColumnSearchResultsRenderer')
          ?.get('primaryContents')
          ?.get('sectionListRenderer')
          ?.getList('contents')
          ?.firstOrNull
          ?.get('itemSectionRenderer')
          ?.getList('contents');
    }
    if (root['onResponseReceivedCommands'] != null) {
      return root
          .getList('onResponseReceivedCommands')
          ?.firstOrNull
          ?.get('appendContinuationItemsAction')
          ?.getList('continuationItems')
          ?.firstOrNull
          ?.get('itemSectionRenderer')
          ?.getList('contents');
    }
    return null;
  }

  String? _getContinuationToken() {
    if (root['contents'] != null) {
      final contents = root
          .get('contents')
          ?.get('twoColumnSearchResultsRenderer')
          ?.get('primaryContents')
          ?.get('sectionListRenderer')
          ?.getList('contents');

      if (contents == null || contents.length <= 1) {
        return null;
      }
      return contents
          .elementAtSafe(1)
          ?.get('continuationItemRenderer')
          ?.get('continuationEndpoint')
          ?.get('continuationCommand')
          ?.getT<String>('token');
    }
    if (root['onResponseReceivedCommands'] != null) {
      return root
          .getList('onResponseReceivedCommands')
          ?.firstOrNull
          ?.get('appendContinuationItemsAction')
          ?.getList('continuationItems')
          ?.elementAtSafe(1)
          ?.get('continuationItemRenderer')
          ?.get('continuationEndpoint')
          ?.get('continuationCommand')
          ?.getT<String>('token');
    }
    return null;
  }

  // Contains only [SearchVideo] or [SearchPlaylist]
  late final List<BaseSearchContent> searchContent =
      getContentContext()?.map(_parseContent).whereNotNull().toList() ??
          const [];

  List<dynamic> get relatedVideos =>
      getContentContext()
          ?.where((e) => e['shelfRenderer'] != null)
          .map(
            (e) => e
                .get('shelfRenderer')
                ?.get('content')
                ?.get('verticalListRenderer')
                ?.getList('items'),
          )
          .firstOrNull
          ?.map(_parseContent)
          .whereNotNull()
          .toList() ??
      const [];

  late final String? continuationToken = _getContinuationToken();

  late final int estimatedResults =
      int.parse(root.getT<String>('estimatedResults') ?? '0');

  BaseSearchContent? _parseContent(JsonMap? content) {
    if (content == null) {
      return null;
    }
    if (content['videoRenderer'] != null) {
      final renderer = content.get('videoRenderer')!;

      //       root.get('ownerText')?.getT<List<dynamic>>('runs')?.parseRuns() ??
      return SearchVideo(
        VideoId(renderer.getT<String>('videoId')!),
        renderer
            .get('title')!
            .getT<List<dynamic>>('runs')!
            .cast<Map<dynamic, dynamic>>()
            .parseRuns(),
        renderer
            .get('ownerText')!
            .getT<List<dynamic>>('runs')!
            .cast<Map<dynamic, dynamic>>()
            .parseRuns(),
        renderer
                .getList('detailedMetadataSnippets')
                ?.firstOrNull
                ?.get('snippetText')
                ?.getT<List<dynamic>>('runs')
                ?.cast<Map<dynamic, dynamic>>()
                .parseRuns() ??
            '',
        renderer.get('lengthText')?.getT<String>('simpleText') ?? '',
        int.parse(
          renderer
                  .get('viewCountText')
                  ?.getT<String>('simpleText')
                  ?.stripNonDigits()
                  .nullIfWhitespace ??
              renderer
                  .get('viewCountText')
                  ?.getList('runs')
                  ?.firstOrNull
                  ?.getT<String>('text')
                  ?.stripNonDigits()
                  .nullIfWhitespace ??
              '0',
        ),
        (renderer.get('thumbnail')?.getList('thumbnails') ?? const [])
            .map(
              (e) => Thumbnail(Uri.parse(e['url']), e['height'], e['width']),
            )
            .toList(),
        renderer.get('publishedTimeText')?.getT<String>('simpleText'),
        renderer
                .get('viewCountText')
                ?.getList('runs')
                ?.elementAtSafe(1)
                ?.getT<String>('text')
                ?.trim() ==
            'watching',
        renderer
            .get('ownerText')!
            .getList('runs')!
            .first
            .get('navigationEndpoint')!
            .get('browseEndpoint')!
            .getT<String>('browseId')!,
      );
    }
    if (content['radioRenderer'] != null ||
        content['playlistRenderer'] != null) {
      final renderer =
          (content.get('radioRenderer') ?? content.get('playlistRenderer'))!;

      return SearchPlaylist(
        PlaylistId(renderer.getT<String>('playlistId')!),
        renderer.get('title')!.getT<String>('simpleText')!,
        renderer
                .get('videoCountText')
                ?.getT<List<dynamic>>('runs')
                ?.cast<Map<dynamic, dynamic>>()
                .parseRuns()
                .parseInt() ??
            0,
        (renderer.getList('thumbnails')?[0].getList('thumbnails') ?? const [])
            .map((e) => Thumbnail(Uri.parse(e['url']), e['height'], e['width']))
            .toList(),
      );
    }
    if (content['channelRenderer'] != null) {
      final renderer = content.get('channelRenderer')!;

      return SearchChannel(
        ChannelId(renderer.getT<String>('channelId')!),
        renderer.get('title')!.getT<String>('simpleText')!,
        renderer.get('descriptionSnippet')?.getList('runs')?.parseRuns() ?? '',
        renderer
                .get('videoCountText')
                ?.getList('runs')
                ?.first
                .getT<String>('text')
                ?.parseInt() ??
            -1,
      );
    }
    // Here ignore 'horizontalCardListRenderer' & 'shelfRenderer'
    return null;
  }
}
