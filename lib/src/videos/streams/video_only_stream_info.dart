import '../../reverse_engineering/models/fragment.dart';
import 'bitrate.dart';
import 'filesize.dart';
import 'framerate.dart';
import 'stream_container.dart';
import 'video_quality.dart';
import 'video_resolution.dart';
import 'video_stream_info.dart';

/// YouTube media stream that only contains video.
class VideoOnlyStreamInfo extends VideoStreamInfo {
  VideoOnlyStreamInfo(
      int tag,
      Uri url,
      StreamContainer container,
      FileSize size,
      Bitrate bitrate,
      String videoCodec,
      String videoQualityLabel,
      VideoQuality videoQuality,
      VideoResolution videoResolution,
      Framerate framerate,
      List<Fragment> fragments)
      : super(tag, url, container, size, bitrate, videoCodec, videoQualityLabel,
            videoQuality, videoResolution, framerate, fragments);

  @override
  String toString() => 'Video-only ($tag | $videoResolution | $container)';
}
