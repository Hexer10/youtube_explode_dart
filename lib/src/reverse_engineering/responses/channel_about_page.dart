import 'dart:convert';

import 'package:html/dom.dart';
import 'package:html/parser.dart' as parser;

import '../../exceptions/exceptions.dart';
import '../../extensions/helpers_extension.dart';
import '../../retry.dart';
import '../youtube_http_client.dart';

///
class ChannelAboutPage {
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

  ///
  bool get isOk => initialData != null;

  ///
  String get description => initialData.description;

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
  ChannelAboutPage(this._root);

  ///
  ChannelAboutPage.parse(String raw) : _root = parser.parse(raw);

  ///
  static Future<ChannelAboutPage> get(YoutubeHttpClient httpClient, String id) {
    var url = 'https://www.youtube.com/channel/$id/about?hl=en';

    return retry(() async {
      var raw = await httpClient.getString(url);
      var result = ChannelAboutPage.parse(raw);

      if (!result.isOk) {
        throw TransientFailureException('Channel about page is broken');
      }
      return result;
    });
  }

  ///
  static Future<ChannelAboutPage> getByUsername(
      YoutubeHttpClient httpClient, String username) {
    var url = 'https://www.youtube.com/user/$username/about?hl=en';

    return retry(() async {
      var raw = await httpClient.getString(url);
      var result = ChannelAboutPage.parse(raw);

      if (!result.isOk) {
        throw TransientFailureException('Channel about page is broken');
      }
      return result;
    });
  }
}

class _InitialData {
  // Json parsed map
  final Map<String, dynamic> root;

  _InitialData(this.root);

  /* Cache results */

  String _description;

  Map<String, dynamic> getDescriptionContext(Map<String, dynamic> root) {
    if (root['metadata'] != null) {
      return root['metadata']['channelMetadataRenderer'];
    }
    return null;
  }

  String get description => _description ??=
      getDescriptionContext(root)?.getValue('description') ?? '';
}
