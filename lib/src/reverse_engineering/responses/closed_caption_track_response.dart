import 'package:xml/xml.dart' as xml;

import '../../extensions/helpers_extension.dart';
import '../../retry.dart';
import '../youtube_http_client.dart';

///
class ClosedCaptionTrackResponse {
  final xml.XmlDocument _root;

  Iterable<ClosedCaption> _closedCaptions;

  ///
  Iterable<ClosedCaption> get closedCaptions => _closedCaptions ??=
      _root.findAllElements('p').map((e) => ClosedCaption._(e));

  ///
  ClosedCaptionTrackResponse(this._root);

  ///
  // ignore: deprecated_member_use
  ClosedCaptionTrackResponse.parse(String raw) : _root = xml.parse(raw);

  ///
  static Future<ClosedCaptionTrackResponse> get(
      YoutubeHttpClient httpClient, String url) {
    var formatUrl = Uri.parse(url).replaceQueryParameters({'fmt': 'srv3'});
    return retry(() async {
      var raw = await httpClient.getString(formatUrl);
      return ClosedCaptionTrackResponse.parse(raw);
    });
  }
}

///
class ClosedCaption {
  final xml.XmlElement _root;

  Duration _offset;
  Duration _duration;
  Duration _end;
  List<ClosedCaptionPart> _parts;

  ///
  String get text => _root.text;

  ///
  Duration get offset => _offset ??=
      Duration(milliseconds: int.parse(_root.getAttribute('t') ?? 0));

  ///
  Duration get duration => _duration ??=
      Duration(milliseconds: int.parse(_root.getAttribute('d') ?? 0));

  ///
  Duration get end => _end ??= offset + duration;

  ///
  List<ClosedCaptionPart> getParts() => _parts ??=
      _root.findAllElements('s').map((e) => ClosedCaptionPart._(e)).toList();

  ClosedCaption._(this._root);
}

///
class ClosedCaptionPart {
  final xml.XmlElement _root;

  Duration _offset;

  ///
  String get text => _root.text;

  ///
  Duration get offset => _offset ??=
      Duration(milliseconds: int.parse(_root.getAttribute('t') ?? '0'));

  ClosedCaptionPart._(this._root);
}
