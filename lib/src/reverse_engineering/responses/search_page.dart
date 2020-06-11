import 'dart:convert';

import 'package:html/dom.dart';
import 'package:html/parser.dart' as parser;

import '../../playlists/playlists.dart';
import '../../retry.dart';
import '../../search/related_query.dart';
import '../../videos/videos.dart';
import '../youtube_http_client.dart';

class SearchPage {
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

  SearchPage(this._root);

  static Future<SearchPage> get(
      YoutubeHttpClient httpClient, String queryString) {
    final url =
        'https://www.youtube.com/results?search_query=${Uri.encodeQueryComponent(queryString)}';
    return retry(() async {
      var raw = await httpClient.postString(url);
      return SearchPage.parse(raw);
    });
  }

  SearchPage.parse(String raw) : _root = parser.parse(raw);
}

class _InitialData {
  // Json parsed map
  final Map<String, dynamic> _root;

  _InitialData(this._root);

  /* Cache results */

  List<dynamic> _searchContent;
  List<dynamic> _relatedVideos;
  List<RelatedQuery> _relatedQueries;

  // Contains only [VideoId] or [PlaylistId]
  List<dynamic> get searchContent =>
      _searchContent ??= _root['contents']['twoColumnSearchResultsRenderer']
              ['primaryContents']['sectionListRenderer']['contents']
          .first['itemSectionRenderer']['contents']
          .map(_parseContent)
          .where((e) => e != null)
          .toList();

  List<RelatedQuery> get relatedQueries =>
      _relatedQueries ??= _root['contents']['twoColumnSearchResultsRenderer']
              ['primaryContents']['sectionListRenderer']['contents']
          .first['itemSectionRenderer']['contents']
          .where((e) => e.containsKey('horizontalCardListRenderer') as bool)
          .map((e) => e['horizontalCardListRenderer']['cards'])
          .first
          .map((e) => e['searchRefinementCardRenderer'])
          .map((e) => RelatedQuery(
              e['searchEndpoint']['searchEndpoint']['query'],
              VideoId(Uri.parse(e['thumbnail']['thumbnails'].first['url'])
                  .pathSegments[1])))
          .toList()
          .cast<RelatedQuery>();

  List<dynamic> get relatedVideos => _relatedVideos ??= _root['contents']
              ['twoColumnSearchResultsRenderer']['primaryContents']
          ['sectionListRenderer']['contents']
      .first['itemSectionRenderer']['contents']
      .where((e) => e.containsKey('shelfRenderer') as bool)
      .map(
          (e) => e['shelfRenderer']['content']['verticalListRenderer']['items'])
      .first
      .map(_parseContent)
      .toList();

  dynamic _parseContent(dynamic content) {
    // If is a video
    print(content);
    if (content == null) {
      return null;
    }
    if (content.containsKey('videoRenderer')) {
      return VideoId(content['videoRenderer']['videoId']);
    }
    if (content.containsKey('radioRenderer')) {
      return PlaylistId(content['radioRenderer']['playlistId']);
    }
    // Here ignore 'horizontalCardListRenderer' & 'shelfRenderer'
    return null;
  }
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
