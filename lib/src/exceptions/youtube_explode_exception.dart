/// Parent class for domain exceptions thrown by [YoutubeExplode]
abstract class YoutubeExplodeException implements Exception {
  final String message;

  YoutubeExplodeException(this.message);
}
