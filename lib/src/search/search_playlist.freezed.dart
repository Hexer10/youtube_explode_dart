// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_playlist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchPlaylistTearOff {
  const _$SearchPlaylistTearOff();

  _SearchChannel call(
      PlaylistId playlistId, String playlistTitle, int playlistVideoCount) {
    return _SearchChannel(
      playlistId,
      playlistTitle,
      playlistVideoCount,
    );
  }
}

/// @nodoc
const $SearchPlaylist = _$SearchPlaylistTearOff();

/// @nodoc
mixin _$SearchPlaylist {
  /// PlaylistId.
  PlaylistId get playlistId => throw _privateConstructorUsedError;

  /// Playlist title.
  String get playlistTitle => throw _privateConstructorUsedError;

  /// Playlist video count, cannot be greater than 50.
  int get playlistVideoCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchPlaylistCopyWith<SearchPlaylist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPlaylistCopyWith<$Res> {
  factory $SearchPlaylistCopyWith(
          SearchPlaylist value, $Res Function(SearchPlaylist) then) =
      _$SearchPlaylistCopyWithImpl<$Res>;
  $Res call(
      {PlaylistId playlistId, String playlistTitle, int playlistVideoCount});

  $PlaylistIdCopyWith<$Res> get playlistId;
}

/// @nodoc
class _$SearchPlaylistCopyWithImpl<$Res>
    implements $SearchPlaylistCopyWith<$Res> {
  _$SearchPlaylistCopyWithImpl(this._value, this._then);

  final SearchPlaylist _value;
  // ignore: unused_field
  final $Res Function(SearchPlaylist) _then;

  @override
  $Res call({
    Object? playlistId = freezed,
    Object? playlistTitle = freezed,
    Object? playlistVideoCount = freezed,
  }) {
    return _then(_value.copyWith(
      playlistId: playlistId == freezed
          ? _value.playlistId
          : playlistId // ignore: cast_nullable_to_non_nullable
              as PlaylistId,
      playlistTitle: playlistTitle == freezed
          ? _value.playlistTitle
          : playlistTitle // ignore: cast_nullable_to_non_nullable
              as String,
      playlistVideoCount: playlistVideoCount == freezed
          ? _value.playlistVideoCount
          : playlistVideoCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $PlaylistIdCopyWith<$Res> get playlistId {
    return $PlaylistIdCopyWith<$Res>(_value.playlistId, (value) {
      return _then(_value.copyWith(playlistId: value));
    });
  }
}

/// @nodoc
abstract class _$SearchChannelCopyWith<$Res>
    implements $SearchPlaylistCopyWith<$Res> {
  factory _$SearchChannelCopyWith(
          _SearchChannel value, $Res Function(_SearchChannel) then) =
      __$SearchChannelCopyWithImpl<$Res>;
  @override
  $Res call(
      {PlaylistId playlistId, String playlistTitle, int playlistVideoCount});

  @override
  $PlaylistIdCopyWith<$Res> get playlistId;
}

/// @nodoc
class __$SearchChannelCopyWithImpl<$Res>
    extends _$SearchPlaylistCopyWithImpl<$Res>
    implements _$SearchChannelCopyWith<$Res> {
  __$SearchChannelCopyWithImpl(
      _SearchChannel _value, $Res Function(_SearchChannel) _then)
      : super(_value, (v) => _then(v as _SearchChannel));

  @override
  _SearchChannel get _value => super._value as _SearchChannel;

  @override
  $Res call({
    Object? playlistId = freezed,
    Object? playlistTitle = freezed,
    Object? playlistVideoCount = freezed,
  }) {
    return _then(_SearchChannel(
      playlistId == freezed
          ? _value.playlistId
          : playlistId // ignore: cast_nullable_to_non_nullable
              as PlaylistId,
      playlistTitle == freezed
          ? _value.playlistTitle
          : playlistTitle // ignore: cast_nullable_to_non_nullable
              as String,
      playlistVideoCount == freezed
          ? _value.playlistVideoCount
          : playlistVideoCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@With(BaseSearchContent)
class _$_SearchChannel with BaseSearchContent implements _SearchChannel {
  const _$_SearchChannel(
      this.playlistId, this.playlistTitle, this.playlistVideoCount);

  @override

  /// PlaylistId.
  final PlaylistId playlistId;
  @override

  /// Playlist title.
  final String playlistTitle;
  @override

  /// Playlist video count, cannot be greater than 50.
  final int playlistVideoCount;

  @override
  String toString() {
    return 'SearchPlaylist(playlistId: $playlistId, playlistTitle: $playlistTitle, playlistVideoCount: $playlistVideoCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchChannel &&
            (identical(other.playlistId, playlistId) ||
                const DeepCollectionEquality()
                    .equals(other.playlistId, playlistId)) &&
            (identical(other.playlistTitle, playlistTitle) ||
                const DeepCollectionEquality()
                    .equals(other.playlistTitle, playlistTitle)) &&
            (identical(other.playlistVideoCount, playlistVideoCount) ||
                const DeepCollectionEquality()
                    .equals(other.playlistVideoCount, playlistVideoCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(playlistId) ^
      const DeepCollectionEquality().hash(playlistTitle) ^
      const DeepCollectionEquality().hash(playlistVideoCount);

  @JsonKey(ignore: true)
  @override
  _$SearchChannelCopyWith<_SearchChannel> get copyWith =>
      __$SearchChannelCopyWithImpl<_SearchChannel>(this, _$identity);
}

abstract class _SearchChannel implements SearchPlaylist, BaseSearchContent {
  const factory _SearchChannel(
          PlaylistId playlistId, String playlistTitle, int playlistVideoCount) =
      _$_SearchChannel;

  @override

  /// PlaylistId.
  PlaylistId get playlistId => throw _privateConstructorUsedError;
  @override

  /// Playlist title.
  String get playlistTitle => throw _privateConstructorUsedError;
  @override

  /// Playlist video count, cannot be greater than 50.
  int get playlistVideoCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchChannelCopyWith<_SearchChannel> get copyWith =>
      throw _privateConstructorUsedError;
}
