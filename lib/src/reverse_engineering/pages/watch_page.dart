import 'package:collection/collection.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart' as parser;

import '../../../youtube_explode_dart.dart';
import '../../extensions/helpers_extension.dart';
import '../../retry.dart';
import '../models/initial_data.dart';
import '../models/youtube_page.dart';
import '../player/player_response.dart';
import 'player_config_base.dart';

///
class WatchPage extends YoutubePage<_InitialData> {
  static final RegExp _videoLikeExp =
      RegExp(r'"label"\s*:\s*"([\d,\.]+) likes"');
  static final RegExp _videoDislikeExp =
      RegExp(r'"label"\s*:\s*"([\d,\.]+) dislikes"');
  static final RegExp _visitorInfoLiveExp =
      RegExp('VISITOR_INFO1_LIVE=([^;]+)');
  static final RegExp _yscExp = RegExp('YSC=([^;]+)');

  @override
  // Overridden to be non-nullable.
  // ignore: overridden_fields
  final Document root;

  ///
  final String visitorInfoLive;

  ///
  final String ysc;

  ///
  String? get sourceUrl {
    final url = root
        .querySelectorAll('script')
        .map((e) => e.attributes['src'])
        .whereNotNull()
        .firstWhereOrNull((e) => e.contains('player_ias') && e.endsWith('.js'));
    if (url == null) {
      return null;
    }
    return 'https://youtube.com$url';
  }

  ///
  bool get isOk => root.body?.querySelector('#player') != null;

  ///
  bool get isVideoAvailable =>
      root.querySelector('meta[property="og:url"]') != null;

  ///
  int get videoLikeCount =>
      initialData.likesCount ??
      int.parse(
        _videoLikeExp
                .firstMatch(root.outerHtml)
                ?.group(1)
                ?.stripNonDigits()
                .nullIfWhitespace ??
            root
                .querySelector('.like-button-renderer-like-button')
                ?.text
                .stripNonDigits()
                .nullIfWhitespace ??
            '0',
      );

  ///
  int get videoDislikeCount =>
      initialData.disLikesCount ??
      int.parse(
        _videoDislikeExp
                .firstMatch(root.outerHtml)
                ?.group(1)
                ?.stripNonDigits()
                .nullIfWhitespace ??
            root
                .querySelector('.like-button-renderer-dislike-button')
                ?.text
                .stripNonDigits()
                .nullIfWhitespace ??
            '0',
      );

  String? get commentsContinuation => initialData.commentsContinuation;

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

  PlayerResponse? getPlayerResponse() {
    final scriptText = root
        .querySelectorAll('script')
        .map((e) => e.text)
        .toList(growable: false);
    return scriptText.extractGenericData(
      ['var ytInitialPlayerResponse = '],
      (root) => PlayerResponse(root),
      () => TransientFailureException(
        'Failed to retrieve initial player response, please report this to the project GitHub page.',
      ),
    );
  }

  ///
  WatchPage.parse(String raw, this.visitorInfoLive, this.ysc)
      : root = parser.parse(raw),
        super(parser.parse(raw), (root) => _InitialData(root));

  ///
  static Future<WatchPage> get(YoutubeHttpClient httpClient, String videoId) {
    final url = 'https://youtube.com/watch?v=$videoId&bpctr=9999999999&hl=en';
    return retry(httpClient, () async {
      final req = await httpClient.get(url, validate: true);

      final cookies = req.headers['set-cookie']!;
      final visitorInfoLive = _visitorInfoLiveExp.firstMatch(cookies)?.group(1);
      final ysc = _yscExp.firstMatch(cookies)!.group(1)!;
      final result = WatchPage.parse(req.body, visitorInfoLive ?? '', ysc);

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
class WatchPlayerConfig implements PlayerConfigBase {
  @override
  final JsonMap root;

  ///
  WatchPlayerConfig(this.root);

  @override
  late final String sourceUrl =
      'https://youtube.com${root.get('assets')!.getT<String>('js')}';

  ///
  late final PlayerResponse playerResponse =
      PlayerResponse.parse(root.get('args')!.getT<String>('playerResponse')!);
}

class _InitialData extends InitialData {
  _InitialData(JsonMap root) : super(root);

  late final int? likesCount = _getLikes();
  late final int? disLikesCount = _getDislikes();

  int? _getLikes() {
    if (root['contents'] != null) {
      final likes = root
          .get('contents')
          ?.get('twoColumnWatchNextResults')
          ?.get('results')
          ?.get('results')
          ?.getList('contents')
          ?.firstWhereOrNull((e) => e['videoPrimaryInfoRenderer'] != null)
          ?.get('videoPrimaryInfoRenderer')
          ?.get('videoActions')
          ?.get('menuRenderer')
          ?.getList('topLevelButtons')
          ?.firstWhereOrNull((e) => e['toggleButtonRenderer'] != null)
          ?.get('toggleButtonRenderer')
          ?.get('defaultText')
          ?.get('accessibility')
          ?.get('accessibilityData')
          ?.getT<String>('label');

      return likes.parseInt();
    }
    return null;
  }

  int? _getDislikes() {
    if (root['contents'] != null) {
      final likes = root
          .get('contents')
          ?.get('twoColumnWatchNextResults')
          ?.get('results')
          ?.get('results')
          ?.getList('contents')
          ?.firstWhereOrNull((e) => e['videoPrimaryInfoRenderer'] != null)
          ?.get('videoPrimaryInfoRenderer')
          ?.get('videoActions')
          ?.get('menuRenderer')
          ?.getList('topLevelButtons')
          ?.where((e) => e['toggleButtonRenderer'] != null)
          .elementAtSafe(1)
          ?.get('toggleButtonRenderer')
          ?.get('defaultText')
          ?.get('accessibility')
          ?.get('accessibilityData')
          ?.getT<String>('label');

      return likes.parseInt();
    }
    return null;
  }

  JsonMap? getContinuationContext() {
    if (root['contents'] != null) {
      return root
          .get('contents')
          ?.get('twoColumnWatchNextResults')
          ?.get('results')
          ?.get('results')
          ?.getList('contents')
          ?.firstWhereOrNull((e) => e['itemSectionRenderer'] != null)
          ?.get('itemSectionRenderer')
          ?.getList('contents')
          ?.firstOrNull
          ?.get('continuationItemRenderer')
          ?.get('continuationEndpoint')
          ?.get('continuationCommand');
    }
    return null;
  }

  late final String commentsContinuation =
      getContinuationContext()?.getT<String>('token') ?? '';
}
