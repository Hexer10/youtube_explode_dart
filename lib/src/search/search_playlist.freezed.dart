// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_playlist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchPlaylist {
  /// PlaylistId.
  PlaylistId get playlistId => throw _privateConstructorUsedError;

  /// Playlist title.
  String get playlistTitle => throw _privateConstructorUsedError;

  /// Playlist video count, cannot be greater than 50.
  int get playlistVideoCount => throw _privateConstructorUsedError;

  /// Video thumbnail
  List<Thumbnail> get thumbnails => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchPlaylistCopyWith<SearchPlaylist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPlaylistCopyWith<$Res> {
  factory $SearchPlaylistCopyWith(
          SearchPlaylist value, $Res Function(SearchPlaylist) then) =
      _$SearchPlaylistCopyWithImpl<$Res, SearchPlaylist>;
  @useResult
  $Res call(
      {PlaylistId playlistId,
      String playlistTitle,
      int playlistVideoCount,
      List<Thumbnail> thumbnails});

  $PlaylistIdCopyWith<$Res> get playlistId;
}

/// @nodoc
class _$SearchPlaylistCopyWithImpl<$Res, $Val extends SearchPlaylist>
    implements $SearchPlaylistCopyWith<$Res> {
  _$SearchPlaylistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlistId = null,
    Object? playlistTitle = null,
    Object? playlistVideoCount = null,
    Object? thumbnails = null,
  }) {
    return _then(_value.copyWith(
      playlistId: null == playlistId
          ? _value.playlistId
          : playlistId // ignore: cast_nullable_to_non_nullable
              as PlaylistId,
      playlistTitle: null == playlistTitle
          ? _value.playlistTitle
          : playlistTitle // ignore: cast_nullable_to_non_nullable
              as String,
      playlistVideoCount: null == playlistVideoCount
          ? _value.playlistVideoCount
          : playlistVideoCount // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnails: null == thumbnails
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<Thumbnail>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaylistIdCopyWith<$Res> get playlistId {
    return $PlaylistIdCopyWith<$Res>(_value.playlistId, (value) {
      return _then(_value.copyWith(playlistId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SearchPlaylistCopyWith<$Res>
    implements $SearchPlaylistCopyWith<$Res> {
  factory _$$_SearchPlaylistCopyWith(
          _$_SearchPlaylist value, $Res Function(_$_SearchPlaylist) then) =
      __$$_SearchPlaylistCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PlaylistId playlistId,
      String playlistTitle,
      int playlistVideoCount,
      List<Thumbnail> thumbnails});

  @override
  $PlaylistIdCopyWith<$Res> get playlistId;
}

/// @nodoc
class __$$_SearchPlaylistCopyWithImpl<$Res>
    extends _$SearchPlaylistCopyWithImpl<$Res, _$_SearchPlaylist>
    implements _$$_SearchPlaylistCopyWith<$Res> {
  __$$_SearchPlaylistCopyWithImpl(
      _$_SearchPlaylist _value, $Res Function(_$_SearchPlaylist) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlistId = null,
    Object? playlistTitle = null,
    Object? playlistVideoCount = null,
    Object? thumbnails = null,
  }) {
    return _then(_$_SearchPlaylist(
      null == playlistId
          ? _value.playlistId
          : playlistId // ignore: cast_nullable_to_non_nullable
              as PlaylistId,
      null == playlistTitle
          ? _value.playlistTitle
          : playlistTitle // ignore: cast_nullable_to_non_nullable
              as String,
      null == playlistVideoCount
          ? _value.playlistVideoCount
          : playlistVideoCount // ignore: cast_nullable_to_non_nullable
              as int,
      null == thumbnails
          ? _value._thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<Thumbnail>,
    ));
  }
}

/// @nodoc

class _$_SearchPlaylist implements _SearchPlaylist {
  const _$_SearchPlaylist(this.playlistId, this.playlistTitle,
      this.playlistVideoCount, final List<Thumbnail> thumbnails)
      : _thumbnails = thumbnails;

  /// PlaylistId.
  @override
  final PlaylistId playlistId;

  /// Playlist title.
  @override
  final String playlistTitle;

  /// Playlist video count, cannot be greater than 50.
  @override
  final int playlistVideoCount;

  /// Video thumbnail
  final List<Thumbnail> _thumbnails;

  /// Video thumbnail
  @override
  List<Thumbnail> get thumbnails {
    if (_thumbnails is EqualUnmodifiableListView) return _thumbnails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_thumbnails);
  }

  @override
  String toString() {
    return 'SearchPlaylist(playlistId: $playlistId, playlistTitle: $playlistTitle, playlistVideoCount: $playlistVideoCount, thumbnails: $thumbnails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchPlaylist &&
            (identical(other.playlistId, playlistId) ||
                other.playlistId == playlistId) &&
            (identical(other.playlistTitle, playlistTitle) ||
                other.playlistTitle == playlistTitle) &&
            (identical(other.playlistVideoCount, playlistVideoCount) ||
                other.playlistVideoCount == playlistVideoCount) &&
            const DeepCollectionEquality()
                .equals(other._thumbnails, _thumbnails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playlistId, playlistTitle,
      playlistVideoCount, const DeepCollectionEquality().hash(_thumbnails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchPlaylistCopyWith<_$_SearchPlaylist> get copyWith =>
      __$$_SearchPlaylistCopyWithImpl<_$_SearchPlaylist>(this, _$identity);
}

abstract class _SearchPlaylist implements SearchPlaylist {
  const factory _SearchPlaylist(
      final PlaylistId playlistId,
      final String playlistTitle,
      final int playlistVideoCount,
      final List<Thumbnail> thumbnails) = _$_SearchPlaylist;

  @override

  /// PlaylistId.
  PlaylistId get playlistId;
  @override

  /// Playlist title.
  String get playlistTitle;
  @override

  /// Playlist video count, cannot be greater than 50.
  int get playlistVideoCount;
  @override

  /// Video thumbnail
  List<Thumbnail> get thumbnails;
  @override
  @JsonKey(ignore: true)
  _$$_SearchPlaylistCopyWith<_$_SearchPlaylist> get copyWith =>
      throw _privateConstructorUsedError;
}
