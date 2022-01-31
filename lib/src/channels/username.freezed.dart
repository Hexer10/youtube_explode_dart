// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'username.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UsernameTearOff {
  const _$UsernameTearOff();

  _Username _(String value) {
    return _Username(
      value,
    );
  }
}

/// @nodoc
const $Username = _$UsernameTearOff();

/// @nodoc
mixin _$Username {
  /// User name as string.
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsernameCopyWith<Username> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsernameCopyWith<$Res> {
  factory $UsernameCopyWith(Username value, $Res Function(Username) then) =
      _$UsernameCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$UsernameCopyWithImpl<$Res> implements $UsernameCopyWith<$Res> {
  _$UsernameCopyWithImpl(this._value, this._then);

  final Username _value;
  // ignore: unused_field
  final $Res Function(Username) _then;

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
abstract class _$UsernameCopyWith<$Res> implements $UsernameCopyWith<$Res> {
  factory _$UsernameCopyWith(_Username value, $Res Function(_Username) then) =
      __$UsernameCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$UsernameCopyWithImpl<$Res> extends _$UsernameCopyWithImpl<$Res>
    implements _$UsernameCopyWith<$Res> {
  __$UsernameCopyWithImpl(_Username _value, $Res Function(_Username) _then)
      : super(_value, (v) => _then(v as _Username));

  @override
  _Username get _value => super._value as _Username;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_Username(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Username implements _Username {
  const _$_Username(this.value);

  @override

  /// User name as string.
  final String value;

  @override
  String toString() {
    return 'Username._(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Username &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$UsernameCopyWith<_Username> get copyWith =>
      __$UsernameCopyWithImpl<_Username>(this, _$identity);
}

abstract class _Username implements Username {
  const factory _Username(String value) = _$_Username;

  @override

  /// User name as string.
  String get value;
  @override
  @JsonKey(ignore: true)
  _$UsernameCopyWith<_Username> get copyWith =>
      throw _privateConstructorUsedError;
}
