import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_parser/http_parser.dart';

import '../../../../../youtube_explode_dart.dart';
import '../../../../reverse_engineering/models/fragment.dart';
import '../../mixins/hls_stream_info.dart';
import '../../mixins/stream_info.dart';
import '../../models/audio_track.dart';

part 'hls_audio_stream_info.g.dart';

/// YouTube media stream that contains both audio and video, in HLS format.
/// This is not directly downloadable but returns a file with a list of the video fragments urls.
@JsonSerializable()
class HlsAudioStreamInfo with StreamInfo, AudioStreamInfo, HlsStreamInfo {
  @override
  final VideoId videoId;

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

  /// This is always empty for hls streams
  @override
  List<Fragment> get fragments => const [];

  /// Stream codec.
  @override
  @JsonKey(toJson: mediaTypeToJson, fromJson: mediaTypeFromJson)
  final MediaType codec;

  /// Stream codec.
  @override
  final String qualityLabel;

  /// Initializes an instance of [HlsAudioStreamInfo]
  HlsAudioStreamInfo(
      this.videoId,
      this.tag,
      this.url,
      this.container,
      this.size,
      this.bitrate,
      this.audioCodec,
      this.qualityLabel,
      this.codec,
      );

  @override
  String toString() =>
      '[HLS] Audio-only ($tag | $container)';

  factory HlsAudioStreamInfo.fromJson(Map<String, dynamic> json) =>
      _$HlsAudioStreamInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$HlsAudioStreamInfoToJson(this);

  /// Hls streams do not provide info about the language.
  @override
  AudioTrack? get audioTrack => null;
}
