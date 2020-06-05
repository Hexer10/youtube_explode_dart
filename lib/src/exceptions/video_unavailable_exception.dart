import '../videos/video_id.dart';
import 'exceptions.dart';

/// Thrown when a video is not available and cannot be processed.
/// This can happen because the video does not exist, is deleted,
/// is private, or due to other reasons.
class VideoUnavailableException implements VideoUnplayableException {
  /// Description message
  @override
  final String message;

  /// Initializes an instance of [VideoUnavailableException]
  VideoUnavailableException(this.message);

  /// Initializes an instance of [VideoUnplayableException] with a [VideoId]
  VideoUnavailableException.unavailable(VideoId videoId)
      : message = 'Video \'$videoId\' is unavailable\n'
            'In most cases, this error indicates that the video doesn\'t exist, ' // ignore: lines_longer_than_80_chars
            'is private, or has been taken down.\n'
            'If you can however open this video in your browser in incognito mode, ' // ignore: lines_longer_than_80_chars
            'it most likely means that YouTube changed something, which broke this library.\n' // ignore: lines_longer_than_80_chars
            'Please report this issue on GitHub in that case.';
}
