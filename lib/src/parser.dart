import 'models/models.dart';

/// Parse the string as [Container].
/// Throws an [ArgumentError] if the string matches no container.
Container stringToContainer(String str) {
  str = str.toLowerCase().trim(); // Case-insensitive.

  if (str == 'mp4') {
    return Container.mp4;
  }

  if (str == 'webm') {
    return Container.webM;
  }

  if (str == '3gpp') {
    return Container.tgpp;
  }

  throw ArgumentError.value(str, 'str', 'Unrecognized container');
}

/// Parse the string as [AudioEncoding].
/// /// Throws an [ArgumentError] if the string matches no audio encoding.
AudioEncoding audioEncodingFromString(String str) {
  str = str.toLowerCase().trim();

  if (str.startsWith('mp4a')) {
    return AudioEncoding.aac;
  }

  if (str.startsWith('vorbis')) {
    return AudioEncoding.vorbis;
  }

  if (str.startsWith('opus')) {
    return AudioEncoding.opus;
  }

  throw ArgumentError.value(str, 'str', 'Unrecognized audio encoding');
}

/// Parses the string as [VideoEncoding].
/// Throws an [ArgumentError] if the string matches no video encoding.
VideoEncoding videoEncodingFromString(String str) {
  str = str.toLowerCase().trim();

  if (str.startsWith('mp4v')) {
    return VideoEncoding.mp4v;
  }

  if (str.startsWith('avc1')) {
    return VideoEncoding.h264;
  }

  if (str.startsWith('vp8')) {
    return VideoEncoding.vp8;
  }

  if (str.startsWith('vp9')) {
    return VideoEncoding.vp9;
  }

  if (str.startsWith('av01')) {
    return VideoEncoding.av1;
  }

  throw ArgumentError.value(str, 'str', 'Unrecognized video encoding');
}

/// Parses the itag as [VideoQuality]
/// Throws an [ArgumentError] if the itag matches no video quality.
VideoQuality videoQualityFromITag(int itag) {
  var q = _qualityMap[itag];
  if (q == null) {
    throw ArgumentError.value(itag, 'itag', 'Unrecognized itag');
  }
  return q;
}

/// Convert a video quality to a [String].
String videoQualityToLabel(VideoQuality quality) =>
    // ignore: prefer_interpolation_to_compose_strings
    quality.toString().replaceAll(RegExp(r'\D'), '') + 'p';

/// Returns a [VideoResolution] from its [VideoQuality]
VideoResolution videoQualityToResolution(VideoQuality quality) {
  var r = _resolutionMap[quality];
  if (r == null) {
    throw ArgumentError.value(quality, 'quality', 'Unrecognized video quality');
  }
  return r;
}

/// Parses the label as [VideoQuality]
/// Throws an [ArgumentError] if the string matches no video quality.
VideoQuality videoQualityFromLabel(String label) {
  label = label.toLowerCase();

  if (label.startsWith('144p')) {
    return VideoQuality.low144;
  }

  if (label.startsWith('240p')) {
    return VideoQuality.low144;
  }

  if (label.startsWith('360p')) {
    return VideoQuality.medium360;
  }

  if (label.startsWith('480p')) {
    return VideoQuality.medium480;
  }

  if (label.startsWith('720p')) {
    return VideoQuality.high720;
  }

  if (label.startsWith('1080p')) {
    return VideoQuality.high1080;
  }

  if (label.startsWith('1440p')) {
    return VideoQuality.high1440;
  }

  if (label.startsWith('2160p')) {
    return VideoQuality.high2160;
  }

  if (label.startsWith('2880p')) {
    return VideoQuality.high2880;
  }

  if (label.startsWith('3072p')) {
    return VideoQuality.high3072;
  }

  if (label.startsWith('4320p')) {
    return VideoQuality.high4320;
  }

  throw ArgumentError.value(label, 'label', 'Unrecognized video quality label');
}

/// Parses the playlist id as [PlaylistType]
/// Throws an [ArgumentError] if the string matches no playlist type.
PlaylistType playlistTypeFromId(String id) {
  id = id.toLowerCase();

  if (id.startsWith('pl')) {
    return PlaylistType.normal;
  }

  if (id.startsWith('rd')) {
    return PlaylistType.videoMix;
  }

  if (id.startsWith('ul')) {
    return PlaylistType.channelVideoMix;
  }

  if (id.startsWith('uu')) {
    return PlaylistType.channelVideos;
  }

  if (id.startsWith('pu')) {
    return PlaylistType.popularChannelVideos;
  }

  if (id.startsWith('ol')) {
    return PlaylistType.musicAlbum;
  }

  if (id.startsWith('ll')) {
    return PlaylistType.likedVideos;
  }

  if (id.startsWith('fl')) {
    return PlaylistType.favorites;
  }

  if (id.startsWith('ml')) {
    return PlaylistType.watchLater;
  }

  throw ArgumentError.value(id, 'id', 'Unrecognized playlist type');
}

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
