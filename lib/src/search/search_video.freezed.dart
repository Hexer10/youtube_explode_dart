// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_video.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchVideo {
  /// Video ID.
  VideoId get id => throw _privateConstructorUsedError;

  /// Video title.
  String get title => throw _privateConstructorUsedError;

  /// Video author.
  String get author => throw _privateConstructorUsedError;

  /// Video description snippet. (Part of the full description if too long)
  String get description => throw _privateConstructorUsedError;

  /// Video duration as String, HH:MM:SS
  String get duration => throw _privateConstructorUsedError;

  /// Video View Count
  int get viewCount => throw _privateConstructorUsedError;

  /// Video thumbnail
  List<Thumbnail> get thumbnails => throw _privateConstructorUsedError;

  /// Video upload date - As string: 5 years ago.
  String? get uploadDate => throw _privateConstructorUsedError;

  /// True if this video is a live stream.
// ignore: avoid_positional_boolean_parameters
  bool get isLive => throw _privateConstructorUsedError;

  /// Channel id
  String get channelId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchVideoCopyWith<SearchVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchVideoCopyWith<$Res> {
  factory $SearchVideoCopyWith(
          SearchVideo value, $Res Function(SearchVideo) then) =
      _$SearchVideoCopyWithImpl<$Res, SearchVideo>;
  @useResult
  $Res call(
      {VideoId id,
      String title,
      String author,
      String description,
      String duration,
      int viewCount,
      List<Thumbnail> thumbnails,
      String? uploadDate,
      bool isLive,
      String channelId});

  $VideoIdCopyWith<$Res> get id;
}

/// @nodoc
class _$SearchVideoCopyWithImpl<$Res, $Val extends SearchVideo>
    implements $SearchVideoCopyWith<$Res> {
  _$SearchVideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
    Object? description = null,
    Object? duration = null,
    Object? viewCount = null,
    Object? thumbnails = null,
    Object? uploadDate = freezed,
    Object? isLive = null,
    Object? channelId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as VideoId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnails: null == thumbnails
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<Thumbnail>,
      uploadDate: freezed == uploadDate
          ? _value.uploadDate
          : uploadDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isLive: null == isLive
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool,
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VideoIdCopyWith<$Res> get id {
    return $VideoIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SearchVideoCopyWith<$Res>
    implements $SearchVideoCopyWith<$Res> {
  factory _$$_SearchVideoCopyWith(
          _$_SearchVideo value, $Res Function(_$_SearchVideo) then) =
      __$$_SearchVideoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VideoId id,
      String title,
      String author,
      String description,
      String duration,
      int viewCount,
      List<Thumbnail> thumbnails,
      String? uploadDate,
      bool isLive,
      String channelId});

  @override
  $VideoIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$_SearchVideoCopyWithImpl<$Res>
    extends _$SearchVideoCopyWithImpl<$Res, _$_SearchVideo>
    implements _$$_SearchVideoCopyWith<$Res> {
  __$$_SearchVideoCopyWithImpl(
      _$_SearchVideo _value, $Res Function(_$_SearchVideo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
    Object? description = null,
    Object? duration = null,
    Object? viewCount = null,
    Object? thumbnails = null,
    Object? uploadDate = freezed,
    Object? isLive = null,
    Object? channelId = null,
  }) {
    return _then(_$_SearchVideo(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as VideoId,
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      null == thumbnails
          ? _value._thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<Thumbnail>,
      freezed == uploadDate
          ? _value.uploadDate
          : uploadDate // ignore: cast_nullable_to_non_nullable
              as String?,
      null == isLive
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool,
      null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchVideo implements _SearchVideo {
  const _$_SearchVideo(
      this.id,
      this.title,
      this.author,
      this.description,
      this.duration,
      this.viewCount,
      final List<Thumbnail> thumbnails,
      this.uploadDate,
      this.isLive,
      this.channelId)
      : _thumbnails = thumbnails;

  /// Video ID.
  @override
  final VideoId id;

  /// Video title.
  @override
  final String title;

  /// Video author.
  @override
  final String author;

  /// Video description snippet. (Part of the full description if too long)
  @override
  final String description;

  /// Video duration as String, HH:MM:SS
  @override
  final String duration;

  /// Video View Count
  @override
  final int viewCount;

  /// Video thumbnail
  final List<Thumbnail> _thumbnails;

  /// Video thumbnail
  @override
  List<Thumbnail> get thumbnails {
    if (_thumbnails is EqualUnmodifiableListView) return _thumbnails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_thumbnails);
  }

  /// Video upload date - As string: 5 years ago.
  @override
  final String? uploadDate;

  /// True if this video is a live stream.
// ignore: avoid_positional_boolean_parameters
  @override
  final bool isLive;

  /// Channel id
  @override
  final String channelId;

  @override
  String toString() {
    return 'SearchVideo(id: $id, title: $title, author: $author, description: $description, duration: $duration, viewCount: $viewCount, thumbnails: $thumbnails, uploadDate: $uploadDate, isLive: $isLive, channelId: $channelId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchVideo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            const DeepCollectionEquality()
                .equals(other._thumbnails, _thumbnails) &&
            (identical(other.uploadDate, uploadDate) ||
                other.uploadDate == uploadDate) &&
            (identical(other.isLive, isLive) || other.isLive == isLive) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      author,
      description,
      duration,
      viewCount,
      const DeepCollectionEquality().hash(_thumbnails),
      uploadDate,
      isLive,
      channelId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchVideoCopyWith<_$_SearchVideo> get copyWith =>
      __$$_SearchVideoCopyWithImpl<_$_SearchVideo>(this, _$identity);
}

abstract class _SearchVideo implements SearchVideo {
  const factory _SearchVideo(
      final VideoId id,
      final String title,
      final String author,
      final String description,
      final String duration,
      final int viewCount,
      final List<Thumbnail> thumbnails,
      final String? uploadDate,
      final bool isLive,
      final String channelId) = _$_SearchVideo;

  @override

  /// Video ID.
  VideoId get id;
  @override

  /// Video title.
  String get title;
  @override

  /// Video author.
  String get author;
  @override

  /// Video description snippet. (Part of the full description if too long)
  String get description;
  @override

  /// Video duration as String, HH:MM:SS
  String get duration;
  @override

  /// Video View Count
  int get viewCount;
  @override

  /// Video thumbnail
  List<Thumbnail> get thumbnails;
  @override

  /// Video upload date - As string: 5 years ago.
  String? get uploadDate;
  @override

  /// True if this video is a live stream.
// ignore: avoid_positional_boolean_parameters
  bool get isLive;
  @override

  /// Channel id
  String get channelId;
  @override
  @JsonKey(ignore: true)
  _$$_SearchVideoCopyWith<_$_SearchVideo> get copyWith =>
      throw _privateConstructorUsedError;
}
