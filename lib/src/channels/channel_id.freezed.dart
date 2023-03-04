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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_ChannelIdCopyWith<$Res> implements $ChannelIdCopyWith<$Res> {
  factory _$$_ChannelIdCopyWith(
          _$_ChannelId value, $Res Function(_$_ChannelId) then) =
      __$$_ChannelIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_ChannelIdCopyWithImpl<$Res>
    extends _$ChannelIdCopyWithImpl<$Res, _$_ChannelId>
    implements _$$_ChannelIdCopyWith<$Res> {
  __$$_ChannelIdCopyWithImpl(
      _$_ChannelId _value, $Res Function(_$_ChannelId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_ChannelId(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChannelId extends _ChannelId {
  const _$_ChannelId(this.value) : super._();

  /// ID as a string.
  @override
  final String value;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChannelId &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChannelIdCopyWith<_$_ChannelId> get copyWith =>
      __$$_ChannelIdCopyWithImpl<_$_ChannelId>(this, _$identity);
}

abstract class _ChannelId extends ChannelId {
  const factory _ChannelId(final String value) = _$_ChannelId;
  const _ChannelId._() : super._();

  @override

  /// ID as a string.
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelIdCopyWith<_$_ChannelId> get copyWith =>
      throw _privateConstructorUsedError;
}
