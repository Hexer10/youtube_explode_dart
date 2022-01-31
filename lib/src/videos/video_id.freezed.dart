// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'video_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VideoIdTearOff {
  const _$VideoIdTearOff();

  _VideoId _internal(String value) {
    return _VideoId(
      value,
    );
  }
}

/// @nodoc
const $VideoId = _$VideoIdTearOff();

/// @nodoc
mixin _$VideoId {
  /// ID as string.
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoIdCopyWith<VideoId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoIdCopyWith<$Res> {
  factory $VideoIdCopyWith(VideoId value, $Res Function(VideoId) then) =
      _$VideoIdCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$VideoIdCopyWithImpl<$Res> implements $VideoIdCopyWith<$Res> {
  _$VideoIdCopyWithImpl(this._value, this._then);

  final VideoId _value;
  // ignore: unused_field
  final $Res Function(VideoId) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$VideoIdCopyWith<$Res> implements $VideoIdCopyWith<$Res> {
  factory _$VideoIdCopyWith(_VideoId value, $Res Function(_VideoId) then) =
      __$VideoIdCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$VideoIdCopyWithImpl<$Res> extends _$VideoIdCopyWithImpl<$Res>
    implements _$VideoIdCopyWith<$Res> {
  __$VideoIdCopyWithImpl(_VideoId _value, $Res Function(_VideoId) _then)
      : super(_value, (v) => _then(v as _VideoId));

  @override
  _VideoId get _value => super._value as _VideoId;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_VideoId(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VideoId extends _VideoId {
  const _$_VideoId(this.value) : super._();

  @override

  /// ID as string.
  final String value;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VideoId &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$VideoIdCopyWith<_VideoId> get copyWith =>
      __$VideoIdCopyWithImpl<_VideoId>(this, _$identity);
}

abstract class _VideoId extends VideoId {
  const factory _VideoId(String value) = _$_VideoId;
  const _VideoId._() : super._();

  @override

  /// ID as string.
  String get value;
  @override
  @JsonKey(ignore: true)
  _$VideoIdCopyWith<_VideoId> get copyWith =>
      throw _privateConstructorUsedError;
}
