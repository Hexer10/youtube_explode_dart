import 'package:html/dom.dart';
import 'package:html/parser.dart' as parser;

class ChannelPage {
  final Document _root;


  bool get isOk => _root.querySelector('meta[property="og:url"]') != null;

  String get channelUrl => _root
      .querySelectorThrow('meta[property="og:url"]')
      .getAttributeThrow('content');

  String get channelId => channelId.substringAfter('channel/');

  String get channelTitle => _root
      .querySelectorThrow('meta[property="og:title"]')
      .getAttributeThrow('content');

  String get channelLogoUrl => _root
      .querySelectorThrow('meta[property="og:image"]')
      .getAttributeThrow('content');

  ChannelPage(this._root);

  ChannelPage.parse(String raw) : _root = parser.parse(raw);

  static Future<ChannelPage> hello() {}
}

extension on Document {
  Element querySelectorThrow(String selectors) {
    var element = querySelector(selectors);
    if (element == null) {
      //TODO: throw
    }
    return element;
  }
}

extension on Element {
  String getAttributeThrow(String name) {
    var attribute = attributes[name];
    if (attribute == null) {
      //TODO: throw
    }
    return attribute;
  }
}

extension on String {
  String substringAfter(String separator) =>
      substring(indexOf(separator) + length);
}
