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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ThumbnailSet {
  /// Video id.
  String get videoId => throw _privateConstructorUsedError;

  /// Create a copy of ThumbnailSet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of ThumbnailSet
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$ThumbnailSetImplCopyWith<$Res>
    implements $ThumbnailSetCopyWith<$Res> {
  factory _$$ThumbnailSetImplCopyWith(
          _$ThumbnailSetImpl value, $Res Function(_$ThumbnailSetImpl) then) =
      __$$ThumbnailSetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String videoId});
}

/// @nodoc
class __$$ThumbnailSetImplCopyWithImpl<$Res>
    extends _$ThumbnailSetCopyWithImpl<$Res, _$ThumbnailSetImpl>
    implements _$$ThumbnailSetImplCopyWith<$Res> {
  __$$ThumbnailSetImplCopyWithImpl(
      _$ThumbnailSetImpl _value, $Res Function(_$ThumbnailSetImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThumbnailSet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
  }) {
    return _then(_$ThumbnailSetImpl(
      null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ThumbnailSetImpl extends _ThumbnailSet {
  const _$ThumbnailSetImpl(this.videoId) : super._();

  /// Video id.
  @override
  final String videoId;

  @override
  String toString() {
    return 'ThumbnailSet(videoId: $videoId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThumbnailSetImpl &&
            (identical(other.videoId, videoId) || other.videoId == videoId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoId);

  /// Create a copy of ThumbnailSet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThumbnailSetImplCopyWith<_$ThumbnailSetImpl> get copyWith =>
      __$$ThumbnailSetImplCopyWithImpl<_$ThumbnailSetImpl>(this, _$identity);
}

abstract class _ThumbnailSet extends ThumbnailSet {
  const factory _ThumbnailSet(final String videoId) = _$ThumbnailSetImpl;
  const _ThumbnailSet._() : super._();

  /// Video id.
  @override
  String get videoId;

  /// Create a copy of ThumbnailSet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThumbnailSetImplCopyWith<_$ThumbnailSetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
