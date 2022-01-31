// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'channel_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChannelIdTearOff {
  const _$ChannelIdTearOff();

  _ChannelId _internal(String value) {
    return _ChannelId(
      value,
    );
  }
}

/// @nodoc
const $ChannelId = _$ChannelIdTearOff();

/// @nodoc
mixin _$ChannelId {
  /// ID as a string.
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChannelIdCopyWith<ChannelId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelIdCopyWith<$Res> {
  factory $ChannelIdCopyWith(ChannelId value, $Res Function(ChannelId) then) =
      _$ChannelIdCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$ChannelIdCopyWithImpl<$Res> implements $ChannelIdCopyWith<$Res> {
  _$ChannelIdCopyWithImpl(this._value, this._then);

  final ChannelId _value;
  // ignore: unused_field
  final $Res Function(ChannelId) _then;

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
abstract class _$ChannelIdCopyWith<$Res> implements $ChannelIdCopyWith<$Res> {
  factory _$ChannelIdCopyWith(
          _ChannelId value, $Res Function(_ChannelId) then) =
      __$ChannelIdCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$ChannelIdCopyWithImpl<$Res> extends _$ChannelIdCopyWithImpl<$Res>
    implements _$ChannelIdCopyWith<$Res> {
  __$ChannelIdCopyWithImpl(_ChannelId _value, $Res Function(_ChannelId) _then)
      : super(_value, (v) => _then(v as _ChannelId));

  @override
  _ChannelId get _value => super._value as _ChannelId;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ChannelId(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChannelId extends _ChannelId {
  const _$_ChannelId(this.value) : super._();

  @override

  /// ID as a string.
  final String value;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChannelId &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$ChannelIdCopyWith<_ChannelId> get copyWith =>
      __$ChannelIdCopyWithImpl<_ChannelId>(this, _$identity);
}

abstract class _ChannelId extends ChannelId {
  const factory _ChannelId(String value) = _$_ChannelId;
  const _ChannelId._() : super._();

  @override

  /// ID as a string.
  String get value;
  @override
  @JsonKey(ignore: true)
  _$ChannelIdCopyWith<_ChannelId> get copyWith =>
      throw _privateConstructorUsedError;
}
