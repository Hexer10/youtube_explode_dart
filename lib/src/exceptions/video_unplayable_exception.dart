import '../videos/video_id.dart';
import 'youtube_explode_exception.dart';

/// Exception thrown when the requested video is unplayable.
class VideoUnplayableException implements YoutubeExplodeException {
  /// Description message
  @override
  final String message;

  /// Initializes an instance of [VideoUnplayableException]
  VideoUnplayableException(this.message);

  /// Initializes an instance of [VideoUnplayableException] with a [VideoId]
  VideoUnplayableException.unplayable(VideoId videoId, {String reason = ''})
      : message = 'Video \'$videoId\' is unplayable.\n'
            'Streams are not available for this video.\n'
            'In most cases, this error indicates that there are \n'
            'some restrictions in place that prevent watching this video.\n'
            'Reason: $reason';

  /// Initializes an instance of [VideoUnplayableException] with a [VideoId]
  VideoUnplayableException.liveStream(VideoId videoId)
      : message = 'Video \'$videoId\' is an ongoing live stream.\n'
            'Streams are not available for this video.\n'
            'Please wait until the live stream finishes and try again.';

  /// Initializes an instance of [VideoUnplayableException] with a [VideoId]
  VideoUnplayableException.notLiveStream(VideoId videoId)
      : message = 'Video \'$videoId\' is not an ongoing live stream.\n'
            'Live stream manifest is not available for this video';

  @override
  String toString() => 'VideoUnplayableException: $message';
}
