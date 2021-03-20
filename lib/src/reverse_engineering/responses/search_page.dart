import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart' as parser;
import 'package:youtube_explode_dart/src/search/search_channel.dart';

import '../../../youtube_explode_dart.dart';
import '../../extensions/helpers_extension.dart';
import '../../retry.dart';
import '../../search/base_search_content.dart';
import '../../search/related_query.dart';
import '../../search/search_filter.dart';
import '../../search/search_video.dart';
import '../../videos/videos.dart';
import '../youtube_http_client.dart';

///
class SearchPage {
  ///
  final String queryString;
  final Document? root;

  late final _InitialData initialData = getInitialData();
  _InitialData? _initialData;

  ///
  _InitialData getInitialData() {
    if (_initialData != null) {
      return _initialData!;
    }

    final scriptText = root!.querySelectorAll('script').map((e) => e.text).toList(growable: false);
    return scriptText.extractGenericData(
        (obj) => _InitialData(obj),
        () => TransientFailureException(
            'Failed to retrieve initial data from the search page, please report this to the project GitHub page.'));
  }

  ///
  SearchPage(this.root, this.queryString, [_InitialData? initialData]) : _initialData = initialData;

  Future<SearchPage?> nextPage(YoutubeHttpClient httpClient) async {
    if (initialData.continuationToken == '' || initialData.estimatedResults == 0) {
      return null;
    }
    return get(httpClient, queryString, token: initialData.continuationToken);
  }

  ///
  static Future<SearchPage> get(YoutubeHttpClient httpClient, String queryString,
      {String? token, SearchFilter filter = const SearchFilter('')}) {
    if (token != null) {
      var url = 'https://www.youtube.com/youtubei/v1/search?key=AIzaSyAO_FJ2SlqU8Q4STEHLGCilw_Y9_11qcW8';

      return retry(() async {
        var body = {
          'context': const {
            'client': {'hl': 'en', 'clientName': 'WEB', 'clientVersion': '2.20200911.04.00'}
          },
          'continuation': token
        };

        var raw = await httpClient.post(Uri.parse(url), body: json.encode(body));
        return SearchPage(null, queryString, _InitialData(json.decode(raw.body)));
      });
      // Ask for next page,

    }
    var url = 'https://www.youtube.com/results?search_query=${Uri.encodeQueryComponent(queryString)}&sp=${filter.value}';
    return retry(() async {
      var raw = await httpClient.getString(url);
      return SearchPage.parse(raw, queryString);
    });
    // ask for next page
  }

  ///
  SearchPage.parse(String raw, this.queryString) : root = parser.parse(raw);
}

class _InitialData {
  // Json parsed map
  final Map<String, dynamic> root;

  _InitialData(this.root);

  List<Map<String, dynamic>>? getContentContext() {
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
      var contents = root
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
  late final List<BaseSearchContent> searchContent = getContentContext()?.map(_parseContent).whereNotNull().toList() ?? const [];

  List<RelatedQuery> get relatedQueries =>
      getContentContext()
          ?.where((e) => e['horizontalCardListRenderer'] != null)
          .map((e) => e.get('horizontalCardListRenderer')?.getList('cards'))
          .firstOrNull
          ?.map((e) => e['searchRefinementCardRenderer'])
          .map((e) =>
              RelatedQuery(e.searchEndpoint.searchEndpoint.query, VideoId(Uri.parse(e.thumbnail.thumbnails.first.url).pathSegments[1])))
          .toList()
          .cast<RelatedQuery>() ??
      const [];

  List<dynamic> get relatedVideos =>
      getContentContext()
          ?.where((e) => e['shelfRenderer'] != null)
          .map((e) => e.get('shelfRenderer')?.get('content')?.get('verticalListRenderer')?.getList('items'))
          .firstOrNull
          ?.map(_parseContent)
          .whereNotNull()
          .toList() ??
      const [];

  late final String? continuationToken = _getContinuationToken();

  late final int estimatedResults = int.parse(root.getT<String>('estimatedResults') ?? '0');

  BaseSearchContent? _parseContent(Map<String, dynamic>? content) {
    if (content == null) {
      return null;
    }
    if (content['videoRenderer'] != null) {
      var renderer = content.get('videoRenderer')!;

      return SearchVideo(
          VideoId(renderer.getT<String>('videoId')!),
          _parseRuns(renderer.get('title')?.getList('runs')),
          _parseRuns(renderer.get('ownerText')?.getList('runs')),
          _parseRuns(renderer.get('descriptionSnippet')?.getList('runs')),
          renderer.get('lengthText')?.getT<String>('simpleText') ?? '',
          int.parse(renderer.get('viewCountText')?.getT<String>('simpleText')?.stripNonDigits().nullIfWhitespace ??
              renderer.get('viewCountText')?.getList('runs')?.firstOrNull?.getT<String>('text')?.stripNonDigits().nullIfWhitespace ??
              '0'),
          (renderer.get('thumbnail')?.getList('thumbnails') ?? const [])
              .map((e) => Thumbnail(Uri.parse(e['url']), e['height'], e['width']))
              .toList(),
          renderer.get('publishedTimeText')?.getT<String>('simpleText'),
          renderer.get('viewCountText')?.getList('runs')?.elementAtSafe(1)?.getT<String>('text')?.trim() == 'watching');
    }
    if (content['radioRenderer'] != null) {
      var renderer = content.get('radioRenderer')!;

      return SearchPlaylist(PlaylistId(renderer.getT<String>('playlistId')!), renderer.get('title')!.getT<String>('simpleText')!,
          int.parse(_parseRuns(renderer.get('videoCountText')?.getList('runs')).stripNonDigits().nullIfWhitespace ?? '0'));
    }
    if (content['channelRenderer'] != null) {
      var renderer = content.get('channelRenderer')!;
      return SearchChannel(
          ChannelId(renderer.getT<String>('channelId')!),
          renderer.get('title')!.getT<String>('simpleText')!,
          renderer.get('descriptionSnippet')?.getList('runs')?.parseRuns() ?? '',
          renderer.get('videoCountText')!.getList('runs')!.first.getT<String>('text')!.parseInt()!);
    }
    // Here ignore 'horizontalCardListRenderer' & 'shelfRenderer'
    return null;
  }

  String _parseRuns(List<dynamic>? runs) => runs?.map((e) => e['text']).join() ?? '';
}
