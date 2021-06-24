import 'package:collection/collection.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart' as parser;

import '../../../youtube_explode_dart.dart';
import '../../extensions/helpers_extension.dart';
import '../../retry.dart';
import '../../videos/video_id.dart';
import '../youtube_http_client.dart';
import 'player_config_base.dart';
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
  static final RegExp _playerResponseExp =
      RegExp(r'var\s+ytInitialPlayerResponse\s*=\s*(\{.*\})');

  static final _xsfrTokenExp = RegExp(r'"XSRF_TOKEN"\s*:\s*"(.+?)"');

  final Document root;

  ///
  final String visitorInfoLive;

  ///
  final String ysc;

  _InitialData? _initialData;

  ///
  String? get sourceUrl {
    var url = root
        .querySelectorAll('script')
        .map((e) => e.attributes['src'])
        .whereNotNull()
        .firstWhereOrNull((e) => e.contains('player_ias') && e.endsWith('.js'));
    if (url == null) {
      return null;
    }
    return 'https://youtube.com$url';
  }

  late final _InitialData initialData = getInitialData();

  ///
  _InitialData getInitialData() {
    if (_initialData != null) {
      return _initialData!;
    }

    final scriptText = root
        .querySelectorAll('script')
        .map((e) => e.text)
        .toList(growable: false);
    return scriptText.extractGenericData(
        (obj) => _InitialData(obj),
        () => TransientFailureException(
            'Failed to retrieve initial data from the watch page, please report this to the project GitHub page.'));
  }

  late final String xsfrToken = getXsfrToken()!.replaceAll(r'\u003d', '=');

  ///
  String? getXsfrToken() {
    return _xsfrTokenExp
        .firstMatch(root
            .querySelectorAll('script')
            .firstWhere((e) => _xsfrTokenExp.hasMatch(e.text))
            .text)
        ?.group(1);
  }

  ///
  bool get isOk => root.body?.querySelector('#player') != null;

  ///
  bool get isVideoAvailable =>
      root.querySelector('meta[property="og:url"]') != null;

  ///
  int get videoLikeCount => int.parse(_videoLikeExp
          .firstMatch(root.outerHtml)
          ?.group(1)
          ?.stripNonDigits()
          .nullIfWhitespace ??
      root
          .querySelector('.like-button-renderer-like-button')
          ?.text
          .stripNonDigits()
          .nullIfWhitespace ??
      '0');

  ///
  int get videoDislikeCount => int.parse(_videoDislikeExp
          .firstMatch(root.outerHtml)
          ?.group(1)
          ?.stripNonDigits()
          .nullIfWhitespace ??
      root
          .querySelector('.like-button-renderer-dislike-button')
          ?.text
          .stripNonDigits()
          .nullIfWhitespace ??
      '0');

  static final _playerConfigExp = RegExp(r'ytplayer\.config\s*=\s*(\{.*\})');

  late final WatchPlayerConfig? playerConfig = getPlayerConfig();

  late final PlayerResponse? playerResponse = getPlayerResponse();

  ///
  WatchPlayerConfig? getPlayerConfig() {
    final jsonMap = _playerConfigExp
        .firstMatch(root.getElementsByTagName('html').first.text)
        ?.group(1)
        ?.extractJson();
    if (jsonMap == null) {
      return null;
    }
    return WatchPlayerConfig(jsonMap);
  }

  ///
  PlayerResponse? getPlayerResponse() {
    final val = root
        .querySelectorAll('script')
        .map((e) => e.text)
        .map((e) => _playerResponseExp.firstMatch(e)?.group(1))
        .firstWhereOrNull((e) => !e.isNullOrWhiteSpace)
        ?.extractJson();
    if (val == null) {
      return null;
    }
    return PlayerResponse(val);
  }

  ///
  WatchPage(this.root, this.visitorInfoLive, this.ysc);

  ///
  WatchPage.parse(String raw, this.visitorInfoLive, this.ysc)
      : root = parser.parse(raw);

  ///
  static Future<WatchPage> get(YoutubeHttpClient httpClient, String videoId) {
    final url = 'https://youtube.com/watch?v=$videoId&bpctr=9999999999&hl=en';
    return retry(() async {
      var req = await httpClient.get(url, validate: true);

      var cookies = req.headers['set-cookie']!;
      var visitorInfoLive = _visitorInfoLiveExp.firstMatch(cookies)?.group(1);
      var ysc = _yscExp.firstMatch(cookies)!.group(1)!;
      var result = WatchPage.parse(req.body, visitorInfoLive ?? '', ysc);

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

/// Used internally
class WatchPlayerConfig implements PlayerConfigBase<Map<String, dynamic>> {
  @override
  final Map<String, dynamic> root;

  ///
  WatchPlayerConfig(this.root);

  @override
  late final String sourceUrl =
      'https://youtube.com${root.get('assets')!.getT<String>('js')}';

  ///
  late final PlayerResponse playerResponse =
      PlayerResponse.parse(root.get('args')!.getT<String>('playerResponse')!);
}

class _InitialData {
  // Json parsed map
  final Map<String, dynamic> root;

  _InitialData(this.root);

  Map<String, dynamic>? getContinuationContext() {
    if (root['contents'] != null) {
      return root
          .get('contents')
          ?.get('twoColumnWatchNextResults')
          ?.get('results')
          ?.get('results')
          ?.getList('contents')
          ?.firstWhere((e) => e['itemSectionRenderer'] != null)
          .get('itemSectionRenderer')
          ?.getList('continuations')
          ?.firstOrNull
          ?.get('nextContinuationData');
    }
    return null;
  }

  late final String continuation =
      getContinuationContext()?.getT<String>('continuation') ?? '';

  late final String clickTrackingParams =
      getContinuationContext()?.getT<String>('clickTrackingParams') ?? '';
}
