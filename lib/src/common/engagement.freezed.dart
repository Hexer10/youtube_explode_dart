// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'engagement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EngagementTearOff {
  const _$EngagementTearOff();

  _Engagement call(int viewCount, int? likeCount, int? dislikeCount) {
    return _Engagement(
      viewCount,
      likeCount,
      dislikeCount,
    );
  }
}

/// @nodoc
const $Engagement = _$EngagementTearOff();

/// @nodoc
mixin _$Engagement {
  /// View count.
  int get viewCount => throw _privateConstructorUsedError;

  /// Like count.
  int? get likeCount => throw _privateConstructorUsedError;

  /// Dislike count.
  int? get dislikeCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EngagementCopyWith<Engagement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EngagementCopyWith<$Res> {
  factory $EngagementCopyWith(
          Engagement value, $Res Function(Engagement) then) =
      _$EngagementCopyWithImpl<$Res>;
  $Res call({int viewCount, int? likeCount, int? dislikeCount});
}

/// @nodoc
class _$EngagementCopyWithImpl<$Res> implements $EngagementCopyWith<$Res> {
  _$EngagementCopyWithImpl(this._value, this._then);

  final Engagement _value;
  // ignore: unused_field
  final $Res Function(Engagement) _then;

  @override
  $Res call({
    Object? viewCount = freezed,
    Object? likeCount = freezed,
    Object? dislikeCount = freezed,
  }) {
    return _then(_value.copyWith(
      viewCount: viewCount == freezed
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      dislikeCount: dislikeCount == freezed
          ? _value.dislikeCount
          : dislikeCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$EngagementCopyWith<$Res> implements $EngagementCopyWith<$Res> {
  factory _$EngagementCopyWith(
          _Engagement value, $Res Function(_Engagement) then) =
      __$EngagementCopyWithImpl<$Res>;
  @override
  $Res call({int viewCount, int? likeCount, int? dislikeCount});
}

/// @nodoc
class __$EngagementCopyWithImpl<$Res> extends _$EngagementCopyWithImpl<$Res>
    implements _$EngagementCopyWith<$Res> {
  __$EngagementCopyWithImpl(
      _Engagement _value, $Res Function(_Engagement) _then)
      : super(_value, (v) => _then(v as _Engagement));

  @override
  _Engagement get _value => super._value as _Engagement;

  @override
  $Res call({
    Object? viewCount = freezed,
    Object? likeCount = freezed,
    Object? dislikeCount = freezed,
  }) {
    return _then(_Engagement(
      viewCount == freezed
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      dislikeCount == freezed
          ? _value.dislikeCount
          : dislikeCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_Engagement extends _Engagement {
  const _$_Engagement(this.viewCount, this.likeCount, this.dislikeCount)
      : super._();

  @override

  /// View count.
  final int viewCount;
  @override

  /// Like count.
  final int? likeCount;
  @override

  /// Dislike count.
  final int? dislikeCount;

  @override
  String toString() {
    return 'Engagement(viewCount: $viewCount, likeCount: $likeCount, dislikeCount: $dislikeCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Engagement &&
            const DeepCollectionEquality().equals(other.viewCount, viewCount) &&
            const DeepCollectionEquality().equals(other.likeCount, likeCount) &&
            const DeepCollectionEquality()
                .equals(other.dislikeCount, dislikeCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(viewCount),
      const DeepCollectionEquality().hash(likeCount),
      const DeepCollectionEquality().hash(dislikeCount));

  @JsonKey(ignore: true)
  @override
  _$EngagementCopyWith<_Engagement> get copyWith =>
      __$EngagementCopyWithImpl<_Engagement>(this, _$identity);
}

abstract class _Engagement extends Engagement {
  const factory _Engagement(int viewCount, int? likeCount, int? dislikeCount) =
      _$_Engagement;
  const _Engagement._() : super._();

  @override

  /// View count.
  int get viewCount;
  @override

  /// Like count.
  int? get likeCount;
  @override

  /// Dislike count.
  int? get dislikeCount;
  @override
  @JsonKey(ignore: true)
  _$EngagementCopyWith<_Engagement> get copyWith =>
      throw _privateConstructorUsedError;
}
