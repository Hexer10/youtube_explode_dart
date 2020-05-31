import 'package:http_parser/http_parser.dart';
import 'package:xml/xml.dart' as xml;
import 'package:youtube_explode_dart/src/retry.dart';
import 'package:youtube_explode_dart/src/reverse_engineering/responses/stream_info_provider.dart';
import 'package:youtube_explode_dart/src/reverse_engineering/reverse_engineering.dart';

class DashManifest {
  static final _urlSignatureExp = RegExp(r'/s/(.*?)(?:/|$)');

  final xml.XmlDocument _root;

  DashManifest(this._root);

  Iterable<_StreamInfo> get streams => _root
      .findElements('Representation')
      .where((e) => e
          .findElements('Initialization')
          .first
          .getAttribute('sourceURL')
          .contains('sq/'))
      .map((e) => _StreamInfo(e));

  DashManifest.parse(String raw) : _root = xml.parse(raw);

  Future<DashManifest> get(YoutubeHttpClient httpClient, String url) {
    retry(() async {
      var raw = await httpClient.getString(url);
      return DashManifest.parse(raw);
    });
  }

  String getSignatureFromUrl(String url) =>
      _urlSignatureExp.firstMatch(url).group(1);
}

class _StreamInfo extends StreamInfoProvider {
  static final _contentLenExp = RegExp(r'clen[/=](\d+)');
  static final _containerExp = RegExp(r'mime[/=]\w*%2F([\w\d]*)');

  final xml.XmlElement _root;

  _StreamInfo(this._root);

  int get tag => int.parse(_root.getAttribute('id'));

  String get url => _root.getAttribute('BaseURL');

  int get contentLength => int.parse(_root.getAttribute('contentLength') ??
      _contentLenExp.firstMatch(url).group(1));

  int get bitrate => int.parse(_root.getAttribute('bandwidth'));

  String get container =>
      Uri.decodeFull(_containerExp.firstMatch(url).group(1));

  bool get isAudioOnly =>
      _root.findElements('AudioChannelConfiguration').isNotEmpty;

  String get audioCodec => isAudioOnly ? null : _root.getAttribute('codecs');

  String get videoCodec => isAudioOnly ? _root.getAttribute('codecs') : null;

  int get videoWidth => int.parse(_root.getAttribute('width'));

  int get videoHeight => int.parse(_root.getAttribute('height'));

  int get framerate => int.parse(_root.getAttribute('framerate'));
}
