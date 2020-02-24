/// Thrown when a video is not playable and its streams cannot be resolved.
/// This can happen because the video requires purchase,
/// is blocked in your country, is controversial, or due to other reasons.
class VideoUnplayableException {
  /// ID of the video.
  final String videoId;

  /// Reason why the video can't be played.
  final String reason;

  /// Initializes an instance of [VideoUnplayableException]
  const VideoUnplayableException(this.videoId, [this.reason]);

  String toString() =>
      'VideoUnplayableException: Video $videoId couldn\'t be played.'
      '${reason == null ? '' : 'Reason: $reason'}';
}
