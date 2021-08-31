// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'framerate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FramerateTearOff {
  const _$FramerateTearOff();

  _Framerate call(num framesPerSecond) {
    return _Framerate(
      framesPerSecond,
    );
  }
}

/// @nodoc
const $Framerate = _$FramerateTearOff();

/// @nodoc
mixin _$Framerate {
  /// Framerate as frames per second
  num get framesPerSecond => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FramerateCopyWith<Framerate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FramerateCopyWith<$Res> {
  factory $FramerateCopyWith(Framerate value, $Res Function(Framerate) then) =
      _$FramerateCopyWithImpl<$Res>;
  $Res call({num framesPerSecond});
}

/// @nodoc
class _$FramerateCopyWithImpl<$Res> implements $FramerateCopyWith<$Res> {
  _$FramerateCopyWithImpl(this._value, this._then);

  final Framerate _value;
  // ignore: unused_field
  final $Res Function(Framerate) _then;

  @override
  $Res call({
    Object? framesPerSecond = freezed,
  }) {
    return _then(_value.copyWith(
      framesPerSecond: framesPerSecond == freezed
          ? _value.framesPerSecond
          : framesPerSecond // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
abstract class _$FramerateCopyWith<$Res> implements $FramerateCopyWith<$Res> {
  factory _$FramerateCopyWith(
          _Framerate value, $Res Function(_Framerate) then) =
      __$FramerateCopyWithImpl<$Res>;
  @override
  $Res call({num framesPerSecond});
}

/// @nodoc
class __$FramerateCopyWithImpl<$Res> extends _$FramerateCopyWithImpl<$Res>
    implements _$FramerateCopyWith<$Res> {
  __$FramerateCopyWithImpl(_Framerate _value, $Res Function(_Framerate) _then)
      : super(_value, (v) => _then(v as _Framerate));

  @override
  _Framerate get _value => super._value as _Framerate;

  @override
  $Res call({
    Object? framesPerSecond = freezed,
  }) {
    return _then(_Framerate(
      framesPerSecond == freezed
          ? _value.framesPerSecond
          : framesPerSecond // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$_Framerate extends _Framerate {
  const _$_Framerate(this.framesPerSecond) : super._();

  @override

  /// Framerate as frames per second
  final num framesPerSecond;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Framerate &&
            (identical(other.framesPerSecond, framesPerSecond) ||
                const DeepCollectionEquality()
                    .equals(other.framesPerSecond, framesPerSecond)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(framesPerSecond);

  @JsonKey(ignore: true)
  @override
  _$FramerateCopyWith<_Framerate> get copyWith =>
      __$FramerateCopyWithImpl<_Framerate>(this, _$identity);
}

abstract class _Framerate extends Framerate {
  const factory _Framerate(num framesPerSecond) = _$_Framerate;
  const _Framerate._() : super._();

  @override

  /// Framerate as frames per second
  num get framesPerSecond => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FramerateCopyWith<_Framerate> get copyWith =>
      throw _privateConstructorUsedError;
}
