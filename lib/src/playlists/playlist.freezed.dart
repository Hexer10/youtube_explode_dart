// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'playlist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlaylistTearOff {
  const _$PlaylistTearOff();

  _Playlist call(PlaylistId id, String title, String author, String description,
      ThumbnailSet thumbnails, Engagement engagement, int? videoCount) {
    return _Playlist(
      id,
      title,
      author,
      description,
      thumbnails,
      engagement,
      videoCount,
    );
  }
}

/// @nodoc
const $Playlist = _$PlaylistTearOff();

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

  @JsonKey(ignore: true)
  $PlaylistCopyWith<Playlist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistCopyWith<$Res> {
  factory $PlaylistCopyWith(Playlist value, $Res Function(Playlist) then) =
      _$PlaylistCopyWithImpl<$Res>;
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
class _$PlaylistCopyWithImpl<$Res> implements $PlaylistCopyWith<$Res> {
  _$PlaylistCopyWithImpl(this._value, this._then);

  final Playlist _value;
  // ignore: unused_field
  final $Res Function(Playlist) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? author = freezed,
    Object? description = freezed,
    Object? thumbnails = freezed,
    Object? engagement = freezed,
    Object? videoCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as PlaylistId,
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
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as ThumbnailSet,
      engagement: engagement == freezed
          ? _value.engagement
          : engagement // ignore: cast_nullable_to_non_nullable
              as Engagement,
      videoCount: videoCount == freezed
          ? _value.videoCount
          : videoCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $PlaylistIdCopyWith<$Res> get id {
    return $PlaylistIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value));
    });
  }

  @override
  $ThumbnailSetCopyWith<$Res> get thumbnails {
    return $ThumbnailSetCopyWith<$Res>(_value.thumbnails, (value) {
      return _then(_value.copyWith(thumbnails: value));
    });
  }

  @override
  $EngagementCopyWith<$Res> get engagement {
    return $EngagementCopyWith<$Res>(_value.engagement, (value) {
      return _then(_value.copyWith(engagement: value));
    });
  }
}

/// @nodoc
abstract class _$PlaylistCopyWith<$Res> implements $PlaylistCopyWith<$Res> {
  factory _$PlaylistCopyWith(_Playlist value, $Res Function(_Playlist) then) =
      __$PlaylistCopyWithImpl<$Res>;
  @override
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
class __$PlaylistCopyWithImpl<$Res> extends _$PlaylistCopyWithImpl<$Res>
    implements _$PlaylistCopyWith<$Res> {
  __$PlaylistCopyWithImpl(_Playlist _value, $Res Function(_Playlist) _then)
      : super(_value, (v) => _then(v as _Playlist));

  @override
  _Playlist get _value => super._value as _Playlist;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? author = freezed,
    Object? description = freezed,
    Object? thumbnails = freezed,
    Object? engagement = freezed,
    Object? videoCount = freezed,
  }) {
    return _then(_Playlist(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as PlaylistId,
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
      thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as ThumbnailSet,
      engagement == freezed
          ? _value.engagement
          : engagement // ignore: cast_nullable_to_non_nullable
              as Engagement,
      videoCount == freezed
          ? _value.videoCount
          : videoCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_Playlist extends _Playlist {
  const _$_Playlist(this.id, this.title, this.author, this.description,
      this.thumbnails, this.engagement, this.videoCount)
      : super._();

  @override

  /// Playlist ID.
  final PlaylistId id;
  @override

  /// Playlist title.
  final String title;
  @override

  /// Playlist author.
  /// Can be null if it's a system playlist (e.g. Video Mix, Topics, etc.).
  final String author;
  @override

  /// Playlist description.
  final String description;
  @override

  /// Available thumbnails for this playlist.
  /// Can be null if the playlist is empty.
  final ThumbnailSet thumbnails;
  @override

  /// Engagement statistics.
  final Engagement engagement;
  @override

  /// Total videos in this playlist.
  final int? videoCount;

  @override
  String toString() {
    return 'Playlist(id: $id, title: $title, author: $author, description: $description, thumbnails: $thumbnails, engagement: $engagement, videoCount: $videoCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Playlist &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.thumbnails, thumbnails) &&
            const DeepCollectionEquality()
                .equals(other.engagement, engagement) &&
            const DeepCollectionEquality()
                .equals(other.videoCount, videoCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(thumbnails),
      const DeepCollectionEquality().hash(engagement),
      const DeepCollectionEquality().hash(videoCount));

  @JsonKey(ignore: true)
  @override
  _$PlaylistCopyWith<_Playlist> get copyWith =>
      __$PlaylistCopyWithImpl<_Playlist>(this, _$identity);
}

abstract class _Playlist extends Playlist {
  const factory _Playlist(
      PlaylistId id,
      String title,
      String author,
      String description,
      ThumbnailSet thumbnails,
      Engagement engagement,
      int? videoCount) = _$_Playlist;
  const _Playlist._() : super._();

  @override

  /// Playlist ID.
  PlaylistId get id;
  @override

  /// Playlist title.
  String get title;
  @override

  /// Playlist author.
  /// Can be null if it's a system playlist (e.g. Video Mix, Topics, etc.).
  String get author;
  @override

  /// Playlist description.
  String get description;
  @override

  /// Available thumbnails for this playlist.
  /// Can be null if the playlist is empty.
  ThumbnailSet get thumbnails;
  @override

  /// Engagement statistics.
  Engagement get engagement;
  @override

  /// Total videos in this playlist.
  int? get videoCount;
  @override
  @JsonKey(ignore: true)
  _$PlaylistCopyWith<_Playlist> get copyWith =>
      throw _privateConstructorUsedError;
}
