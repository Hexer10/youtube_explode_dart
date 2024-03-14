import '../extensions/helpers_extension.dart';
import '../videos/streams/video_quality.dart';
import '../videos/streams/video_resolution.dart';

const _resolutionMap = <VideoQuality, VideoResolution>{
  VideoQuality.low144: VideoResolution(256, 144),
  VideoQuality.low240: VideoResolution(426, 240),
  VideoQuality.medium360: VideoResolution(640, 360),
  VideoQuality.medium480: VideoResolution(854, 480),
  VideoQuality.high720: VideoResolution(1280, 720),
  VideoQuality.high1080: VideoResolution(1920, 1080),
  VideoQuality.high1440: VideoResolution(2560, 1440),
  VideoQuality.high2160: VideoResolution(3840, 2160),
  VideoQuality.high2880: VideoResolution(5120, 2880),
  VideoQuality.high3072: VideoResolution(4096, 3072),
  VideoQuality.high4320: VideoResolution(7680, 4320),
};

/// Utilities for [VideoQuality]
extension VideoQualityUtil on VideoQuality {
  /// Parses the label as [VideoQuality]
  /// Throws an [ArgumentError] if the string matches no video quality.
  static VideoQuality fromLabel(String? label) {
    if (label == null) {
      return VideoQuality.unknown;
    }
    label = label.toLowerCase();

    for (var entry in _resolutionMap.entries.toList().reversed) {
      var videoQuality = entry.key;
      var videoResolution = entry.value;

      if (label.startsWith(videoResolution.height.toString())) {
        return videoQuality;
      }
    }

    return VideoQuality.unknown;
  }

  ///
  String getLabel() => '${toString().stripNonDigits()}p';

  ///
  String getLabelWithFramerate(double framerate) {
    // Framerate appears only if it's above 30
    if (framerate <= 30) {
      return getLabel();
    }

    final framerateRounded = (framerate / 10).ceil() * 10;
    return '${getLabel()}$framerateRounded';
  }

  /// Returns a [VideoResolution] from its [VideoQuality]
  VideoResolution toVideoResolution() {
    final r = _resolutionMap[this];
    if (r == null) {
      throw ArgumentError.value(this, 'quality', 'Unrecognized video quality');
    }
    return r;
  }
}
