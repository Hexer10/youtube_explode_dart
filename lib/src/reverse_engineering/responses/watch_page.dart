import 'package:html/dom.dart';
import 'package:html/parser.dart' as parser;

import '../../../youtube_explode_dart.dart';
import '../../extensions/helpers_extension.dart';
import '../../retry.dart';
import '../../videos/video_id.dart';
import '../youtube_http_client.dart';
import 'generated/player_response_json.g.dart';
import 'generated/watch_page_id.g.dart';
import 'player_response.dart';

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
  String get sourceUrl {
    var url =
        _root.querySelector('*[name="player_ias/base"]').attributes['src'];
    if (url == null) {
      return null;
    }
    return 'https://youtube.com$url';
  }

  ///
  _InitialData get initialData =>
      _initialData ??= _InitialData(WatchPageId.fromRawJson(_extractJson(
          _root
              .querySelectorAll('script')
              .map((e) => e.text)
              .toList()
              .firstWhere((e) => e.contains('window["ytInitialData"] =')),
          'window["ytInitialData"] =')));

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

  static final _playerConfigExp = RegExp(r'ytplayer\.config\s*=\s*(\{.*\})');

  ///
  _PlayerConfig get playerConfig => _playerConfig ??= _PlayerConfig(
      PlayerConfigJson.fromRawJson(_playerConfigExp
          .firstMatch(_root.getElementsByTagName('html').first.text)
          ?.group(1)
          ?.extractJson()));

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

class _PlayerConfig {
  // Json parsed map
  final PlayerConfigJson root;

  _PlayerConfig(this.root);

  String get sourceUrl => 'https://youtube.com${root.assets.js}';

  PlayerResponse get playerResponse =>
      PlayerResponse.parse(root.args.playerResponse);
}

class _InitialData {
  // Json parsed map
  final WatchPageId root;

  _InitialData(this.root);

  /* Cache results */

  String _continuation;
  String _clickTrackingParams;

  NextContinuationData getContinuationContext() {
    if (root.contents != null) {
      return root.contents.twoColumnWatchNextResults.results.results.contents
          .firstWhere((e) => e.itemSectionRenderer != null)
          .itemSectionRenderer
          .continuations
          .first
          .nextContinuationData;
    }
    return null;
  }

  String get continuation =>
      _continuation ??= getContinuationContext()?.continuation ?? '';

  String get clickTrackingParams => _clickTrackingParams ??=
      getContinuationContext()?.clickTrackingParams ?? '';
}
