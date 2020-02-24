import 'exceptions.dart';

/// Thrown when a video is not playable because it requires purchase.
class VideoRequiresPurchaseException implements VideoUnplayableException {
  /// ID of the video.
  final String videoId;

  /// ID of the preview video.
  final String previewVideoId;

  /// Initializes an instance of [VideoRequiresPurchaseException]
  const VideoRequiresPurchaseException(this.videoId, this.previewVideoId);

  @override
  String get reason => 'Requires purchase';
}
