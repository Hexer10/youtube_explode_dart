/// Thrown when a video is not playable and its streams cannot be resolved.
/// This can happen because the video requires purchase,
/// is blocked in your country, is controversial, or due to other reasons.
class VideoUnplayableException {
  /// ID of the video.
  final String videoId;

  /// Initializes an instance of [VideoUnplayableException]
  const VideoUnplayableException(this.videoId);

  String toString() =>
      'VideoUnplayableException: Video $videoId couldn\'t be played';
}
