import '../models.dart';

/// Metadata associated with a certain [MediaStream]that contains only video.
class VideoStreamInfo extends MediaStreamInfo {
  /// Bitrate (bits/s) of the associated stream.
  final int bitrate;

  /// Video encoding of the associated stream.
  final VideoEncoding videoEncoding;

  /// Video quality label of the associated stream.
  final String videoQualityLabel;

  /// Video quality of the associated stream.
  final VideoQuality videoQuality;

  /// Video resolution of the associated stream.
  final VideoResolution videoResolution;

  /// Video framerate (FPS) of the associated stream.
  final int framerate;

  /// Initializes an instance of [VideoStreamInfo]
  const VideoStreamInfo(
      int itag,
      Uri url,
      Container container,
      int size,
      this.bitrate,
      this.videoEncoding,
      this.videoQualityLabel,
      this.videoQuality,
      this.videoResolution,
      this.framerate)
      : super(itag, url, container, size);

  @override
  List<Object> get props => super.props
    ..addAll([
      bitrate,
      videoEncoding,
      videoQualityLabel,
      videoQuality,
      videoResolution,
      framerate
    ]);
}
