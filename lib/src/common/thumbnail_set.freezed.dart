// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'thumbnail_set.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ThumbnailSetTearOff {
  const _$ThumbnailSetTearOff();

  _ThumbnailSet call(String videoId) {
    return _ThumbnailSet(
      videoId,
    );
  }
}

/// @nodoc
const $ThumbnailSet = _$ThumbnailSetTearOff();

/// @nodoc
mixin _$ThumbnailSet {
  /// Video id.
  String get videoId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThumbnailSetCopyWith<ThumbnailSet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThumbnailSetCopyWith<$Res> {
  factory $ThumbnailSetCopyWith(
          ThumbnailSet value, $Res Function(ThumbnailSet) then) =
      _$ThumbnailSetCopyWithImpl<$Res>;
  $Res call({String videoId});
}

/// @nodoc
class _$ThumbnailSetCopyWithImpl<$Res> implements $ThumbnailSetCopyWith<$Res> {
  _$ThumbnailSetCopyWithImpl(this._value, this._then);

  final ThumbnailSet _value;
  // ignore: unused_field
  final $Res Function(ThumbnailSet) _then;

  @override
  $Res call({
    Object? videoId = freezed,
  }) {
    return _then(_value.copyWith(
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ThumbnailSetCopyWith<$Res>
    implements $ThumbnailSetCopyWith<$Res> {
  factory _$ThumbnailSetCopyWith(
          _ThumbnailSet value, $Res Function(_ThumbnailSet) then) =
      __$ThumbnailSetCopyWithImpl<$Res>;
  @override
  $Res call({String videoId});
}

/// @nodoc
class __$ThumbnailSetCopyWithImpl<$Res> extends _$ThumbnailSetCopyWithImpl<$Res>
    implements _$ThumbnailSetCopyWith<$Res> {
  __$ThumbnailSetCopyWithImpl(
      _ThumbnailSet _value, $Res Function(_ThumbnailSet) _then)
      : super(_value, (v) => _then(v as _ThumbnailSet));

  @override
  _ThumbnailSet get _value => super._value as _ThumbnailSet;

  @override
  $Res call({
    Object? videoId = freezed,
  }) {
    return _then(_ThumbnailSet(
      videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ThumbnailSet extends _ThumbnailSet {
  const _$_ThumbnailSet(this.videoId) : super._();

  @override

  /// Video id.
  final String videoId;

  @override
  String toString() {
    return 'ThumbnailSet(videoId: $videoId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ThumbnailSet &&
            const DeepCollectionEquality().equals(other.videoId, videoId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(videoId));

  @JsonKey(ignore: true)
  @override
  _$ThumbnailSetCopyWith<_ThumbnailSet> get copyWith =>
      __$ThumbnailSetCopyWithImpl<_ThumbnailSet>(this, _$identity);
}

abstract class _ThumbnailSet extends ThumbnailSet {
  const factory _ThumbnailSet(String videoId) = _$_ThumbnailSet;
  const _ThumbnailSet._() : super._();

  @override

  /// Video id.
  String get videoId;
  @override
  @JsonKey(ignore: true)
  _$ThumbnailSetCopyWith<_ThumbnailSet> get copyWith =>
      throw _privateConstructorUsedError;
}
