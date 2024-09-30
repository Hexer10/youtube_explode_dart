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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChannelHandle {
  /// Handle as string.
  String get value => throw _privateConstructorUsedError;

  /// Create a copy of ChannelHandle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of ChannelHandle
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$ChannelHandleImplCopyWith<$Res>
    implements $ChannelHandleCopyWith<$Res> {
  factory _$$ChannelHandleImplCopyWith(
          _$ChannelHandleImpl value, $Res Function(_$ChannelHandleImpl) then) =
      __$$ChannelHandleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$ChannelHandleImplCopyWithImpl<$Res>
    extends _$ChannelHandleCopyWithImpl<$Res, _$ChannelHandleImpl>
    implements _$$ChannelHandleImplCopyWith<$Res> {
  __$$ChannelHandleImplCopyWithImpl(
      _$ChannelHandleImpl _value, $Res Function(_$ChannelHandleImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChannelHandle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ChannelHandleImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChannelHandleImpl implements _ChannelHandle {
  const _$ChannelHandleImpl(this.value);

  /// Handle as string.
  @override
  final String value;

  @override
  String toString() {
    return 'ChannelHandle._(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelHandleImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of ChannelHandle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelHandleImplCopyWith<_$ChannelHandleImpl> get copyWith =>
      __$$ChannelHandleImplCopyWithImpl<_$ChannelHandleImpl>(this, _$identity);
}

abstract class _ChannelHandle implements ChannelHandle {
  const factory _ChannelHandle(final String value) = _$ChannelHandleImpl;

  /// Handle as string.
  @override
  String get value;

  /// Create a copy of ChannelHandle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChannelHandleImplCopyWith<_$ChannelHandleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
