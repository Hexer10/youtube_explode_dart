import 'package:xml/xml.dart' as xml;

import '../../retry.dart';
import '../youtube_http_client.dart';
import 'stream_info_provider.dart';

///
class DashManifest {
  static final _urlSignatureExp = RegExp(r'/s/(.*?)(?:/|$)');

  final xml.XmlDocument _root;
  Iterable<_StreamInfo> _streams;


  ///
  Iterable<_StreamInfo> get streams => _streams ??= _root
      .findElements('Representation')
      .where((e) => e
          .findElements('Initialization')
          .first
          .getAttribute('sourceURL')
          .contains('sq/'))
      .map((e) => _StreamInfo(e));

  ///
  DashManifest(this._root);

  ///
  // ignore: deprecated_member_use
  DashManifest.parse(String raw) : _root = xml.parse(raw);

  ///
  static Future<DashManifest> get(YoutubeHttpClient httpClient, dynamic url) {
    return retry(() async {
      var raw = await httpClient.getString(url);
      return DashManifest.parse(raw);
    });
  }

  ///
  static String getSignatureFromUrl(String url) =>
      _urlSignatureExp.firstMatch(url)?.group(1);
}

class _StreamInfo extends StreamInfoProvider {
  static final _contentLenExp = RegExp(r'[/\?]clen[/=](\d+)');
  static final _containerExp = RegExp(r'mime[/=]\w*%2F([\w\d]*)');

  final xml.XmlElement _root;

  _StreamInfo(this._root);

  @override
  int get tag => int.parse(_root.getAttribute('id'));

  @override
  String get url => _root.getAttribute('BaseURL');

  @override
  int get contentLength => int.parse(_root.getAttribute('contentLength') ??
      _contentLenExp.firstMatch(url).group(1));

  @override
  int get bitrate => int.parse(_root.getAttribute('bandwidth'));

  @override
  String get container =>
      Uri.decodeFull(_containerExp.firstMatch(url).group(1));

  bool get isAudioOnly =>
      _root.findElements('AudioChannelConfiguration').isNotEmpty;

  @override
  String get audioCodec => isAudioOnly ? null : _root.getAttribute('codecs');

  @override
  String get videoCodec => isAudioOnly ? _root.getAttribute('codecs') : null;

  @override
  int get videoWidth => int.parse(_root.getAttribute('width'));

  @override
  int get videoHeight => int.parse(_root.getAttribute('height'));

  @override
  int get framerate => int.parse(_root.getAttribute('framerate'));
}
