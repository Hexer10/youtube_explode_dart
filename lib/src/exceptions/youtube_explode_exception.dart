/// Parent class for domain exceptions thrown by [YoutubeExplode]
abstract class YoutubeExplodeException implements Exception {
  /// Generic message.
  final String message;

  ///
  YoutubeExplodeException(this.message);

  @override
  String toString();
}
