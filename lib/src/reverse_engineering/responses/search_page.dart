import 'dart:convert';

import 'package:html/dom.dart';
import 'package:html/parser.dart' as parser;

import '../../extensions/helpers_extension.dart';
import '../../playlists/playlist_id.dart';
import '../../retry.dart';
import '../../search/related_query.dart';
import '../../search/search_playlist.dart';
import '../../search/search_video.dart';
import '../../videos/videos.dart';
import '../youtube_http_client.dart';

class SearchPage {
  final String queryString;
  final Document _root;

  _InitialData _initialData;

  _InitialData get initialData =>
      _initialData ??= _InitialData(json.decode(_matchJson(_extractJson(
          _root
              .querySelectorAll('script')
              .map((e) => e.text)
              .toList()
              .firstWhere((e) => e.contains('window["ytInitialData"] =')),
          'window["ytInitialData"] ='))));

  String _xsrfToken;

  static final _xsfrTokenExp = RegExp('"XSRF_TOKEN":"(.+?)"');

  String get xsfrToken => _xsrfToken ??= _xsfrTokenExp
      .firstMatch(_root
          .querySelectorAll('script')
          .firstWhere((e) => _xsfrTokenExp.hasMatch(e.text))
          .text)
      .group(1);

  String _extractJson(String html, String separator) {
    return _matchJson(
        html.substring(html.indexOf(separator) + separator.length));
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

  SearchPage(this._root, this.queryString,
      [_InitialData initalData, String xsfrToken])
      : _initialData = initalData,
        _xsrfToken = xsfrToken;

  Future<SearchPage> nextPage(YoutubeHttpClient httpClient) {
    if (initialData.continuation == '') {
      return null;
    }
    return get(httpClient, queryString,
        ctoken: initialData.continuation,
        itct: initialData.clickTrackingParams,
        xsrfToken: xsfrToken);
  }

  static Future<SearchPage> get(
      YoutubeHttpClient httpClient, String queryString,
      {String ctoken, String itct, String xsrfToken}) {
    var url =
        'https://www.youtube.com/results?search_query=${Uri.encodeQueryComponent(queryString)}';
    if (ctoken != null) {
      assert(itct != null, 'If ctoken is not null itct cannot be null');
      url += '&pbj=1';
      url += '&ctoken=${Uri.encodeQueryComponent(ctoken)}';
      url += '&continuation=${Uri.encodeQueryComponent(ctoken)}';
      url += '&itct=${Uri.encodeQueryComponent(itct)}';
    }
    return retry(() async {
      Map<String, String> body;
      if (xsrfToken != null) {
        body = {'session_token': xsrfToken};
      }
      var raw = await httpClient.postString(url);
      if (ctoken != null) {
        return SearchPage(
            null, queryString, _InitialData(json.decode(raw)[1]), xsrfToken);
      }
      return SearchPage.parse(raw, queryString);
    });
  }

  SearchPage.parse(String raw, this.queryString) : _root = parser.parse(raw);
}

class _InitialData {
  // Json parsed map
  final Map<String, dynamic> _root;

  _InitialData(this._root);

  /* Cache results */

  List<dynamic> _searchContent;
  List<dynamic> _relatedVideos;
  List<RelatedQuery> _relatedQueries;
  String _continuation;
  String _clickTrackingParams;

  List<Map<String, dynamic>> getContentContext(Map<String, dynamic> root) {
    if (root['contents'] != null) {
      return _root['contents']['twoColumnSearchResultsRenderer']
              ['primaryContents']['sectionListRenderer']['contents']
          .first['itemSectionRenderer']['contents']
          .cast<Map<String, dynamic>>();
    }
    if (root['response'] != null) {
      return _root['response']['continuationContents']
              ['itemSectionContinuation']['contents']
          .cast<Map<String, dynamic>>();
    }
    throw Exception('Couldn\'t find the content data');
  }

  Map<String, dynamic> getContinuationContext(Map<String, dynamic> root) {
    if (_root['contents'] != null) {
      return _root['contents']['twoColumnSearchResultsRenderer']
              ['primaryContents']['sectionListRenderer']['contents']
          ?.first['itemSectionRenderer']['continuations']
          ?.first
          ?.getValue('nextContinuationData')
          ?.cast<String, dynamic>();
    }
    if (_root['response'] != null) {
      return _root['response']['continuationContents']
              ['itemSectionContinuation']['continuations']
          ?.first['nextContinuationData']
          ?.cast<String, dynamic>();
    }
    return null;
  }

  // Contains only [SearchVideo] or [SearchPlaylist]
  List<dynamic> get searchContent => _searchContent ??= getContentContext(_root)
      .map(_parseContent)
      .where((e) => e != null)
      .toList();

  List<RelatedQuery> get relatedQueries =>
      (_relatedQueries ??= getContentContext(_root)
          ?.where((e) => e.containsKey('horizontalCardListRenderer'))
          ?.map((e) => e['horizontalCardListRenderer']['cards'])
          ?.firstOrNull
          ?.map((e) => e['searchRefinementCardRenderer'])
          ?.map((e) => RelatedQuery(
              e['searchEndpoint']['searchEndpoint']['query'],
              VideoId(Uri.parse(e['thumbnail']['thumbnails'].first['url'])
                  .pathSegments[1])))
          ?.toList()
          ?.cast<RelatedQuery>()) ??
      const [];

  List<dynamic> get relatedVideos =>
      (_relatedVideos ??= getContentContext(_root)
          ?.where((e) => e.containsKey('shelfRenderer'))
          ?.map((e) =>
              e['shelfRenderer']['content']['verticalListRenderer']['items'])
          ?.firstOrNull
          ?.map(_parseContent)
          ?.toList()) ??
      const [];

  String get continuation => _continuation ??=
      getContinuationContext(_root)?.getValue('continuation') ?? '';

  String get clickTrackingParams => _clickTrackingParams ??=
      getContinuationContext(_root)?.getValue('clickTrackingParams') ?? '';

  int get estimatedResults => int.parse(_root['estimatedResults'] ?? 0);

  dynamic _parseContent(dynamic content) {
    if (content == null) {
      return null;
    }
    if (content.containsKey('videoRenderer')) {
      Map<String, dynamic> renderer = content['videoRenderer'];
      //TODO: Add it's a live
      return SearchVideo(
          VideoId(renderer['videoId']),
          _parseRuns(renderer['title']),
          _parseRuns(renderer['ownerText']),
          _parseRuns(renderer['descriptionSnippet']),
          renderer.get('lengthText')?.getValue('simpleText') ?? '',
          int.parse(renderer['viewCountText']['simpleText']
                  .toString()
                  .stripNonDigits()
                  .nullIfWhitespace ??
              '0'));
    }
    if (content.containsKey('radioRenderer')) {
      var renderer = content['radioRenderer'];

      return SearchPlaylist(
          PlaylistId(renderer['playlistId']),
          renderer['title']['simpleText'],
          int.parse(_parseRuns(renderer['videoCountText'])
                  .stripNonDigits()
                  .nullIfWhitespace ??
              0));
    }
    // Here ignore 'horizontalCardListRenderer' & 'shelfRenderer'
    return null;
  }

  String _parseRuns(Map<dynamic, dynamic> runs) =>
      runs?.getValue('runs')?.map((e) => e['text'])?.join() ?? '';
}

// ['contents']['twoColumnSearchResultsRenderer']['primaryContents']['sectionListRenderer']['contents'].first['itemSectionRenderer']
// ['contents'] -> @See ContentsList
// ['continuations'] -> Data to see more

//ContentsList:
// Key -> 'videoRenderer'
//    videoId --> VideoId
//    title['runs'].loop -> ['text'] -> concatenate --> "Video Title"
//    descriptionSnippet['runs'].loop -> ['text'] -> concatenate --> "Video Description snippet"
//    ownerText['runs'].first -> ['text'] --> "Video Author"
//    lengthText['simpleText'] -> Parse format H:M:S -> "Video Duration"
//    viewCountText['simpleText'] -> Strip non digit -> int.parse --> "Video View Count"
//
// Key -> 'radioRenderer'
//    playlistId -> PlaylistId
//    title['simpleText'] --> "Playlist Title"
//
// Key -> 'horizontalCardListRenderer' // Queries related to this search
//    cards --> List of Maps -> loop -> ['searchRefinementCardRenderer'].first
//      thumbnail -> ['thumbnails'].first -> ['url'] --> "Thumbnail url" -> Find video id from id.
//      searchEndpoint -> ['searchEndpoint'] -> ['query'] -> "Related query string"
//
// Key -> 'shelfRenderer' // Videos related to this search
//  contents -> ['verticalListRenderer']['items'] -> loop -> parseContent
