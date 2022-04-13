import 'package:http_parser/http_parser.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../reverse_engineering/models/fragment.dart';
import 'stream_info.dart';
import 'streams.dart';

part 'audio_only_stream_info.g.dart';

/// YouTube media stream that only contains audio.
@JsonSerializable()
class AudioOnlyStreamInfo with StreamInfo, AudioStreamInfo {
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
  @JsonKey(toJson: mediaTypeToJson, fromJson: mediaTypeFromJson)
  final MediaType codec;

  @override
  final List<Fragment> fragments;

  @override
  final String qualityLabel;

  AudioOnlyStreamInfo(
      this.tag,
      this.url,
      this.container,
      this.size,
      this.bitrate,
      this.audioCodec,
      this.qualityLabel,
      this.fragments,
      this.codec);

  @override
  String toString() => 'Audio-only ($tag | $container)';

  factory AudioOnlyStreamInfo.fromJson(Map<String, dynamic> json) =>
      _$AudioOnlyStreamInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AudioOnlyStreamInfoToJson(this);
}
