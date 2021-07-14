import 'package:html/dom.dart';
import 'package:html/parser.dart' as parser;

import '../../exceptions/exceptions.dart';
import '../../extensions/helpers_extension.dart';
import '../../retry.dart';
import '../youtube_http_client.dart';

///
class ChannelPage {
  final Document _root;

  ///
  bool get isOk => _root.querySelector('meta[property="og:url"]') != null;

  ///
  String get channelUrl =>
      _root.querySelector('meta[property="og:url"]')?.attributes['content'] ??
      '';

  ///
  String get channelId => channelUrl.substringAfter('channel/');

  ///
  String get channelTitle =>
      _root.querySelector('meta[property="og:title"]')?.attributes['content'] ??
      '';

  ///
  String get channelLogoUrl =>
      _root.querySelector('meta[property="og:image"]')?.attributes['content'] ??
      '';

  int? get subscribersCount => initialData.subscribersCount;

  ///
  late final _InitialData initialData = _getInitialData();

  _InitialData _getInitialData() {
    final scriptText = _root
        .querySelectorAll('script')
        .map((e) => e.text)
        .toList(growable: false);
    return scriptText.extractGenericData(
        (obj) => _InitialData(obj),
        () => TransientFailureException(
            'Failed to retrieve initial data from the channel about page, please report this to the project GitHub page.'));
  }

  ///
  ChannelPage(this._root);

  ///
  ChannelPage.parse(String raw) : _root = parser.parse(raw);

  ///
  static Future<ChannelPage> get(YoutubeHttpClient httpClient, String id) {
    var url = 'https://www.youtube.com/channel/$id?hl=en';

    return retry(() async {
      var raw = await httpClient.getString(url);
      var result = ChannelPage.parse(raw);

      if (!result.isOk) {
        throw TransientFailureException('Channel page is broken');
      }
      return result;
    });
  }

  ///
  static Future<ChannelPage> getByUsername(
      YoutubeHttpClient httpClient, String username) {
    var url = 'https://www.youtube.com/user/$username?hl=en';

    return retry(() async {
      var raw = await httpClient.getString(url);
      var result = ChannelPage.parse(raw);

      if (!result.isOk) {
        throw TransientFailureException('Channel page is broken');
      }
      return result;
    });
  }
}

class _InitialData {
  static final RegExp _subCountExp = RegExp(r'(\d+(?:\.\d+)?)(K|M|\s)');

  // Json parsed map
  final Map<String, dynamic> root;

  _InitialData(this.root);

  int? get subscribersCount {
    final renderer = root.get('header')?.get('c4TabbedHeaderRenderer');
    if (renderer?['subscriberCountText'] == null) {
      return null;
    }
    final subText =
        renderer?.get('subscriberCountText')?.getT<String>('simpleText');
    if (subText == null) {
      return null;
    }
    final match = _subCountExp.firstMatch(subText);
    if (match == null) {
      return null;
    }
    if (match.groupCount != 2) {
      return null;
    }

    final count = double.tryParse(match.group(1) ?? '');
    if (count == null) {
      return null;
    }

    final multiplierText = match.group(2);
    if (multiplierText == null) {
      return null;
    }

    var multiplier = 1;
    if (multiplierText == 'K') {
      multiplier = 1000;
    } else if (multiplierText == 'M') {
      multiplier = 1000000;
    }

    return (count * multiplier).toInt();
  }
}
