// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChannelId {
  /// ID as a string.
  String get value => throw _privateConstructorUsedError;

  /// Create a copy of ChannelId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChannelIdCopyWith<ChannelId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelIdCopyWith<$Res> {
  factory $ChannelIdCopyWith(ChannelId value, $Res Function(ChannelId) then) =
      _$ChannelIdCopyWithImpl<$Res, ChannelId>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$ChannelIdCopyWithImpl<$Res, $Val extends ChannelId>
    implements $ChannelIdCopyWith<$Res> {
  _$ChannelIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChannelId
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
abstract class _$$ChannelIdImplCopyWith<$Res>
    implements $ChannelIdCopyWith<$Res> {
  factory _$$ChannelIdImplCopyWith(
          _$ChannelIdImpl value, $Res Function(_$ChannelIdImpl) then) =
      __$$ChannelIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$ChannelIdImplCopyWithImpl<$Res>
    extends _$ChannelIdCopyWithImpl<$Res, _$ChannelIdImpl>
    implements _$$ChannelIdImplCopyWith<$Res> {
  __$$ChannelIdImplCopyWithImpl(
      _$ChannelIdImpl _value, $Res Function(_$ChannelIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChannelId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ChannelIdImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChannelIdImpl extends _ChannelId {
  const _$ChannelIdImpl(this.value) : super._();

  /// ID as a string.
  @override
  final String value;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelIdImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of ChannelId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelIdImplCopyWith<_$ChannelIdImpl> get copyWith =>
      __$$ChannelIdImplCopyWithImpl<_$ChannelIdImpl>(this, _$identity);
}

abstract class _ChannelId extends ChannelId {
  const factory _ChannelId(final String value) = _$ChannelIdImpl;
  const _ChannelId._() : super._();

  /// ID as a string.
  @override
  String get value;

  /// Create a copy of ChannelId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChannelIdImplCopyWith<_$ChannelIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
