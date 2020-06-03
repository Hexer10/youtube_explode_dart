import 'package:youtube_explode_dart/src/videos/streams/bitrate.dart';
import 'package:youtube_explode_dart/src/videos/streams/container.dart';
import 'package:youtube_explode_dart/src/videos/streams/filesize.dart';

import 'stream_info.dart';

/// YouTube media stream that contains audio.
abstract class AudioStreamInfo extends StreamInfo {
  /// Audio codec.
  final String audioCodec;

  ///
  AudioStreamInfo(int tag, Uri url, Container container, FileSize size,
      Bitrate bitrate, this.audioCodec)
      : super(tag, url, container, size, bitrate);
}
