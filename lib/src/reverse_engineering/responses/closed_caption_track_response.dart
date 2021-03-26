import 'package:xml/xml.dart' as xml;

import '../../extensions/helpers_extension.dart';
import '../../retry.dart';
import '../youtube_http_client.dart';

///
class ClosedCaptionTrackResponse {
  final xml.XmlDocument root;

  ///
  late final Iterable<ClosedCaption> closedCaptions =
      root.findAllElements('p').map((e) => ClosedCaption._(e));

  ///
  ClosedCaptionTrackResponse(this.root);

  ///
  // ignore: deprecated_member_use
  ClosedCaptionTrackResponse.parse(String raw) : root = xml.parse(raw);

  ///
  static Future<ClosedCaptionTrackResponse> get(
      YoutubeHttpClient httpClient, Uri url) {
    var formatUrl = url.replaceQueryParameters({'fmt': 'srv3'});
    return retry(() async {
      var raw = await httpClient.getString(formatUrl);
      return ClosedCaptionTrackResponse.parse(raw);
    });
  }
}

///
class ClosedCaption {
  final xml.XmlElement root;

  ///
  String get text => root.text;

  ///
  late final Duration offset =
      Duration(milliseconds: int.parse(root.getAttribute('t') ?? '0'));

  ///
  late final Duration duration =
      Duration(milliseconds: int.parse(root.getAttribute('d') ?? '0'));

  ///
  late final Duration end = offset + duration;

  ///
  late final List<ClosedCaptionPart> parts =
      root.findAllElements('s').map((e) => ClosedCaptionPart._(e)).toList();

  ClosedCaption._(this.root);
}

///
class ClosedCaptionPart {
  final xml.XmlElement root;

  ///
  String get text => root.text;

  ///
  late final Duration offset =
      Duration(milliseconds: int.parse(root.getAttribute('t') ?? '0'));

  ClosedCaptionPart._(this.root);
}
