import 'package:collection/collection.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart' as parser;

import '../../../youtube_explode_dart.dart';
import '../../exceptions/exceptions.dart';
import '../../extensions/helpers_extension.dart';
import '../../retry.dart';
import '../youtube_http_client.dart';

///
class ChannelAboutPage {
  final Document _root;

  ///
  late final _InitialData initialData = _getInitialData();

  _InitialData _getInitialData() {
    final scriptText = _root.querySelectorAll('script').map((e) => e.text).toList(growable: false);
    return scriptText.extractGenericData(
        (obj) => _InitialData(obj),
        () => TransientFailureException(
            'Failed to retrieve initial data from the channel about page, please report this to the project GitHub page.'));
  }

  ///
  String get description => initialData.description;

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

      return result;
    });
  }

  ///
  static Future<ChannelAboutPage> getByUsername(YoutubeHttpClient httpClient, String username) {
    var url = 'https://www.youtube.com/user/$username/about?hl=en';

    return retry(() async {
      var raw = await httpClient.getString(url);
      var result = ChannelAboutPage.parse(raw);

      return result;
    });
  }
}

final _urlExp = RegExp(r'q=([^=]*)$');

class _InitialData {
  // Json parsed map
  final Map<String, dynamic> root;

  _InitialData(this.root);

  late final Map<String, dynamic> content = _getContentContext();

  Map<String, dynamic> _getContentContext() {
    return root
        .get('contents')!
        .get('twoColumnBrowseResultsRenderer')!
        .getList('tabs')!
        .elementAtSafe(5)!
        .get('tabRenderer')!
        .get('content')!
        .get('sectionListRenderer')!
        .getList('contents')!
        .firstOrNull!
        .get('itemSectionRenderer')!
        .getList('contents')!
        .firstOrNull!
        .get('channelAboutFullMetadataRenderer')!;
  }

  late final String description = content.get('description')!.getT<String>('simpleText')!;

  late final List<ChannelLink> channelLinks = content
      .getList('primaryLinks')!
      .map((e) => ChannelLink(
          e.get('title')?.getT<String>('simpleText') ?? '',
          extractUrl(e.get('navigationEndpoint')?.get('commandMetadata')?.get('webCommandMetadata')?.getT<String>('url') ??
              e.get('navigationEndpoint')?.get('urlEndpoint')?.getT<String>('url') ??
              ''),
          Uri.parse(e.get('icon')?.getList('thumbnails')?.firstOrNull?.getT<String>('url') ?? '')))
      .toList();

  late final int viewCount = int.parse(content.get('viewCountText')!.getT<String>('simpleText')!.stripNonDigits());

  late final String joinDate = content.get('joinedDateText')!.getList('runs')![1].getT<String>('text')!;

  late final String title = content.get('title')!.getT<String>('simpleText')!;

  late final List<Map<String, dynamic>> avatar = content.get('avatar')!.getList('thumbnails')!;

  String get country => content.get('country')!.getT<String>('simpleText')!;

  String parseRuns(List<dynamic>? runs) => runs?.map((e) => e.text).join() ?? '';

  Uri extractUrl(String text) => Uri.parse(Uri.decodeFull(_urlExp.firstMatch(text)?.group(1) ?? ''));
}
