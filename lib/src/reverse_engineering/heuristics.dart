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

    if (label.startsWith('144')) {
      return VideoQuality.low144;
    }

    if (label.startsWith('240')) {
      return VideoQuality.low144;
    }

    if (label.startsWith('360')) {
      return VideoQuality.medium360;
    }

    if (label.startsWith('480')) {
      return VideoQuality.medium480;
    }

    if (label.startsWith('720')) {
      return VideoQuality.high720;
    }

    if (label.startsWith('1080')) {
      return VideoQuality.high1080;
    }

    if (label.startsWith('1440')) {
      return VideoQuality.high1440;
    }

    if (label.startsWith('2160')) {
      return VideoQuality.high2160;
    }

    if (label.startsWith('2880')) {
      return VideoQuality.high2880;
    }

    if (label.startsWith('3072')) {
      return VideoQuality.high3072;
    }

    if (label.startsWith('4320')) {
      return VideoQuality.high4320;
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

    var framerateRounded = (framerate / 10).ceil() * 10;
    return '${getLabel()}$framerateRounded';
  }

  /// Returns a [VideoResolution] from its [VideoQuality]
  VideoResolution toVideoResolution() {
    var r = _resolutionMap[this];
    if (r == null) {
      throw ArgumentError.value(this, 'quality', 'Unrecognized video quality');
    }
    return r;
  }
}
