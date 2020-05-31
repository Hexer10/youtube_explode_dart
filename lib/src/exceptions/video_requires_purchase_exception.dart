import '../models/models.dart';

import 'video_unplayable_exception.dart';

/// Exception thrown when the requested video requires purchase.
class VideoRequiresPurchaseException implements VideoUnplayableException {
  /// Description message
  final String message;

  /// VideoId instance
  final VideoId previewVideoId;

  /// Initializes an instance of [VideoRequiresPurchaseException]
  VideoRequiresPurchaseException(this.message, this.previewVideoId);

  /// Initializes an instance of [VideoUnplayableException] with a [VideoId]
  VideoRequiresPurchaseException.unavailable(this.previewVideoId)
      : message = 'Video \'$previewVideoId\' is unavailable.\n'
            'In most cases, this error indicates that the video doesn\'t exist, ' // ignore: lines_longer_than_80_chars
            'is private, or has been taken down.\n'
            'If you can however open this video in your browser in incognito mode, ' // ignore: lines_longer_than_80_chars
            'it most likely means that YouTube changed something, which broke this library.\n' // ignore: lines_longer_than_80_chars
            'Please report this issue on GitHub in that case.';
}
