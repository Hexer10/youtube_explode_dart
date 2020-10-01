import 'dart:convert';

import 'package:html/dom.dart';
import 'package:html/parser.dart' as parser;
import 'package:http_parser/http_parser.dart';

import '../../../youtube_explode_dart.dart';
import '../../extensions/helpers_extension.dart';
import '../../retry.dart';
import '../../videos/video_id.dart';
import '../youtube_http_client.dart';
import 'player_response.dart';
import 'stream_info_provider.dart';

///
class WatchPage {
  static final RegExp _videoLikeExp =
      RegExp(r'"label"\s*:\s*"([\d,\.]+) likes"');
  static final RegExp _videoDislikeExp =
      RegExp(r'"label"\s*:\s*"([\d,\.]+) dislikes"');
  static final RegExp _visitorInfoLiveExp =
      RegExp('VISITOR_INFO1_LIVE=([^;]+)');
  static final RegExp _yscExp = RegExp('YSC=([^;]+)');
  static final _xsfrTokenExp = RegExp(r'"XSRF_TOKEN"\s*:\s*"(.+?)"');

  final Document _root;

  ///
  final String visitorInfoLive;

  ///
  final String ysc;

  _InitialData _initialData;
  String _xsfrToken;
  _PlayerConfig _playerConfig;

  ///
  _InitialData get initialData =>
      _initialData ??= _InitialData(json.decode(_matchJson(_extractJson(
          _root
              .querySelectorAll('script')
              .map((e) => e.text)
              .toList()
              .firstWhere((e) => e.contains('window["ytInitialData"] =')),
          'window["ytInitialData"] ='))));

  ///
  String get xsfrToken => _xsfrToken ??= _xsfrTokenExp
      .firstMatch(_root
          .querySelectorAll('script')
          .firstWhere((e) => _xsfrTokenExp.hasMatch(e.text))
          .text)
      .group(1);

  ///
  bool get isOk => _root.body.querySelector('#player') != null;

  ///
  bool get isVideoAvailable =>
      _root.querySelector('meta[property="og:url"]') != null;

  ///
  int get videoLikeCount => int.parse(_videoLikeExp
          .firstMatch(_root.outerHtml)
          ?.group(1)
          ?.stripNonDigits()
          ?.nullIfWhitespace ??
      _root
          .querySelector('.like-button-renderer-like-button')
          ?.text
          ?.stripNonDigits()
          ?.nullIfWhitespace ??
      '0');

  ///
  int get videoDislikeCount => int.parse(_videoDislikeExp
          .firstMatch(_root.outerHtml)
          ?.group(1)
          ?.stripNonDigits()
          ?.nullIfWhitespace ??
      _root
          .querySelector('.like-button-renderer-dislike-button')
          ?.text
          ?.stripNonDigits()
          ?.nullIfWhitespace ??
      '0');

  static final _playerConfigExp = RegExp(r'ytplayer\.config\s*=\s*(\{.*\}\});');

  ///
  _PlayerConfig get playerConfig =>
      _playerConfig ??= _PlayerConfig(json.decode(_playerConfigExp
          .firstMatch(_root.getElementsByTagName('html').first.text)
          ?.group(1)));

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
  WatchPage(this._root, this.visitorInfoLive, this.ysc);

  ///
  WatchPage.parse(String raw, this.visitorInfoLive, this.ysc)
      : _root = parser.parse(raw);

  ///
  static Future<WatchPage> get(YoutubeHttpClient httpClient, String videoId) {
    final url = 'https://youtube.com/watch?v=$videoId&bpctr=9999999999&hl=en';
    return retry(() async {
      var req = await httpClient.get(url, validate: true);

      var cookies = req.headers['set-cookie'];
      var visitorInfoLive = _visitorInfoLiveExp.firstMatch(cookies).group(1);
      var ysc = _yscExp.firstMatch(cookies).group(1);
      var result = WatchPage.parse(req.body, visitorInfoLive, ysc);

      if (!result.isOk) {
        throw TransientFailureException('Video watch page is broken.');
      }

      if (!result.isVideoAvailable) {
        throw VideoUnavailableException.unavailable(VideoId(videoId));
      }
      return result;
    });
  }
}

class _StreamInfo extends StreamInfoProvider {
  final Map<String, String> _root;

  _StreamInfo(this._root);

  @override
  int get bitrate => int.parse(_root['bitrate']);

  @override
  int get tag => int.parse(_root['itag']);

  @override
  String get url => _root['url'];

  @override
  String get signature => _root['s'];

  @override
  String get signatureParameter => _root['sp'];

  @override
  int get contentLength => int.tryParse(_root['clen'] ??
      StreamInfoProvider.contentLenExp
          .firstMatch(url)
          .group(1)
          .nullIfWhitespace ??
      '');

  MediaType get mimeType => MediaType.parse(_root['mimeType']);

  @override
  String get container => mimeType.subtype;

  bool get isAudioOnly => mimeType.type == 'audio';

  @override
  String get audioCodec => codecs.last;

  @override
  String get videoCodec => isAudioOnly ? null : codecs.first;

  List<String> get codecs =>
      mimeType.parameters['codecs'].split(',').map((e) => e.trim());

  @override
  String get videoQualityLabel => _root['quality_label'];

  List<int> get _size =>
      _root['size'].split(',').map((e) => int.tryParse(e ?? ''));

  @override
  int get videoWidth => _size.first;

  @override
  int get videoHeight => _size.last;

  @override
  int get framerate => int.tryParse(_root['fps'] ?? '');
}

class _PlayerConfig {
  // Json parsed map
  final Map<String, dynamic> _root;

  _PlayerConfig(this._root);

  String get sourceUrl => 'https://youtube.com${_root['assets']['js']}';

  PlayerResponse get playerResponse =>
      PlayerResponse.parse(_root['args']['player_response']);

  List<_StreamInfo> get muxedStreams =>
      _root
          .get('args')
          ?.getValue('url_encoded_fmt_stream_map')
          ?.split(',')
          ?.map((e) => _StreamInfo(Uri.splitQueryString(e))) ??
      const [];

  List<_StreamInfo> get adaptiveStreams =>
      _root
          .get('args')
          ?.getValue('adaptive_fmts')
          ?.split(',')
          ?.map((e) => _StreamInfo(Uri.splitQueryString(e))) ??
      const [];

  List<_StreamInfo> get streams => [...muxedStreams, ...adaptiveStreams];
}

class _InitialData {
  // Json parsed map
  final Map<String, dynamic> root;

  _InitialData(this.root);

  /* Cache results */

  String _continuation;
  String _clickTrackingParams;

  Map<String, dynamic> getContinuationContext(Map<String, dynamic> root) {
    if (root['contents'] != null) {
      return (root['contents']['twoColumnWatchNextResults']['results']
              ['results']['contents'] as List<dynamic>)
          ?.firstWhere((e) => e.containsKey('itemSectionRenderer'))[
              'itemSectionRenderer']['continuations']
          ?.first['nextContinuationData']
          ?.cast<String, dynamic>();
    }
    if (root['response'] != null) {
      return root['response']['itemSectionContinuation']['continuations']
          ?.first['nextContinuationData']
          ?.cast<String, dynamic>();
    }
    return null;
  }

  String get continuation => _continuation ??=
      getContinuationContext(root)?.getValue('continuation') ?? '';

  String get clickTrackingParams => _clickTrackingParams ??=
      getContinuationContext(root)?.getValue('clickTrackingParams') ?? '';
}
