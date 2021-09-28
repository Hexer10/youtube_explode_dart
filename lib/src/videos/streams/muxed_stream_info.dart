import '../../reverse_engineering/models/fragment.dart';
import 'audio_stream_info.dart';
import 'bitrate.dart';
import 'filesize.dart';
import 'framerate.dart';
import 'stream_container.dart';
import 'video_quality.dart';
import 'video_resolution.dart';
import 'video_stream_info.dart';

/// YouTube media stream that contains both audio and video.
class MuxedStreamInfo implements AudioStreamInfo, VideoStreamInfo {
  @override
  final int tag;

  @override
  final Uri url;

  @override
  final StreamContainer container;

  @override
  final FileSize size;

  @override
  final Bitrate bitrate;

  @override
  final String audioCodec;

  @override
  final String videoCodec;

  /// Video quality label, as seen on YouTube.
  @override
  final String videoQualityLabel;

  /// Video quality.
  @override
  final VideoQuality videoQuality;

  /// Video resolution.
  @override
  final VideoResolution videoResolution;

  /// Video framerate.
  @override
  final Framerate framerate;

  /// Muxed streams never have fragments.
  @override
  List<Fragment> get fragments => const [];

  /// Initializes an instance of [MuxedStreamInfo]
  MuxedStreamInfo(
      this.tag,
      this.url,
      this.container,
      this.size,
      this.bitrate,
      this.audioCodec,
      this.videoCodec,
      this.videoQualityLabel,
      this.videoQuality,
      this.videoResolution,
      this.framerate);

  @override
  String toString() => 'Muxed ($tag | $videoQualityLabel | $container)';
}
