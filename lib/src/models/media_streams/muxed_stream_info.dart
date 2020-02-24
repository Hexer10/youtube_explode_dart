import '../models.dart';

/// Metadata associated with a certain [MediaStream]
/// that contains both audio and video.
class MuxedStreamInfo extends MediaStreamInfo {
  /// Audio encoding of the associated stream.
  final AudioEncoding audioEncoding;

  /// Video encoding of the associated stream.
  final VideoEncoding videoEncoding;

  /// Video quality label of the associated stream.
  final String videoQualityLabel;

  /// Video quality of the associated stream.
  final VideoQuality videoQuality;

  /// Video resolution of the associated stream.
  final VideoResolution videoResolution;

  /// Initializes an instance of [MuxedStreamInfo]
  const MuxedStreamInfo(
      int itag,
      Uri url,
      Container container,
      int size,
      this.audioEncoding,
      this.videoEncoding,
      this.videoQualityLabel,
      this.videoQuality,
      this.videoResolution)
      : super(itag, url, container, size);

  @override
  List<Object> get props => super.props
    ..addAll([
      audioEncoding,
      videoEncoding,
      videoQualityLabel,
      videoQuality,
      videoResolution
    ]);
}
