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
      _root.querySelector('meta[property="og:url"]')?.attributes['content'];

  ///
  String get channelId => channelUrl.substringAfter('channel/');

  ///
  String get channelTitle =>
      _root.querySelector('meta[property="og:title"]')?.attributes['content'];

  ///
  String get channelLogoUrl =>
      _root.querySelector('meta[property="og:image"]')?.attributes['content'];

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
