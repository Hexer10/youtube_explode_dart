// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, require_trailing_commas

part of 'closed_caption_part.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClosedCaptionPart _$ClosedCaptionPartFromJson(Map<String, dynamic> json) =>
    ClosedCaptionPart(
      json['text'] as String,
      Duration(microseconds: json['offset'] as int),
    );

Map<String, dynamic> _$ClosedCaptionPartToJson(ClosedCaptionPart instance) =>
    <String, dynamic>{
      'text': instance.text,
      'offset': instance.offset.inMicroseconds,
    };
