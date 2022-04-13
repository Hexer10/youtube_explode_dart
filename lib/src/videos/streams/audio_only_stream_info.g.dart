// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_only_stream_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AudioOnlyStreamInfo _$AudioOnlyStreamInfoFromJson(Map<String, dynamic> json) =>
    AudioOnlyStreamInfo(
      json['tag'] as int,
      Uri.parse(json['url'] as String),
      StreamContainer.fromJson(json['container'] as Map<String, dynamic>),
      FileSize.fromJson(json['size'] as Map<String, dynamic>),
      Bitrate.fromJson(json['bitrate'] as Map<String, dynamic>),
      json['audioCodec'] as String,
      json['qualityLabel'] as String,
      (json['fragments'] as List<dynamic>)
          .map((e) => Fragment.fromJson(e as Map<String, dynamic>))
          .toList(),
      mediaTypeFromJson(json['codec'] as String),
    );

Map<String, dynamic> _$AudioOnlyStreamInfoToJson(
        AudioOnlyStreamInfo instance) =>
    <String, dynamic>{
      'tag': instance.tag,
      'url': instance.url.toString(),
      'container': instance.container,
      'size': instance.size,
      'bitrate': instance.bitrate,
      'audioCodec': instance.audioCodec,
      'codec': mediaTypeToJson(instance.codec),
      'fragments': instance.fragments,
      'qualityLabel': instance.qualityLabel,
    };
