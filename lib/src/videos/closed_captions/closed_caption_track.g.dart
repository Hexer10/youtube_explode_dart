// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'closed_caption_track.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClosedCaptionTrack _$ClosedCaptionTrackFromJson(Map<String, dynamic> json) {
  return ClosedCaptionTrack(
    (json['captions'] as List)?.map((e) =>
        e == null ? null : ClosedCaption.fromJson(e as Map<String, dynamic>)),
  );
}

Map<String, dynamic> _$ClosedCaptionTrackToJson(ClosedCaptionTrack instance) =>
    <String, dynamic>{
      'captions': instance.captions,
    };
