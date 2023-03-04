// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VideoId {
  /// ID as string.
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoIdCopyWith<VideoId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoIdCopyWith<$Res> {
  factory $VideoIdCopyWith(VideoId value, $Res Function(VideoId) then) =
      _$VideoIdCopyWithImpl<$Res, VideoId>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$VideoIdCopyWithImpl<$Res, $Val extends VideoId>
    implements $VideoIdCopyWith<$Res> {
  _$VideoIdCopyWithImpl(this._value, this._then);

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
abstract class _$$_VideoIdCopyWith<$Res> implements $VideoIdCopyWith<$Res> {
  factory _$$_VideoIdCopyWith(
          _$_VideoId value, $Res Function(_$_VideoId) then) =
      __$$_VideoIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_VideoIdCopyWithImpl<$Res>
    extends _$VideoIdCopyWithImpl<$Res, _$_VideoId>
    implements _$$_VideoIdCopyWith<$Res> {
  __$$_VideoIdCopyWithImpl(_$_VideoId _value, $Res Function(_$_VideoId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_VideoId(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VideoId extends _VideoId {
  const _$_VideoId(this.value) : super._();

  /// ID as string.
  @override
  final String value;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoId &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VideoIdCopyWith<_$_VideoId> get copyWith =>
      __$$_VideoIdCopyWithImpl<_$_VideoId>(this, _$identity);
}

abstract class _VideoId extends VideoId {
  const factory _VideoId(final String value) = _$_VideoId;
  const _VideoId._() : super._();

  @override

  /// ID as string.
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_VideoIdCopyWith<_$_VideoId> get copyWith =>
      throw _privateConstructorUsedError;
}
