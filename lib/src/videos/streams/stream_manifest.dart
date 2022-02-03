import 'dart:collection';

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
  late final UnmodifiableListView<AudioStreamInfo> audio =
      UnmodifiableListView(streams.whereType<AudioStreamInfo>());

  /// Gets streams that contain video
  /// (which includes muxed and video-only streams).
  late final UnmodifiableListView<VideoStreamInfo> video =
      UnmodifiableListView(streams.whereType<VideoStreamInfo>());

  /// Gets muxed streams (contain both audio and video).
  /// Note that muxed streams are limited in quality and don't go beyond 720p30.
  late final UnmodifiableListView<MuxedStreamInfo> muxed =
      UnmodifiableListView(streams.whereType<MuxedStreamInfo>());

  /// Gets audio-only streams (no video).
  late final UnmodifiableListView<AudioOnlyStreamInfo> audioOnly =
      UnmodifiableListView(streams.whereType<AudioOnlyStreamInfo>());

  /// Gets video-only streams (no audio).
  /// These streams have the widest range of qualities available.
  late final UnmodifiableListView<VideoOnlyStreamInfo> videoOnly =
      UnmodifiableListView(streams.whereType<VideoOnlyStreamInfo>());

  @override
  String toString() => streams.describe();
}
