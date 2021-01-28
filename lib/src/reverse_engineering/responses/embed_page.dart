import 'dart:convert';

import 'package:html/dom.dart';
import 'package:html/parser.dart' as parser;
import 'package:youtube_explode_dart/src/reverse_engineering/responses/player_config_base.dart';

import '../../extensions/helpers_extension.dart';
import '../../retry.dart';
import '../youtube_http_client.dart';

///
class EmbedPage {
  static final _playerConfigExp =
      RegExp('[\'""]PLAYER_CONFIG[\'""]\\s*:\\s*(\\{.*\\})');
  static final _playerConfigExp2 = RegExp(r'yt.setConfig\((\{.*\})');

  final Document _root;
  EmbedPlayerConfig _playerConfig;

  ///
  String get sourceUrl {
    var url = _root
        .querySelectorAll('*[name="player_ias/base"]')
        .map((e) => e.attributes['src'])
        .where((e) => !e.isNullOrWhiteSpace)
        .firstWhere((e) => e.contains('player_ias') && e.endsWith('.js'),
            orElse: () => null);
    // _root.querySelector('*[name="player_ias/base"]').attributes['src'];
    if (url == null) {
      return null;
    }
    return 'https://youtube.com$url';
  }

  ///
  EmbedPlayerConfig get playerConfig {
    if (_playerConfig != null) {
      return _playerConfig;
    }
    var playerConfigJson = _playerConfigJson ?? _playerConfigJson2;
    if (playerConfigJson == null) {
      return null;
    }
    return _playerConfig =
        EmbedPlayerConfig(json.decode(playerConfigJson.extractJson()));
  }

  String get _playerConfigJson => _root
      .getElementsByTagName('script')
      .map((e) => e.text)
      .map((e) => _playerConfigExp.firstMatch(e)?.group(1))
      .firstWhere((e) => !e.isNullOrWhiteSpace, orElse: () => null);

  String get _playerConfigJson2 => _root
      .getElementsByTagName('script')
      .map((e) => e.text)
      .map((e) => _playerConfigExp2.firstMatch(e)?.group(1))
      .firstWhere((e) => !e.isNullOrWhiteSpace, orElse: () => null);

  ///
  EmbedPage(this._root);

  ///
  EmbedPage.parse(String raw) : _root = parser.parse(raw);

  ///
  static Future<EmbedPage> get(YoutubeHttpClient httpClient, String videoId) {
    var url = 'https://youtube.com/embed/$videoId?hl=en';
    return retry(() async {
      var raw = await httpClient.getString(url);
      return EmbedPage.parse(raw);
    });
  }
}

/// Used internally
class EmbedPlayerConfig implements PlayerConfigBase<Map<String, dynamic>> {
  @override
  final Map<String, dynamic> root;

  ///
  EmbedPlayerConfig(this.root);

  @override
  String get sourceUrl => 'https://youtube.com${root['assets']['js']}';
}
