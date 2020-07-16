///
abstract class StreamInfoProvider {
  ///
  static final RegExp contentLenExp = RegExp(r'clen=(\d+)');

  ///
  int get tag;

  ///
  String get url;

  ///
  // Can be null
  // ignore: avoid_returning_null
  String get signature => null;

  ///
  // Can be null
  // ignore: avoid_returning_null
  String get signatureParameter => null;

  ///
  // Can be null
  // ignore: avoid_returning_null
  int get contentLength => null;

  ///
  // Can be null
  // ignore: avoid_returning_null
  int get bitrate;

  ///
  // Can be null
  // ignore: avoid_returning_null
  String get container;

  ///
  // Can be null
  // ignore: avoid_returning_null
  String get audioCodec => null;

  ///
  // Can be null
  // ignore: avoid_returning_null
  String get videoCodec => null;

  ///
  // Can be null
  // ignore: avoid_returning_null
  String get videoQualityLabel => null;

  ///
  // Can be null
  // ignore: avoid_returning_null
  int get videoWidth => null;

  ///
  // Can be null
  // ignore: avoid_returning_null
  int get videoHeight => null;

  ///
  // Can be null
  // ignore: avoid_returning_null
  int get framerate => null;
}
