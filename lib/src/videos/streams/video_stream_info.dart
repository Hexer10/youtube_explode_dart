import 'streams.dart';

/// YouTube media stream that contains video.
abstract class VideoStreamInfo extends StreamInfo {
  /// Video codec.
  final String videoCodec;

  /// Video quality label, as seen on YouTube.
  final String videoQualityLabel;

  /// Video quality.
  final VideoQuality videoQuality;

  /// Video resolution.
  final VideoResolution videoResolution;

  /// Video framerate.
  final Framerate framerate;

  ///
  VideoStreamInfo(
      int tag,
      Uri url,
      Container container,
      FileSize size,
      Bitrate bitrate,
      this.videoCodec,
      this.videoQualityLabel,
      this.videoQuality,
      this.videoResolution,
      this.framerate)
      : super(tag, url, container, size, bitrate);
}

/// Extensions for Iterables of [VideoStreamInfo]
extension VideoStreamInfoExtension<T extends VideoStreamInfo> on Iterable<T> {
  /// Gets all video qualities available in a collection of video streams.
  Set<VideoQuality> getAllVideoQualities() =>
      map((e) => e.videoQuality).toSet();

  /// Gets video quality labels of all streams available in
  /// a collection of video streams.
  /// This could be longer than [getAllVideoQualities] since this gives also all
  /// the different framerate values.
  Set<String> getAllVideoQualitiesLabel() =>
      map((e) => e.videoQualityLabel).toSet();

  /// Gets the stream with best video quality.
  T withHighestBitrate() => sortByVideoQuality().last;

  /// Gets the video streams sorted by highest video quality
  /// (then by framerate) in ascending order.
  /// This returns new list without editing the original list.
  List<T> sortByVideoQuality() => toList()
    ..sort((a, b) => b.framerate.compareTo(a.framerate))
    ..sort((a, b) => b.videoQuality.index.compareTo(a.videoQuality.index));
}
