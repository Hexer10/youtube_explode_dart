/// Thrown when YoutubeExplode fails to extract required information.
/// This usually happens when YouTube makes changes that break YoutubeExplode.
class UnrecognizedStructureException implements FormatException {
  ///A message describing the format error.
  @override
  final String message;

  /// The actual source input which caused the error.
  @override
  final String source;

  /// Initializes an instance of [UnrecognizedStructureException]
  const UnrecognizedStructureException([this.message, this.source]);

  /// Unimplemented
  @override
  int get offset => throw UnsupportedError('Offset not supported');
}
