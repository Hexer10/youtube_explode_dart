// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Playlist {
  /// Playlist ID.
  PlaylistId get id => throw _privateConstructorUsedError;

  /// Playlist title.
  String get title => throw _privateConstructorUsedError;

  /// Playlist author.
  /// Can be null if it's a system playlist (e.g. Video Mix, Topics, etc.).
  String get author => throw _privateConstructorUsedError;

  /// Playlist description.
  String get description => throw _privateConstructorUsedError;

  /// Available thumbnails for this playlist.
  /// Can be null if the playlist is empty.
  ThumbnailSet get thumbnails => throw _privateConstructorUsedError;

  /// Engagement statistics.
  Engagement get engagement => throw _privateConstructorUsedError;

  /// Total videos in this playlist.
  int? get videoCount => throw _privateConstructorUsedError;

  /// Create a copy of Playlist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaylistCopyWith<Playlist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistCopyWith<$Res> {
  factory $PlaylistCopyWith(Playlist value, $Res Function(Playlist) then) =
      _$PlaylistCopyWithImpl<$Res, Playlist>;
  @useResult
  $Res call(
      {PlaylistId id,
      String title,
      String author,
      String description,
      ThumbnailSet thumbnails,
      Engagement engagement,
      int? videoCount});

  $PlaylistIdCopyWith<$Res> get id;
  $ThumbnailSetCopyWith<$Res> get thumbnails;
  $EngagementCopyWith<$Res> get engagement;
}

/// @nodoc
class _$PlaylistCopyWithImpl<$Res, $Val extends Playlist>
    implements $PlaylistCopyWith<$Res> {
  _$PlaylistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Playlist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
    Object? description = null,
    Object? thumbnails = null,
    Object? engagement = null,
    Object? videoCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as PlaylistId,
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
      thumbnails: null == thumbnails
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as ThumbnailSet,
      engagement: null == engagement
          ? _value.engagement
          : engagement // ignore: cast_nullable_to_non_nullable
              as Engagement,
      videoCount: freezed == videoCount
          ? _value.videoCount
          : videoCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of Playlist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlaylistIdCopyWith<$Res> get id {
    return $PlaylistIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  /// Create a copy of Playlist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThumbnailSetCopyWith<$Res> get thumbnails {
    return $ThumbnailSetCopyWith<$Res>(_value.thumbnails, (value) {
      return _then(_value.copyWith(thumbnails: value) as $Val);
    });
  }

  /// Create a copy of Playlist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EngagementCopyWith<$Res> get engagement {
    return $EngagementCopyWith<$Res>(_value.engagement, (value) {
      return _then(_value.copyWith(engagement: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlaylistImplCopyWith<$Res>
    implements $PlaylistCopyWith<$Res> {
  factory _$$PlaylistImplCopyWith(
          _$PlaylistImpl value, $Res Function(_$PlaylistImpl) then) =
      __$$PlaylistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PlaylistId id,
      String title,
      String author,
      String description,
      ThumbnailSet thumbnails,
      Engagement engagement,
      int? videoCount});

  @override
  $PlaylistIdCopyWith<$Res> get id;
  @override
  $ThumbnailSetCopyWith<$Res> get thumbnails;
  @override
  $EngagementCopyWith<$Res> get engagement;
}

/// @nodoc
class __$$PlaylistImplCopyWithImpl<$Res>
    extends _$PlaylistCopyWithImpl<$Res, _$PlaylistImpl>
    implements _$$PlaylistImplCopyWith<$Res> {
  __$$PlaylistImplCopyWithImpl(
      _$PlaylistImpl _value, $Res Function(_$PlaylistImpl) _then)
      : super(_value, _then);

  /// Create a copy of Playlist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
    Object? description = null,
    Object? thumbnails = null,
    Object? engagement = null,
    Object? videoCount = freezed,
  }) {
    return _then(_$PlaylistImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as PlaylistId,
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
      null == thumbnails
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as ThumbnailSet,
      null == engagement
          ? _value.engagement
          : engagement // ignore: cast_nullable_to_non_nullable
              as Engagement,
      freezed == videoCount
          ? _value.videoCount
          : videoCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$PlaylistImpl extends _Playlist {
  const _$PlaylistImpl(this.id, this.title, this.author, this.description,
      this.thumbnails, this.engagement, this.videoCount)
      : super._();

  /// Playlist ID.
  @override
  final PlaylistId id;

  /// Playlist title.
  @override
  final String title;

  /// Playlist author.
  /// Can be null if it's a system playlist (e.g. Video Mix, Topics, etc.).
  @override
  final String author;

  /// Playlist description.
  @override
  final String description;

  /// Available thumbnails for this playlist.
  /// Can be null if the playlist is empty.
  @override
  final ThumbnailSet thumbnails;

  /// Engagement statistics.
  @override
  final Engagement engagement;

  /// Total videos in this playlist.
  @override
  final int? videoCount;

  @override
  String toString() {
    return 'Playlist(id: $id, title: $title, author: $author, description: $description, thumbnails: $thumbnails, engagement: $engagement, videoCount: $videoCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.thumbnails, thumbnails) ||
                other.thumbnails == thumbnails) &&
            (identical(other.engagement, engagement) ||
                other.engagement == engagement) &&
            (identical(other.videoCount, videoCount) ||
                other.videoCount == videoCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, author, description,
      thumbnails, engagement, videoCount);

  /// Create a copy of Playlist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistImplCopyWith<_$PlaylistImpl> get copyWith =>
      __$$PlaylistImplCopyWithImpl<_$PlaylistImpl>(this, _$identity);
}

abstract class _Playlist extends Playlist {
  const factory _Playlist(
      final PlaylistId id,
      final String title,
      final String author,
      final String description,
      final ThumbnailSet thumbnails,
      final Engagement engagement,
      final int? videoCount) = _$PlaylistImpl;
  const _Playlist._() : super._();

  /// Playlist ID.
  @override
  PlaylistId get id;

  /// Playlist title.
  @override
  String get title;

  /// Playlist author.
  /// Can be null if it's a system playlist (e.g. Video Mix, Topics, etc.).
  @override
  String get author;

  /// Playlist description.
  @override
  String get description;

  /// Available thumbnails for this playlist.
  /// Can be null if the playlist is empty.
  @override
  ThumbnailSet get thumbnails;

  /// Engagement statistics.
  @override
  Engagement get engagement;

  /// Total videos in this playlist.
  @override
  int? get videoCount;

  /// Create a copy of Playlist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaylistImplCopyWith<_$PlaylistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
