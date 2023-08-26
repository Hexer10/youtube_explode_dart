// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_handle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChannelHandle {
  /// Handle as string.
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChannelHandleCopyWith<ChannelHandle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelHandleCopyWith<$Res> {
  factory $ChannelHandleCopyWith(
          ChannelHandle value, $Res Function(ChannelHandle) then) =
      _$ChannelHandleCopyWithImpl<$Res, ChannelHandle>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$ChannelHandleCopyWithImpl<$Res, $Val extends ChannelHandle>
    implements $ChannelHandleCopyWith<$Res> {
  _$ChannelHandleCopyWithImpl(this._value, this._then);

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
abstract class _$$_ChannelHandleCopyWith<$Res>
    implements $ChannelHandleCopyWith<$Res> {
  factory _$$_ChannelHandleCopyWith(
          _$_ChannelHandle value, $Res Function(_$_ChannelHandle) then) =
      __$$_ChannelHandleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_ChannelHandleCopyWithImpl<$Res>
    extends _$ChannelHandleCopyWithImpl<$Res, _$_ChannelHandle>
    implements _$$_ChannelHandleCopyWith<$Res> {
  __$$_ChannelHandleCopyWithImpl(
      _$_ChannelHandle _value, $Res Function(_$_ChannelHandle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_ChannelHandle(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChannelHandle implements _ChannelHandle {
  const _$_ChannelHandle(this.value);

  /// Handle as string.
  @override
  final String value;

  @override
  String toString() {
    return 'ChannelHandle._(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChannelHandle &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChannelHandleCopyWith<_$_ChannelHandle> get copyWith =>
      __$$_ChannelHandleCopyWithImpl<_$_ChannelHandle>(this, _$identity);
}

abstract class _ChannelHandle implements ChannelHandle {
  const factory _ChannelHandle(final String value) = _$_ChannelHandle;

  @override

  /// Handle as string.
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelHandleCopyWith<_$_ChannelHandle> get copyWith =>
      throw _privateConstructorUsedError;
}
