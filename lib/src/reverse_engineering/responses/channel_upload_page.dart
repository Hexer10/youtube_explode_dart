import 'dart:convert';

import 'package:html/dom.dart';
import 'package:html/parser.dart' as parser;

import '../../channels/channel_video.dart';
import '../../exceptions/exceptions.dart';
import '../../extensions/helpers_extension.dart';
import '../../retry.dart';
import '../../videos/videos.dart';
import '../youtube_http_client.dart';

///
class ChannelUploadPage {
  ///
  final String channelId;
  final Document _root;

  _InitialData _initialData;

  ///
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

  ///
  ChannelUploadPage(this._root, this.channelId, [_InitialData initialData])
      : _initialData = initialData;

  ///
  Future<ChannelUploadPage> nextPage(YoutubeHttpClient httpClient) {
    if (initialData.continuation.isEmpty) {
      return Future.value(null);
    }
    var url =
        'https://www.youtube.com/browse_ajax?ctoken=${initialData.continuation}&continuation=${initialData.continuation}&itct=${initialData.clickTrackingParams}';
    return retry(() async {
      var raw = await httpClient.getString(url);
      return ChannelUploadPage(
          null, channelId, _InitialData(json.decode(raw)[1]));
    });
  }

  ///
  static Future<ChannelUploadPage> get(
      YoutubeHttpClient httpClient, String channelId, String sorting) {
    assert(sorting != null);
    var url =
        'https://www.youtube.com/channel/$channelId/videos?view=0&sort=$sorting&flow=grid';
    return retry(() async {
      var raw = await httpClient.getString(url);
      return ChannelUploadPage.parse(raw, channelId);
    });
  }

  ///
  ChannelUploadPage.parse(String raw, this.channelId)
      : _root = parser.parse(raw);
}

class _InitialData {
  // Json parsed map
  final Map<String, dynamic> _root;

  _InitialData(this._root);

  /* Cache results */

  List<ChannelVideo> _uploads;
  String _continuation;
  String _clickTrackingParams;

  List<Map<String, dynamic>> getContentContext(Map<String, dynamic> root) {
    if (root['contents'] != null) {
      return (_root['contents']['twoColumnBrowseResultsRenderer']['tabs']
              as List<dynamic>)
          .map((e) => e['tabRenderer'])
          .firstWhere((e) => e['selected'] == true)['content']
              ['sectionListRenderer']['contents']
          .first['itemSectionRenderer']['contents']
          .first['gridRenderer']['items']
          .cast<Map<String, dynamic>>();
    }
    if (root['response'] != null) {
      return _root['response']['continuationContents']['gridContinuation']
              ['items']
          .cast<Map<String, dynamic>>();
    }
    throw FatalFailureException('Failed to get initial data context.');
  }

  Map<String, dynamic> getContinuationContext(Map<String, dynamic> root) {
    if (_root['contents'] != null) {
      return (_root['contents']['twoColumnBrowseResultsRenderer']['tabs']
              as List<dynamic>)
          ?.map((e) => e['tabRenderer'])
          ?.firstWhere((e) => e['selected'] == true)['content']
              ['sectionListRenderer']['contents']
          ?.first['itemSectionRenderer']['contents']
          ?.first['gridRenderer']['continuations']
          ?.first['nextContinuationData']
          ?.cast<String, dynamic>();
    }
    if (_root['response'] != null) {
      return _root['response']['continuationContents']['gridContinuation']
              ['continuations']
          ?.first
          ?.cast<String, dynamic>();
    }
    return null;
  }

  List<ChannelVideo> get uploads => _uploads ??= getContentContext(_root)
      ?.map(_parseContent)
      ?.where((e) => e != null)
      ?.toList()
      ?.cast<ChannelVideo>();

  String get continuation => _continuation ??=
      getContinuationContext(_root)?.getValue('continuation') ?? '';

  String get clickTrackingParams => _clickTrackingParams ??=
      getContinuationContext(_root)?.getValue('clickTrackingParams') ?? '';

  dynamic _parseContent(content) {
    if (content == null || content['gridVideoRenderer'] == null) {
      return null;
    }
    var video = content['gridVideoRenderer'] as Map<String, dynamic>;
    return ChannelVideo(
        VideoId(video['videoId']), video['title']['simpleText']);
  }
}
