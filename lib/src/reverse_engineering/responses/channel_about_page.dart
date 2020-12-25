import 'package:html/dom.dart';
import 'package:html/parser.dart' as parser;

import '../../../youtube_explode_dart.dart';
import '../../exceptions/exceptions.dart';
import '../../extensions/helpers_extension.dart';
import '../../retry.dart';
import '../youtube_http_client.dart';
import 'generated/channel_about_page_id.g.dart';

///
class ChannelAboutPage {
  final Document _root;

  _InitialData _initialData;

  ///
  _InitialData get initialData {
    if (_initialData != null) {
      return _initialData;
    }

    final scriptText = _root
        .querySelectorAll('script')
        .map((e) => e.text)
        .toList(growable: false);

    var initialDataText = scriptText.firstWhere(
        (e) => e.contains('window["ytInitialData"] ='),
        orElse: () => null);
    if (initialDataText != null) {
      return _initialData = _InitialData(ChannelAboutPageId.fromRawJson(
          _extractJson(initialDataText, 'window["ytInitialData"] =')));
    }

    initialDataText = scriptText.firstWhere(
        (e) => e.contains('var ytInitialData = '),
        orElse: () => null);
    if (initialDataText != null) {
      return _initialData = _InitialData(ChannelAboutPageId.fromRawJson(
          _extractJson(initialDataText, 'var ytInitialData = ')));
    }

    throw TransientFailureException(
        'Failed to retrieve initial data from the channel about page, please report this to the project GitHub page.'); // ignore: lines_longer_than_80_chars
  }

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

final _urlExp = RegExp(r'q=([^=]*)$');

class _InitialData {
  // Json parsed class
  final ChannelAboutPageId root;

  _InitialData(this.root);

  /* Cache results */
  ChannelAboutFullMetadataRenderer _content;

  ChannelAboutFullMetadataRenderer get content =>
      _content ??= getContentContext();

  ChannelAboutFullMetadataRenderer getContentContext() {
    return root
        .contents
        .twoColumnBrowseResultsRenderer
        .tabs[5]
        .tabRenderer
        .content
        .sectionListRenderer
        .contents
        .first
        .itemSectionRenderer
        .contents
        .first
        .channelAboutFullMetadataRenderer;
  }

  String get description => content.description.simpleText;

  List<ChannelLink> get channelLinks {
    return content.primaryLinks
        .map((e) => ChannelLink(
            e.title.simpleText,
            extractUrl(e.navigationEndpoint?.commandMetadata?.webCommandMetadata
                    ?.url ??
                e.navigationEndpoint.urlEndpoint.url),
            Uri.parse(e.icon.thumbnails.first.url)))
        .toList();
  }

  int get viewCount =>
      int.parse(content.viewCountText.simpleText.stripNonDigits());

  String get joinDate => content.joinedDateText.runs[1].text;

  String get title => content.title.simpleText;

  List<AvatarThumbnail> get avatar => content.avatar.thumbnails;

  String get country => content.country.simpleText;

  String parseRuns(List<dynamic> runs) =>
      runs?.map((e) => e.text)?.join() ?? '';

  Uri extractUrl(String text) =>
      Uri.parse(Uri.decodeFull(_urlExp.firstMatch(text)?.group(1) ?? ''));
}
