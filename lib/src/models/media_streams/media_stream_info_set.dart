import 'package:equatable/equatable.dart';

import '../models.dart';

/// Set of all available media stream infos.
class MediaStreamInfoSet extends Equatable {
  /// Muxed streams.
  final List<MuxedStreamInfo> muxed;

  /// Audio-only streams.
  final List<AudioStreamInfo> audio;

  /// Video-only streams.
  final List<VideoStreamInfo> video;

  /// Raw HTTP Live Streaming (HLS) URL to the m3u8 playlist.
  /// Null if not a live stream.
  final String hlsLiveStreamUrl;

  /// Video details associated with the stream info set.
  /// Some values might be null.
  final Video videoDetails;

  /// Date until this media set is valid.
  final DateTime validUntil;

  /// Initializes an instance of [MediaStreamInfoSet].
  const MediaStreamInfoSet(this.muxed, this.audio, this.video,
      this.hlsLiveStreamUrl, this.videoDetails, this.validUntil);

  @override
  List<Object> get props =>
      [muxed, audio, video, hlsLiveStreamUrl, videoDetails, validUntil];
}
