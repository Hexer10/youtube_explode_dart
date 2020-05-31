import 'package:html/dom.dart';
import 'package:youtube_explode_dart/src/reverse_engineering/responses/embed_page.dart';

class VideoPage {
  final RegExp _videoLikeExp = RegExp(r'label""\s*:\s*""([\d,\.]+) likes');
  final RegExp _videoDislikeExp =
      RegExp(r'label""\s*:\s*""([\d,\.]+) dislikes');

  final Document _root;

  VideoPage(this._root);

  bool get isOk => _root.body.querySelector('#player') != null;

  bool get isVideoAvailable =>
      _root.querySelector('meta[property="og:url"]') != null;

  int get videoLikeCount => int.tryParse(_videoLikeExp
          .firstMatch(_root.text)
          .group(1)
          .nullIfWhitespace
          ?.stripNonDigits() ??
      '');

  int get videoDislikeCount => int.tryParse(_videoDislikeExp
          .firstMatch(_root.text)
          .group(1)
          .nullIfWhitespace
          ?.stripNonDigits() ??
      '');

  _PlayerConfig get playerConfig => _PlayerConfig.parse(_root.getElementsByTagName('script').map((e) => e.text).map((e) => _extractJson(e)).firstWhere((e) => e != null));

  String _extractJson(String str) {
    var startIndex = str.indexOf('ytplayer.config =');
    var endIndex = str.indexOf(';ytplayer.load =');
    if (startIndex == -1 || endIndex == -1)
      return null;

    return str.substring(startIndex + 17, endIndex);
  }
}

class _PlayerConfig {
  
}
extension on String {
  static final _exp = RegExp(r'\D');

  /// Strips out all non digit characters.
  String stripNonDigits() => replaceAll(_exp, '');

  String get nullIfWhitespace => trim().isEmpty ? null : this;

  bool get isNullOrWhiteSpace {
    if (this == null) {
      return true;
    }
    if (trim().isEmpty) {
      return true;
    }
    return false;
  }
}
