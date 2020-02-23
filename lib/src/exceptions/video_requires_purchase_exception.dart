/// Thrown when a video is not playable because it requires purchase.
class VideoRequiresPurchaseException implements Exception {
  /// ID of the preview video.
  final String previewVideoId;

  /// Initializes an instance of [VideoRequiresPurchaseException]
  const VideoRequiresPurchaseException(this.previewVideoId);

  @override
  String toString() => 'VideoRequiresPurchaseException: The video '
      '$previewVideoId requires a purchase';
}
