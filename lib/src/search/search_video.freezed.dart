// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_video.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchVideoTearOff {
  const _$SearchVideoTearOff();

  _SearchVideo call(
      VideoId id,
      String title,
      String author,
      String description,
      String duration,
      int viewCount,
      List<Thumbnail> thumbnails,
      String? uploadDate,
      bool isLive,
      String channelId) {
    return _SearchVideo(
      id,
      title,
      author,
      description,
      duration,
      viewCount,
      thumbnails,
      uploadDate,
      isLive,
      channelId,
    );
  }
}

/// @nodoc
const $SearchVideo = _$SearchVideoTearOff();

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
      _$SearchVideoCopyWithImpl<$Res>;
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
class _$SearchVideoCopyWithImpl<$Res> implements $SearchVideoCopyWith<$Res> {
  _$SearchVideoCopyWithImpl(this._value, this._then);

  final SearchVideo _value;
  // ignore: unused_field
  final $Res Function(SearchVideo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? author = freezed,
    Object? description = freezed,
    Object? duration = freezed,
    Object? viewCount = freezed,
    Object? thumbnails = freezed,
    Object? uploadDate = freezed,
    Object? isLive = freezed,
    Object? channelId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as VideoId,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      viewCount: viewCount == freezed
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<Thumbnail>,
      uploadDate: uploadDate == freezed
          ? _value.uploadDate
          : uploadDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isLive: isLive == freezed
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool,
      channelId: channelId == freezed
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $VideoIdCopyWith<$Res> get id {
    return $VideoIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value));
    });
  }
}

/// @nodoc
abstract class _$SearchVideoCopyWith<$Res>
    implements $SearchVideoCopyWith<$Res> {
  factory _$SearchVideoCopyWith(
          _SearchVideo value, $Res Function(_SearchVideo) then) =
      __$SearchVideoCopyWithImpl<$Res>;
  @override
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
class __$SearchVideoCopyWithImpl<$Res> extends _$SearchVideoCopyWithImpl<$Res>
    implements _$SearchVideoCopyWith<$Res> {
  __$SearchVideoCopyWithImpl(
      _SearchVideo _value, $Res Function(_SearchVideo) _then)
      : super(_value, (v) => _then(v as _SearchVideo));

  @override
  _SearchVideo get _value => super._value as _SearchVideo;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? author = freezed,
    Object? description = freezed,
    Object? duration = freezed,
    Object? viewCount = freezed,
    Object? thumbnails = freezed,
    Object? uploadDate = freezed,
    Object? isLive = freezed,
    Object? channelId = freezed,
  }) {
    return _then(_SearchVideo(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as VideoId,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      viewCount == freezed
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<Thumbnail>,
      uploadDate == freezed
          ? _value.uploadDate
          : uploadDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isLive == freezed
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool,
      channelId == freezed
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
      this.thumbnails,
      this.uploadDate,
      this.isLive,
      this.channelId);

  @override

  /// Video ID.
  final VideoId id;
  @override

  /// Video title.
  final String title;
  @override

  /// Video author.
  final String author;
  @override

  /// Video description snippet. (Part of the full description if too long)
  final String description;
  @override

  /// Video duration as String, HH:MM:SS
  final String duration;
  @override

  /// Video View Count
  final int viewCount;
  @override

  /// Video thumbnail
  final List<Thumbnail> thumbnails;
  @override

  /// Video upload date - As string: 5 years ago.
  final String? uploadDate;
  @override

  /// True if this video is a live stream.
// ignore: avoid_positional_boolean_parameters
  final bool isLive;
  @override

  /// Channel id
  final String channelId;

  @override
  String toString() {
    return 'SearchVideo(id: $id, title: $title, author: $author, description: $description, duration: $duration, viewCount: $viewCount, thumbnails: $thumbnails, uploadDate: $uploadDate, isLive: $isLive, channelId: $channelId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchVideo &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.viewCount, viewCount) &&
            const DeepCollectionEquality()
                .equals(other.thumbnails, thumbnails) &&
            const DeepCollectionEquality()
                .equals(other.uploadDate, uploadDate) &&
            const DeepCollectionEquality().equals(other.isLive, isLive) &&
            const DeepCollectionEquality().equals(other.channelId, channelId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(viewCount),
      const DeepCollectionEquality().hash(thumbnails),
      const DeepCollectionEquality().hash(uploadDate),
      const DeepCollectionEquality().hash(isLive),
      const DeepCollectionEquality().hash(channelId));

  @JsonKey(ignore: true)
  @override
  _$SearchVideoCopyWith<_SearchVideo> get copyWith =>
      __$SearchVideoCopyWithImpl<_SearchVideo>(this, _$identity);
}

abstract class _SearchVideo implements SearchVideo {
  const factory _SearchVideo(
      VideoId id,
      String title,
      String author,
      String description,
      String duration,
      int viewCount,
      List<Thumbnail> thumbnails,
      String? uploadDate,
      bool isLive,
      String channelId) = _$_SearchVideo;

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
  _$SearchVideoCopyWith<_SearchVideo> get copyWith =>
      throw _privateConstructorUsedError;
}
