// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_video.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChannelVideo {
  /// Video ID.
  VideoId get videoId => throw _privateConstructorUsedError;

  /// Video title.
  String get videoTitle => throw _privateConstructorUsedError;

  /// Video duration
  Duration get videoDuration => throw _privateConstructorUsedError;

  /// Video thumbnail
  String get videoThumbnail => throw _privateConstructorUsedError;

  /// Video upload date.
  /// Formatted like 10 hours ago
  String get videoUploadDate => throw _privateConstructorUsedError;

  /// Video view count.
  int get videoViews => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChannelVideoCopyWith<ChannelVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelVideoCopyWith<$Res> {
  factory $ChannelVideoCopyWith(
          ChannelVideo value, $Res Function(ChannelVideo) then) =
      _$ChannelVideoCopyWithImpl<$Res, ChannelVideo>;
  @useResult
  $Res call(
      {VideoId videoId,
      String videoTitle,
      Duration videoDuration,
      String videoThumbnail,
      String videoUploadDate,
      int videoViews});

  $VideoIdCopyWith<$Res> get videoId;
}

/// @nodoc
class _$ChannelVideoCopyWithImpl<$Res, $Val extends ChannelVideo>
    implements $ChannelVideoCopyWith<$Res> {
  _$ChannelVideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
    Object? videoTitle = null,
    Object? videoDuration = null,
    Object? videoThumbnail = null,
    Object? videoUploadDate = null,
    Object? videoViews = null,
  }) {
    return _then(_value.copyWith(
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as VideoId,
      videoTitle: null == videoTitle
          ? _value.videoTitle
          : videoTitle // ignore: cast_nullable_to_non_nullable
              as String,
      videoDuration: null == videoDuration
          ? _value.videoDuration
          : videoDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      videoThumbnail: null == videoThumbnail
          ? _value.videoThumbnail
          : videoThumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      videoUploadDate: null == videoUploadDate
          ? _value.videoUploadDate
          : videoUploadDate // ignore: cast_nullable_to_non_nullable
              as String,
      videoViews: null == videoViews
          ? _value.videoViews
          : videoViews // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VideoIdCopyWith<$Res> get videoId {
    return $VideoIdCopyWith<$Res>(_value.videoId, (value) {
      return _then(_value.copyWith(videoId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChannelVideoCopyWith<$Res>
    implements $ChannelVideoCopyWith<$Res> {
  factory _$$_ChannelVideoCopyWith(
          _$_ChannelVideo value, $Res Function(_$_ChannelVideo) then) =
      __$$_ChannelVideoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VideoId videoId,
      String videoTitle,
      Duration videoDuration,
      String videoThumbnail,
      String videoUploadDate,
      int videoViews});

  @override
  $VideoIdCopyWith<$Res> get videoId;
}

/// @nodoc
class __$$_ChannelVideoCopyWithImpl<$Res>
    extends _$ChannelVideoCopyWithImpl<$Res, _$_ChannelVideo>
    implements _$$_ChannelVideoCopyWith<$Res> {
  __$$_ChannelVideoCopyWithImpl(
      _$_ChannelVideo _value, $Res Function(_$_ChannelVideo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
    Object? videoTitle = null,
    Object? videoDuration = null,
    Object? videoThumbnail = null,
    Object? videoUploadDate = null,
    Object? videoViews = null,
  }) {
    return _then(_$_ChannelVideo(
      null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as VideoId,
      null == videoTitle
          ? _value.videoTitle
          : videoTitle // ignore: cast_nullable_to_non_nullable
              as String,
      null == videoDuration
          ? _value.videoDuration
          : videoDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      null == videoThumbnail
          ? _value.videoThumbnail
          : videoThumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      null == videoUploadDate
          ? _value.videoUploadDate
          : videoUploadDate // ignore: cast_nullable_to_non_nullable
              as String,
      null == videoViews
          ? _value.videoViews
          : videoViews // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChannelVideo implements _ChannelVideo {
  const _$_ChannelVideo(this.videoId, this.videoTitle, this.videoDuration,
      this.videoThumbnail, this.videoUploadDate, this.videoViews);

  /// Video ID.
  @override
  final VideoId videoId;

  /// Video title.
  @override
  final String videoTitle;

  /// Video duration
  @override
  final Duration videoDuration;

  /// Video thumbnail
  @override
  final String videoThumbnail;

  /// Video upload date.
  /// Formatted like 10 hours ago
  @override
  final String videoUploadDate;

  /// Video view count.
  @override
  final int videoViews;

  @override
  String toString() {
    return 'ChannelVideo(videoId: $videoId, videoTitle: $videoTitle, videoDuration: $videoDuration, videoThumbnail: $videoThumbnail, videoUploadDate: $videoUploadDate, videoViews: $videoViews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChannelVideo &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.videoTitle, videoTitle) ||
                other.videoTitle == videoTitle) &&
            (identical(other.videoDuration, videoDuration) ||
                other.videoDuration == videoDuration) &&
            (identical(other.videoThumbnail, videoThumbnail) ||
                other.videoThumbnail == videoThumbnail) &&
            (identical(other.videoUploadDate, videoUploadDate) ||
                other.videoUploadDate == videoUploadDate) &&
            (identical(other.videoViews, videoViews) ||
                other.videoViews == videoViews));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoId, videoTitle,
      videoDuration, videoThumbnail, videoUploadDate, videoViews);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChannelVideoCopyWith<_$_ChannelVideo> get copyWith =>
      __$$_ChannelVideoCopyWithImpl<_$_ChannelVideo>(this, _$identity);
}

abstract class _ChannelVideo implements ChannelVideo {
  const factory _ChannelVideo(
      final VideoId videoId,
      final String videoTitle,
      final Duration videoDuration,
      final String videoThumbnail,
      final String videoUploadDate,
      final int videoViews) = _$_ChannelVideo;

  @override

  /// Video ID.
  VideoId get videoId;
  @override

  /// Video title.
  String get videoTitle;
  @override

  /// Video duration
  Duration get videoDuration;
  @override

  /// Video thumbnail
  String get videoThumbnail;
  @override

  /// Video upload date.
  /// Formatted like 10 hours ago
  String get videoUploadDate;
  @override

  /// Video view count.
  int get videoViews;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelVideoCopyWith<_$_ChannelVideo> get copyWith =>
      throw _privateConstructorUsedError;
}
