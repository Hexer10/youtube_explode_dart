abstract class StreamInfoProvider {
  static final RegExp contentLenExp = RegExp(r'clen=(\d+)');

  int get tag;

  String get url;

  // Can be null
  String get signature => null;

  // Can be null
  String get signatureParameter => null;

  // Can be null
  int get contentLength => null;

  int get bitrate;

  String get container;

  // Can be null
  String get audioCodec => null;

  // Can be null
  String get videoCodec => null;

  // Can be null
  String get videoQualityLabel => null;

  // Can be null
  int get videoWidth => null;

  // Can be null
  int get videoHeight => null;

  // Can be null
  int get framerate => null;
}
