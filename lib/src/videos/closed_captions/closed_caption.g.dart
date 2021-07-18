// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'closed_caption.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClosedCaption _$ClosedCaptionFromJson(Map<String, dynamic> json) =>
    ClosedCaption(
      json['text'] as String,
      Duration(microseconds: json['offset'] as int),
      Duration(microseconds: json['duration'] as int),
      (json['parts'] as List<dynamic>)
          .map((e) => ClosedCaptionPart.fromJson(e as Map<String, dynamic>)),
    );

Map<String, dynamic> _$ClosedCaptionToJson(ClosedCaption instance) =>
    <String, dynamic>{
      'text': instance.text,
      'offset': instance.offset.inMicroseconds,
      'duration': instance.duration.inMicroseconds,
      'parts': instance.parts,
    };
