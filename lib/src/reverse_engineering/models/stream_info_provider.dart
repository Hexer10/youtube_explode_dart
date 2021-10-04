import 'package:http_parser/http_parser.dart';

import 'fragment.dart';

enum StreamSource { muxed, adaptive, dash }

///
abstract class StreamInfoProvider {
  ///
  static final RegExp contentLenExp = RegExp(r'clen=(\d+)');

  ///
  StreamSource get source;

  ///
  int get tag;

  ///
  String get url;

  MediaType get codec;

  ///
  String? get signature => null;

  ///
  String? get signatureParameter => null;

  ///
  int? get contentLength => null;

  ///
  int? get bitrate => null;

  ///
  String? get container;

  ///
  String? get audioCodec => null;

  ///
  String? get videoCodec => null;

  ///
  @Deprecated('Use qualityLabel')
  String? get videoQualityLabel => null;

  ///
  String get qualityLabel;

  ///
  int? get videoWidth => null;

  ///
  int? get videoHeight => null;

  ///
  int? get framerate => null;

  ///
  List<Fragment>? get fragments => null;
}
