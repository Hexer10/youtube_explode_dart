import 'dart:collection';

import 'audio_stream_info.dart';
import 'stream_info.dart';
import 'streams.dart';

/// Manifest that contains information about available media streams
/// in a specific video.
class StreamManifest {
  /// Available streams.
  final UnmodifiableListView<StreamInfo> streams;

  /// Initializes an instance of [StreamManifest]
  StreamManifest(Iterable<StreamInfo> streams)
      : streams = UnmodifiableListView(streams);

  /// Gets streams that contain audio
  /// (which includes muxed and audio-only streams).
  Iterable<AudioStreamInfo> get audio => streams.whereType<AudioStreamInfo>();

  /// Gets streams that contain video
  /// (which includes muxed and video-only streams).
  Iterable<VideoStreamInfo> get video => streams.whereType<VideoStreamInfo>();

  /// Gets muxed streams (contain both audio and video).
  /// Note that muxed streams are limited in quality and don't go beyond 720p30.
  Iterable<MuxedStreamInfo> get muxed => streams.whereType<MuxedStreamInfo>();

  /// Gets audio-only streams (no video).
  Iterable<AudioOnlyStreamInfo> get audioOnly =>
      streams.whereType<AudioOnlyStreamInfo>();

  /// Gets video-only streams (no audio).
  /// These streams have the widest range of qualities available.
  Iterable<VideoOnlyStreamInfo> get videoOnly =>
      streams.whereType<VideoOnlyStreamInfo>();
}
