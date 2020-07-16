import '../extensions/helpers_extension.dart';
import '../videos/streams/video_quality.dart';
import '../videos/streams/video_resolution.dart';

const _qualityMap = <int, VideoQuality>{
  5: VideoQuality.low144,
  6: VideoQuality.low240,
  13: VideoQuality.low144,
  17: VideoQuality.low144,
  18: VideoQuality.medium360,
  22: VideoQuality.high720,
  34: VideoQuality.medium360,
  35: VideoQuality.medium480,
  36: VideoQuality.low240,
  37: VideoQuality.high1080,
  38: VideoQuality.high3072,
  43: VideoQuality.medium360,
  44: VideoQuality.medium480,
  45: VideoQuality.high720,
  46: VideoQuality.high1080,
  59: VideoQuality.medium480,
  78: VideoQuality.medium480,
  82: VideoQuality.medium360,
  83: VideoQuality.medium480,
  84: VideoQuality.high720,
  85: VideoQuality.high1080,
  91: VideoQuality.low144,
  92: VideoQuality.low240,
  93: VideoQuality.medium360,
  94: VideoQuality.medium480,
  95: VideoQuality.high720,
  96: VideoQuality.high1080,
  100: VideoQuality.medium360,
  101: VideoQuality.medium480,
  102: VideoQuality.high720,
  132: VideoQuality.low240,
  151: VideoQuality.low144,
  133: VideoQuality.low240,
  134: VideoQuality.medium360,
  135: VideoQuality.medium480,
  136: VideoQuality.high720,
  137: VideoQuality.high1080,
  138: VideoQuality.high4320,
  160: VideoQuality.low144,
  212: VideoQuality.medium480,
  213: VideoQuality.medium480,
  214: VideoQuality.high720,
  215: VideoQuality.high720,
  216: VideoQuality.high1080,
  217: VideoQuality.high1080,
  264: VideoQuality.high1440,
  266: VideoQuality.high2160,
  298: VideoQuality.high720,
  299: VideoQuality.high1080,
  399: VideoQuality.high1080,
  398: VideoQuality.high720,
  397: VideoQuality.medium480,
  396: VideoQuality.medium360,
  395: VideoQuality.low240,
  394: VideoQuality.low144,
  167: VideoQuality.medium360,
  168: VideoQuality.medium480,
  169: VideoQuality.high720,
  170: VideoQuality.high1080,
  218: VideoQuality.medium480,
  219: VideoQuality.medium480,
  242: VideoQuality.low240,
  243: VideoQuality.medium360,
  244: VideoQuality.medium480,
  245: VideoQuality.medium480,
  246: VideoQuality.medium480,
  247: VideoQuality.high720,
  248: VideoQuality.high1080,
  271: VideoQuality.high1440,
  272: VideoQuality.high2160,
  278: VideoQuality.low144,
  302: VideoQuality.high720,
  303: VideoQuality.high1080,
  308: VideoQuality.high1440,
  313: VideoQuality.high2160,
  315: VideoQuality.high2160,
  330: VideoQuality.low144,
  331: VideoQuality.low240,
  332: VideoQuality.medium360,
  333: VideoQuality.medium480,
  334: VideoQuality.high720,
  335: VideoQuality.high1080,
  336: VideoQuality.high1440,
  337: VideoQuality.high2160,
};

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
  /// Parses the itag as [VideoQuality]
  /// Throws an [ArgumentError] if the itag matches no video quality.
  static VideoQuality fromTag(int itag) {
    var q = _qualityMap[itag];
    if (q == null) {
      throw ArgumentError.value(itag, 'itag', 'Unrecognized itag');
    }
    return q;
  }

  /// Parses the label as [VideoQuality]
  /// Throws an [ArgumentError] if the string matches no video quality.
  static VideoQuality fromLabel(String label) {
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

    throw ArgumentError.value(
        label, 'label', 'Unrecognized video quality label');
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

  ///
  static String getLabelFromTagWithFramerate(int itag, double framerate) {
    var videoQuality = fromTag(itag);
    return videoQuality.getLabelWithFramerate(framerate);
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
