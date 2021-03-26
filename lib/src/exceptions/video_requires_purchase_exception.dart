import '../videos/video_id.dart';
import 'video_unplayable_exception.dart';

/// Exception thrown when the requested video requires purchase.
class VideoRequiresPurchaseException implements VideoUnplayableException {
  /// Description message
  @override
  final String message;

  /// VideoId instance
  final VideoId previewVideoId;

  /// Initializes an instance of [VideoRequiresPurchaseException].
  VideoRequiresPurchaseException.preview(VideoId videoId, this.previewVideoId)
      : message =
            'Video `$videoId` is unplayable because it requires purchase.\n'
                'Streams are not available for this video.\n'
                'There is a preview video available: `$previewVideoId`.';

  @override
  String toString() =>
      '$runtimeType: $message'; // ignore: no_runtimetype_tostring
}
