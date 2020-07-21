import 'bitrate.dart';
import 'container.dart';
import 'filesize.dart';
import 'framerate.dart';
import 'video_quality.dart';
import 'video_resolution.dart';
import 'video_stream_info.dart';

/// YouTube media stream that only contains video.
class VideoOnlyStreamInfo implements VideoStreamInfo {
  @override
  final int tag;

  @override
  final Uri url;

  @override
  final Container container;

  @override
  final FileSize size;

  @override
  final Bitrate bitrate;

  @override
  final String videoCodec;

  @override
  final String videoQualityLabel;

  @override
  final VideoQuality videoQuality;

  @override
  final VideoResolution videoResolution;

  @override
  final Framerate framerate;

  /// Initializes an instance of [VideoOnlyStreamInfo]
  VideoOnlyStreamInfo(
      this.tag,
      this.url,
      this.container,
      this.size,
      this.bitrate,
      this.videoCodec,
      this.videoQualityLabel,
      this.videoQuality,
      this.videoResolution,
      this.framerate);

  @override
  String toString() => 'Video-only ($tag | $videoQualityLabel | $container)';
}
