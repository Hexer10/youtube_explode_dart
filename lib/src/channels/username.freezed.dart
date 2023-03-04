// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'username.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$UsernameCopyWithImpl<$Res, Username>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$UsernameCopyWithImpl<$Res, $Val extends Username>
    implements $UsernameCopyWith<$Res> {
  _$UsernameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UsernameCopyWith<$Res> implements $UsernameCopyWith<$Res> {
  factory _$$_UsernameCopyWith(
          _$_Username value, $Res Function(_$_Username) then) =
      __$$_UsernameCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_UsernameCopyWithImpl<$Res>
    extends _$UsernameCopyWithImpl<$Res, _$_Username>
    implements _$$_UsernameCopyWith<$Res> {
  __$$_UsernameCopyWithImpl(
      _$_Username _value, $Res Function(_$_Username) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_Username(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Username implements _Username {
  const _$_Username(this.value);

  /// User name as string.
  @override
  final String value;

  @override
  String toString() {
    return 'Username._(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Username &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsernameCopyWith<_$_Username> get copyWith =>
      __$$_UsernameCopyWithImpl<_$_Username>(this, _$identity);
}

abstract class _Username implements Username {
  const factory _Username(final String value) = _$_Username;

  @override

  /// User name as string.
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_UsernameCopyWith<_$_Username> get copyWith =>
      throw _privateConstructorUsedError;
}
