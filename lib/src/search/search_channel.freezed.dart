// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_channel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchChannelTearOff {
  const _$SearchChannelTearOff();

  _SearchChannel call(
      ChannelId id, String name, String description, int videoCount) {
    return _SearchChannel(
      id,
      name,
      description,
      videoCount,
    );
  }
}

/// @nodoc
const $SearchChannel = _$SearchChannelTearOff();

/// @nodoc
mixin _$SearchChannel {
  /// Channel id.
  ChannelId get id => throw _privateConstructorUsedError;

  /// Channel name.
  String get name => throw _privateConstructorUsedError;

  /// Description snippet.
  /// Can be empty.
  String get description => throw _privateConstructorUsedError;

  /// Channel uploaded videos.
  int get videoCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchChannelCopyWith<SearchChannel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchChannelCopyWith<$Res> {
  factory $SearchChannelCopyWith(
          SearchChannel value, $Res Function(SearchChannel) then) =
      _$SearchChannelCopyWithImpl<$Res>;
  $Res call({ChannelId id, String name, String description, int videoCount});

  $ChannelIdCopyWith<$Res> get id;
}

/// @nodoc
class _$SearchChannelCopyWithImpl<$Res>
    implements $SearchChannelCopyWith<$Res> {
  _$SearchChannelCopyWithImpl(this._value, this._then);

  final SearchChannel _value;
  // ignore: unused_field
  final $Res Function(SearchChannel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? videoCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ChannelId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      videoCount: videoCount == freezed
          ? _value.videoCount
          : videoCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $ChannelIdCopyWith<$Res> get id {
    return $ChannelIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value));
    });
  }
}

/// @nodoc
abstract class _$SearchChannelCopyWith<$Res>
    implements $SearchChannelCopyWith<$Res> {
  factory _$SearchChannelCopyWith(
          _SearchChannel value, $Res Function(_SearchChannel) then) =
      __$SearchChannelCopyWithImpl<$Res>;
  @override
  $Res call({ChannelId id, String name, String description, int videoCount});

  @override
  $ChannelIdCopyWith<$Res> get id;
}

/// @nodoc
class __$SearchChannelCopyWithImpl<$Res>
    extends _$SearchChannelCopyWithImpl<$Res>
    implements _$SearchChannelCopyWith<$Res> {
  __$SearchChannelCopyWithImpl(
      _SearchChannel _value, $Res Function(_SearchChannel) _then)
      : super(_value, (v) => _then(v as _SearchChannel));

  @override
  _SearchChannel get _value => super._value as _SearchChannel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? videoCount = freezed,
  }) {
    return _then(_SearchChannel(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ChannelId,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      videoCount == freezed
          ? _value.videoCount
          : videoCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SearchChannel implements _SearchChannel {
  const _$_SearchChannel(this.id, this.name, this.description, this.videoCount);

  @override

  /// Channel id.
  final ChannelId id;
  @override

  /// Channel name.
  final String name;
  @override

  /// Description snippet.
  /// Can be empty.
  final String description;
  @override

  /// Channel uploaded videos.
  final int videoCount;

  @override
  String toString() {
    return 'SearchChannel(id: $id, name: $name, description: $description, videoCount: $videoCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchChannel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.videoCount, videoCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(videoCount));

  @JsonKey(ignore: true)
  @override
  _$SearchChannelCopyWith<_SearchChannel> get copyWith =>
      __$SearchChannelCopyWithImpl<_SearchChannel>(this, _$identity);
}

abstract class _SearchChannel implements SearchChannel {
  const factory _SearchChannel(
          ChannelId id, String name, String description, int videoCount) =
      _$_SearchChannel;

  @override

  /// Channel id.
  ChannelId get id;
  @override

  /// Channel name.
  String get name;
  @override

  /// Description snippet.
  /// Can be empty.
  String get description;
  @override

  /// Channel uploaded videos.
  int get videoCount;
  @override
  @JsonKey(ignore: true)
  _$SearchChannelCopyWith<_SearchChannel> get copyWith =>
      throw _privateConstructorUsedError;
}
