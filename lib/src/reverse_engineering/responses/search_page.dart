import 'dart:convert';

import 'package:html/dom.dart';
import 'package:html/parser.dart' as parser;

import '../../../youtube_explode_dart.dart';
import '../../extensions/helpers_extension.dart';
import '../../retry.dart';
import '../../search/base_search_content.dart';
import '../../search/related_query.dart';
import '../../search/search_video.dart';
import '../../videos/videos.dart';
import '../youtube_http_client.dart';
import 'generated/search_page_id.g.dart' hide PlaylistId;

///
class SearchPage {
  final _apiKeyExp = RegExp(r'"INNERTUBE_API_KEY":"(\w+?)"');

  ///
  final String queryString;
  final Document _root;

  String _apiKey;

  ///
  String get apiKey => _apiKey ??= _apiKeyExp
      .firstMatch(_root
          .querySelectorAll('script')
          .firstWhere((e) => e.text.contains('INNERTUBE_API_KEY'))
          .text)
      .group(1);

  _InitialData _initialData;

  ///
  _InitialData get initialData {
    if (_initialData != null) {
      return _initialData;
    }

    final scriptText = _root
        .querySelectorAll('script')
        .map((e) => e.text)
        .toList(growable: false);

    var initialDataText = scriptText.firstWhere(
        (e) => e.contains('window["ytInitialData"] ='),
        orElse: () => null);
    if (initialDataText != null) {
      return _initialData = _InitialData(SearchPageId.fromRawJson(
          _extractJson(initialDataText, 'window["ytInitialData"] =')));
    }

    initialDataText = scriptText.firstWhere(
        (e) => e.contains('var ytInitialData = '),
        orElse: () => null);
    if (initialDataText != null) {
      return _initialData = _InitialData(SearchPageId.fromRawJson(
          _extractJson(initialDataText, 'var ytInitialData = ')));
    }

    throw TransientFailureException(
        'Failed to retrieve initial data from the search page, please report this to the project GitHub page.'); // ignore: lines_longer_than_80_chars
  }

  String _extractJson(String html, String separator) {
    if (html == null || separator == null) {
      return null;
    }
    var index = html.indexOf(separator) + separator.length;
    if (index > html.length) {
      return null;
    }
    return _matchJson(html.substring(index));
  }

  String _matchJson(String str) {
    var bracketCount = 0;
    int lastI;
    for (var i = 0; i < str.length; i++) {
      lastI = i;
      if (str[i] == '{') {
        bracketCount++;
      } else if (str[i] == '}') {
        bracketCount--;
      } else if (str[i] == ';') {
        if (bracketCount == 0) {
          return str.substring(0, i);
        }
      }
    }
    return str.substring(0, lastI + 1);
  }

  ///
  SearchPage(this._root, this.queryString,
      [_InitialData initialData, this._apiKey])
      : _initialData = initialData;

  ///
  // TODO: Replace this in favour of async* when quering;
  Future<SearchPage> nextPage(YoutubeHttpClient httpClient) async {
    if (initialData.continuationToken == '' ||
        initialData.estimatedResults == 0) {
      return null;
    }
    return get(httpClient, queryString,
        token: initialData.continuationToken, key: apiKey);
  }

  ///
  static Future<SearchPage> get(
      YoutubeHttpClient httpClient, String queryString,
      {String token, String key}) {
    if (token != null) {
      assert(key != null, 'A key must be supplied along with a token');
      var url = 'https://www.youtube.com/youtubei/v1/search?key=$key';

      return retry(() async {
        var body = {
          'context': const {
            'client': {
              'hl': 'en',
              'clientName': 'WEB',
              'clientVersion': '2.20200911.04.00'
            }
          },
          'continuation': token
        };

        var raw = await httpClient.post(url, body: json.encode(body));
        return SearchPage(null, queryString,
            _InitialData(SearchPageId.fromJson(json.decode(raw.body))), key);
      });
      // Ask for next page,

    }
    var url =
        'https://www.youtube.com/results?search_query=${Uri.encodeQueryComponent(queryString)}';
    return retry(() async {
      var raw = await httpClient.getString(url);
      return SearchPage.parse(raw, queryString);
    });
    // ask for next page
  }

  ///
  SearchPage.parse(String raw, this.queryString) : _root = parser.parse(raw);
}

class _InitialData {
  // Json parsed map
  final SearchPageId root;

  _InitialData(this.root);

  List<PurpleContent> getContentContext() {
    if (root.contents != null) {
      return root.contents.twoColumnSearchResultsRenderer.primaryContents
          .sectionListRenderer.contents.first.itemSectionRenderer.contents;
    }
    if (root.onResponseReceivedCommands != null) {
      final itemSection = root
          .onResponseReceivedCommands
          .first
          .appendContinuationItemsAction
          .continuationItems[0]
          .itemSectionRenderer;
      if (itemSection == null) {
        throw SearchItemSectionException();
      }
      return itemSection.contents;
    }
    return null;
  }

  String _getContinuationToken() {
    if (root.contents != null) {
      var contents = root.contents.twoColumnSearchResultsRenderer
          .primaryContents.sectionListRenderer.contents;

      if (contents.length <= 1) {
        return null;
      }
      return contents[1]
          .continuationItemRenderer
          .continuationEndpoint
          .continuationCommand
          .token;
    }
    if (root.onResponseReceivedCommands != null) {
      return root
              .onResponseReceivedCommands
              .first
              .appendContinuationItemsAction
              .continuationItems[1]
              ?.continuationItemRenderer
              ?.continuationEndpoint
              ?.continuationCommand
              ?.token ??
          ' ';
    }
    return null;
  }

  // Contains only [SearchVideo] or [SearchPlaylist]
  List<BaseSearchContent> get searchContent =>
      getContentContext().map(_parseContent).where((e) => e != null).toList();

  List<RelatedQuery> get relatedQueries =>
      getContentContext()
          ?.where((e) => e.horizontalCardListRenderer != null)
          ?.map((e) => e.horizontalCardListRenderer.cards)
          ?.firstOrNull
          ?.map((e) => e.searchRefinementCardRenderer)
          ?.map((e) => RelatedQuery(
              e.searchEndpoint.searchEndpoint.query,
              VideoId(
                  Uri.parse(e.thumbnail.thumbnails.first.url).pathSegments[1])))
          ?.toList()
          ?.cast<RelatedQuery>() ??
      const [];

  List<dynamic> get relatedVideos =>
      getContentContext()
          ?.where((e) => e.shelfRenderer != null)
          ?.map((e) => e.shelfRenderer.content.verticalListRenderer.items)
          ?.firstOrNull
          ?.map(_parseContent)
          ?.toList() ??
      const [];

  String get continuationToken => _getContinuationToken();

  int get estimatedResults => int.parse(root.estimatedResults ?? 0);

  BaseSearchContent _parseContent(PurpleContent content) {
    if (content == null) {
      return null;
    }
    if (content.videoRenderer != null) {
      var renderer = content.videoRenderer;
      //TODO: Add if it's a live
      return SearchVideo(
          VideoId(renderer.videoId),
          _parseRuns(renderer.title.runs),
          _parseRuns(renderer.ownerText.runs),
          _parseRuns(renderer.descriptionSnippet?.runs),
          renderer.lengthText?.simpleText ?? '',
          int.parse(renderer.viewCountText?.simpleText
                  ?.stripNonDigits()
                  ?.nullIfWhitespace ??
              '0'),
          (renderer.thumbnail.thumbnails ?? <ThumbnailElement>[])
              .map((e) => Thumbnail(Uri.parse(e.url), e.height, e.width))
              .toList());
    }
    if (content.radioRenderer != null) {
      var renderer = content.radioRenderer;

      return SearchPlaylist(
          PlaylistId(renderer.playlistId),
          renderer.title.simpleText,
          int.parse(_parseRuns(renderer.videoCountText.runs)
                  .stripNonDigits()
                  .nullIfWhitespace ??
              0));
    }
    // Here ignore 'horizontalCardListRenderer' & 'shelfRenderer'
    return null;
  }

  String _parseRuns(List<dynamic> runs) =>
      runs?.map((e) => e.text)?.join() ?? '';
}
