// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bitrate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Bitrate _$BitrateFromJson(Map<String, dynamic> json) {
  return _Bitrate.fromJson(json);
}

/// @nodoc
mixin _$Bitrate {
  /// Bits per second.
  int get bitsPerSecond => throw _privateConstructorUsedError;

  /// Serializes this Bitrate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Bitrate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BitrateCopyWith<Bitrate> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BitrateCopyWith<$Res> {
  factory $BitrateCopyWith(Bitrate value, $Res Function(Bitrate) then) =
      _$BitrateCopyWithImpl<$Res, Bitrate>;
  @useResult
  $Res call({int bitsPerSecond});
}

/// @nodoc
class _$BitrateCopyWithImpl<$Res, $Val extends Bitrate>
    implements $BitrateCopyWith<$Res> {
  _$BitrateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Bitrate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bitsPerSecond = null,
  }) {
    return _then(_value.copyWith(
      bitsPerSecond: null == bitsPerSecond
          ? _value.bitsPerSecond
          : bitsPerSecond // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BitrateImplCopyWith<$Res> implements $BitrateCopyWith<$Res> {
  factory _$$BitrateImplCopyWith(
          _$BitrateImpl value, $Res Function(_$BitrateImpl) then) =
      __$$BitrateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int bitsPerSecond});
}

/// @nodoc
class __$$BitrateImplCopyWithImpl<$Res>
    extends _$BitrateCopyWithImpl<$Res, _$BitrateImpl>
    implements _$$BitrateImplCopyWith<$Res> {
  __$$BitrateImplCopyWithImpl(
      _$BitrateImpl _value, $Res Function(_$BitrateImpl) _then)
      : super(_value, _then);

  /// Create a copy of Bitrate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bitsPerSecond = null,
  }) {
    return _then(_$BitrateImpl(
      null == bitsPerSecond
          ? _value.bitsPerSecond
          : bitsPerSecond // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BitrateImpl extends _Bitrate {
  const _$BitrateImpl(this.bitsPerSecond) : super._();

  factory _$BitrateImpl.fromJson(Map<String, dynamic> json) =>
      _$$BitrateImplFromJson(json);

  /// Bits per second.
  @override
  final int bitsPerSecond;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BitrateImpl &&
            (identical(other.bitsPerSecond, bitsPerSecond) ||
                other.bitsPerSecond == bitsPerSecond));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bitsPerSecond);

  /// Create a copy of Bitrate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BitrateImplCopyWith<_$BitrateImpl> get copyWith =>
      __$$BitrateImplCopyWithImpl<_$BitrateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BitrateImplToJson(
      this,
    );
  }
}

abstract class _Bitrate extends Bitrate {
  const factory _Bitrate(final int bitsPerSecond) = _$BitrateImpl;
  const _Bitrate._() : super._();

  factory _Bitrate.fromJson(Map<String, dynamic> json) = _$BitrateImpl.fromJson;

  /// Bits per second.
  @override
  int get bitsPerSecond;

  /// Create a copy of Bitrate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BitrateImplCopyWith<_$BitrateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
