import '../models.dart';

/// Metadata associated with a certain [MediaStream] that contains only audio.
class AudioStreamInfo extends MediaStreamInfo {
  /// Bitrate (bits/s) of the associated stream.
  final int bitrate;

  /// Audio encoding of the associated stream.
  final AudioEncoding audioEncoding;

  /// Initializes an instance of [AudioStreamInfo]
  AudioStreamInfo(int tag, Uri url, Container container, int size, this.bitrate,
      this.audioEncoding)
      : super(tag, url, container, size);

  @override
  List<Object> get props => super.props..addAll([bitrate, audioEncoding]);
}
