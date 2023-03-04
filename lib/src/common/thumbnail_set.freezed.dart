// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'thumbnail_set.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ThumbnailSet {
  /// Video id.
  String get videoId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThumbnailSetCopyWith<ThumbnailSet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThumbnailSetCopyWith<$Res> {
  factory $ThumbnailSetCopyWith(
          ThumbnailSet value, $Res Function(ThumbnailSet) then) =
      _$ThumbnailSetCopyWithImpl<$Res, ThumbnailSet>;
  @useResult
  $Res call({String videoId});
}

/// @nodoc
class _$ThumbnailSetCopyWithImpl<$Res, $Val extends ThumbnailSet>
    implements $ThumbnailSetCopyWith<$Res> {
  _$ThumbnailSetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
  }) {
    return _then(_value.copyWith(
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ThumbnailSetCopyWith<$Res>
    implements $ThumbnailSetCopyWith<$Res> {
  factory _$$_ThumbnailSetCopyWith(
          _$_ThumbnailSet value, $Res Function(_$_ThumbnailSet) then) =
      __$$_ThumbnailSetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String videoId});
}

/// @nodoc
class __$$_ThumbnailSetCopyWithImpl<$Res>
    extends _$ThumbnailSetCopyWithImpl<$Res, _$_ThumbnailSet>
    implements _$$_ThumbnailSetCopyWith<$Res> {
  __$$_ThumbnailSetCopyWithImpl(
      _$_ThumbnailSet _value, $Res Function(_$_ThumbnailSet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
  }) {
    return _then(_$_ThumbnailSet(
      null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ThumbnailSet extends _ThumbnailSet {
  const _$_ThumbnailSet(this.videoId) : super._();

  /// Video id.
  @override
  final String videoId;

  @override
  String toString() {
    return 'ThumbnailSet(videoId: $videoId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ThumbnailSet &&
            (identical(other.videoId, videoId) || other.videoId == videoId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ThumbnailSetCopyWith<_$_ThumbnailSet> get copyWith =>
      __$$_ThumbnailSetCopyWithImpl<_$_ThumbnailSet>(this, _$identity);
}

abstract class _ThumbnailSet extends ThumbnailSet {
  const factory _ThumbnailSet(final String videoId) = _$_ThumbnailSet;
  const _ThumbnailSet._() : super._();

  @override

  /// Video id.
  String get videoId;
  @override
  @JsonKey(ignore: true)
  _$$_ThumbnailSetCopyWith<_$_ThumbnailSet> get copyWith =>
      throw _privateConstructorUsedError;
}
