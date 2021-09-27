import 'package:collection/collection.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart' as parser;

import '../../extensions/helpers_extension.dart';
import '../../retry.dart';
import '../youtube_http_client.dart';
import 'player_config_base.dart';

///
class EmbedPage {
  static final _playerConfigExp =
      RegExp('[\'""]PLAYER_CONFIG[\'""]\\s*:\\s*(\\{.*\\})');
  static final _playerConfigExp2 = RegExp(r'yt.setConfig\((\{.*\})');
  static final _playerConfigExp3 = RegExp(r'ytcfg.set\((\{.*\})');

  final Document root;
  late final EmbedPlayerConfig? playerConfig = getPlayerConfig();

  ///
  String? get sourceUrl {
    final url = root
        .querySelectorAll('script')
        .map((e) => e.attributes['src'])
        .whereNotNull()
        .firstWhereOrNull((e) => e.contains('player_ias') && e.endsWith('.js'));

    // _root.querySelector('*[name="player_ias/base"]').attributes['src'];
    if (url == null) {
      return null;
    }
    return 'https://youtube.com$url';
  }

  ///
  EmbedPlayerConfig? getPlayerConfig() {
    var playerConfigJson =
        (_playerConfigJson3 ?? _playerConfigJson2 ?? _playerConfigJson)
            ?.extractJson();
    if (playerConfigJson == null) {
      return null;
    }
    return EmbedPlayerConfig(playerConfigJson);
  }

  String? get _playerConfigJson => root
      .getElementsByTagName('script')
      .map((e) => e.text)
      .map((e) => _playerConfigExp.firstMatch(e)?.group(1))
      .firstWhereOrNull((e) => !e.isNullOrWhiteSpace);

  String? get _playerConfigJson2 => root
      .getElementsByTagName('script')
      .map((e) => e.text)
      .map((e) => _playerConfigExp2.firstMatch(e)?.group(1))
      .firstWhereOrNull((e) => !e.isNullOrWhiteSpace);

  String? get _playerConfigJson3 => root
      .getElementsByTagName('script')
      .map((e) => e.text)
      .map((e) => _playerConfigExp3.firstMatch(e)?.group(1))
      .firstWhereOrNull((e) => !e.isNullOrWhiteSpace);

  ///
  EmbedPage(this.root);

  ///
  EmbedPage.parse(String raw) : root = parser.parse(raw);

  ///
  static Future<EmbedPage> get(YoutubeHttpClient httpClient, String videoId) {
    var url = 'https://youtube.com/embed/$videoId?hl=en';
    // final url = 'http://localhost:8080/embed/$videoId?hl=en';
    return retry(httpClient, () async {
      var raw = await httpClient.getString(url);
      return EmbedPage.parse(raw);
    });
  }
}

/// Used internally
class EmbedPlayerConfig implements PlayerConfigBase {
  @override
  final JsonMap root;

  ///
  EmbedPlayerConfig(this.root);

  @override
  String get sourceUrl => 'https://youtube.com${root['assets']['js']}';
}
