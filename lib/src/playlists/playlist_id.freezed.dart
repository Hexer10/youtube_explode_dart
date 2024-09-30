// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlaylistId {
  /// The playlist id as string.
  String get value => throw _privateConstructorUsedError;

  /// Create a copy of PlaylistId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaylistIdCopyWith<PlaylistId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistIdCopyWith<$Res> {
  factory $PlaylistIdCopyWith(
          PlaylistId value, $Res Function(PlaylistId) then) =
      _$PlaylistIdCopyWithImpl<$Res, PlaylistId>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$PlaylistIdCopyWithImpl<$Res, $Val extends PlaylistId>
    implements $PlaylistIdCopyWith<$Res> {
  _$PlaylistIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaylistId
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
abstract class _$$PlaylistIdImplCopyWith<$Res>
    implements $PlaylistIdCopyWith<$Res> {
  factory _$$PlaylistIdImplCopyWith(
          _$PlaylistIdImpl value, $Res Function(_$PlaylistIdImpl) then) =
      __$$PlaylistIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$PlaylistIdImplCopyWithImpl<$Res>
    extends _$PlaylistIdCopyWithImpl<$Res, _$PlaylistIdImpl>
    implements _$$PlaylistIdImplCopyWith<$Res> {
  __$$PlaylistIdImplCopyWithImpl(
      _$PlaylistIdImpl _value, $Res Function(_$PlaylistIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaylistId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$PlaylistIdImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlaylistIdImpl extends _PlaylistId {
  const _$PlaylistIdImpl(this.value) : super._();

  /// The playlist id as string.
  @override
  final String value;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistIdImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of PlaylistId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistIdImplCopyWith<_$PlaylistIdImpl> get copyWith =>
      __$$PlaylistIdImplCopyWithImpl<_$PlaylistIdImpl>(this, _$identity);
}

abstract class _PlaylistId extends PlaylistId {
  const factory _PlaylistId(final String value) = _$PlaylistIdImpl;
  const _PlaylistId._() : super._();

  /// The playlist id as string.
  @override
  String get value;

  /// Create a copy of PlaylistId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaylistIdImplCopyWith<_$PlaylistIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
