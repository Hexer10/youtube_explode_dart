/// Thrown when a video is not available and cannot be processed.
/// This can happen because the video does not exist, is deleted,
/// is private, or due to other reasons.
class VideoUnavailableException implements Exception {
  /// ID of the video.
  final String videoId;

  /// Initializes an instance of [VideoUnavailableException]
  const VideoUnavailableException(this.videoId);

  @override
  String toString() =>
      'VideoUnavailableException: Video $videoId is unavailable.';
}
