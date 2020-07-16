import 'package:xml/xml.dart' as xml;

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
    var formatUrl = _setQueryParameters(url, {'format': '3'});
    return retry(() async {
      var raw = await httpClient.getString(formatUrl);
      return ClosedCaptionTrackResponse.parse(raw);
    });
  }

  static Uri _setQueryParameters(String url, Map<String, String> parameters) {
    var uri = Uri.parse(url);

    var query = Map<String, String>.from(uri.queryParameters);
    query.addAll(parameters);

    return uri.replace(queryParameters: query);
  }
}

///
class ClosedCaption {
  final xml.XmlElement _root;

  Duration _offset;
  Duration _duration;
  Duration _end;
  Iterable<ClosedCaptionPart> _parts;

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
  Iterable<ClosedCaptionPart> getParts() =>
      _parts ??= _root.findAllElements('s').map((e) => ClosedCaptionPart._(e));

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
