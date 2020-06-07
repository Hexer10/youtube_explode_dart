import 'package:xml/xml.dart' as xml;

import '../../retry.dart';
import '../youtube_http_client.dart';

class ClosedCaptionTrackResponse {
  final xml.XmlDocument _root;

  ClosedCaptionTrackResponse(this._root);

  Iterable<ClosedCaption> get closedCaptions =>
      _root.findAllElements('p').map((e) => ClosedCaption._(e));

  ClosedCaptionTrackResponse.parse(String raw) : _root = xml.parse(raw);

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

class ClosedCaption {
  final xml.XmlElement _root;

  ClosedCaption._(this._root);

  String get text => _root.text;

  Duration get offset =>
      Duration(milliseconds: int.parse(_root.getAttribute('t') ?? 0));

  Duration get duration =>
      Duration(milliseconds: int.parse(_root.getAttribute('d') ?? 0));

  Duration get end => offset + duration;

  Iterable<ClosedCaptionPart> getParts() =>
      _root.findAllElements('s').map((e) => ClosedCaptionPart._(e));
}

class ClosedCaptionPart {
  final xml.XmlElement _root;

  ClosedCaptionPart._(this._root);

  String get text => _root.text;

  Duration get offset =>
      Duration(milliseconds: int.parse(_root.getAttribute('t') ?? '0'));
}
