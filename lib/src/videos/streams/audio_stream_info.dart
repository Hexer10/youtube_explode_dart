import 'streams.dart';

/// YouTube media stream that contains audio.
mixin AudioStreamInfo on StreamInfo {
  String get audioCodec;
}
