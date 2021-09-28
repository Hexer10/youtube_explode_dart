import '../../reverse_engineering/models/fragment.dart';
import 'streams.dart';

/// YouTube media stream that only contains audio.
class AudioOnlyStreamInfo extends AudioStreamInfo {
  AudioOnlyStreamInfo(
      int tag,
      Uri url,
      StreamContainer container,
      FileSize size,
      Bitrate bitrate,
      String audioCodec,
      List<Fragment> fragments)
      : super(tag, url, container, size, bitrate, audioCodec, fragments);

  @override
  String toString() => 'Audio-only ($tag | $container)';
}
