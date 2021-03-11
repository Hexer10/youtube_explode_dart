import 'package:xml/xml.dart' as xml;

import '../../retry.dart';
import '../youtube_http_client.dart';
import 'stream_info_provider.dart';

///
class DashManifest {
  static final _urlSignatureExp = RegExp(r'/s/(.*?)(?:/|$)');

  final xml.XmlDocument _root;

  ///
  late final Iterable<_StreamInfo> streams = _root
      .findElements('Representation')
      .where((e) => e
          .findElements('Initialization')
          .first
          .getAttribute('sourceURL')!
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
  static String? getSignatureFromUrl(String url) =>
      _urlSignatureExp.firstMatch(url)?.group(1);
}

class _StreamInfo extends StreamInfoProvider {
  static final _contentLenExp = RegExp(r'[/\?]clen[/=](\d+)');

  final xml.XmlElement root;

  _StreamInfo(this.root);

  @override
  late final int tag = int.parse(root.getAttribute('id')!);

  @override
  late final String url = root.getAttribute('BaseURL')!;

  @override
  late final int contentLength = int.parse(
      (root.getAttribute('contentLength') ??
          _contentLenExp.firstMatch(url)?.group(1))!);

  @override
  late final int bitrate = int.parse(root.getAttribute('bandwidth')!);

  @override
  late final String? container = '';
  /*
      Uri.decodeFull((_containerExp.firstMatch(url)?.group(1))!);*/

  late final bool isAudioOnly =
      root.findElements('AudioChannelConfiguration').isNotEmpty;

  @override
  late final String? audioCodec =
      isAudioOnly ? null : root.getAttribute('codecs');

  @override
  late final String? videoCodec =
      isAudioOnly ? root.getAttribute('codecs') : null;

  @override
  late final int videoWidth = int.parse(root.getAttribute('width')!);

  @override
  late final int videoHeight = int.parse(root.getAttribute('height')!);

  @override
  late final int framerate = int.parse(root.getAttribute('framerate')!);
}
