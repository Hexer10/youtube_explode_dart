// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'engagement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$EngagementCopyWithImpl<$Res, Engagement>;
  @useResult
  $Res call({int viewCount, int? likeCount, int? dislikeCount});
}

/// @nodoc
class _$EngagementCopyWithImpl<$Res, $Val extends Engagement>
    implements $EngagementCopyWith<$Res> {
  _$EngagementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewCount = null,
    Object? likeCount = freezed,
    Object? dislikeCount = freezed,
  }) {
    return _then(_value.copyWith(
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      likeCount: freezed == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      dislikeCount: freezed == dislikeCount
          ? _value.dislikeCount
          : dislikeCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EngagementCopyWith<$Res>
    implements $EngagementCopyWith<$Res> {
  factory _$$_EngagementCopyWith(
          _$_Engagement value, $Res Function(_$_Engagement) then) =
      __$$_EngagementCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int viewCount, int? likeCount, int? dislikeCount});
}

/// @nodoc
class __$$_EngagementCopyWithImpl<$Res>
    extends _$EngagementCopyWithImpl<$Res, _$_Engagement>
    implements _$$_EngagementCopyWith<$Res> {
  __$$_EngagementCopyWithImpl(
      _$_Engagement _value, $Res Function(_$_Engagement) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewCount = null,
    Object? likeCount = freezed,
    Object? dislikeCount = freezed,
  }) {
    return _then(_$_Engagement(
      null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == dislikeCount
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

  /// View count.
  @override
  final int viewCount;

  /// Like count.
  @override
  final int? likeCount;

  /// Dislike count.
  @override
  final int? dislikeCount;

  @override
  String toString() {
    return 'Engagement(viewCount: $viewCount, likeCount: $likeCount, dislikeCount: $dislikeCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Engagement &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.dislikeCount, dislikeCount) ||
                other.dislikeCount == dislikeCount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, viewCount, likeCount, dislikeCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EngagementCopyWith<_$_Engagement> get copyWith =>
      __$$_EngagementCopyWithImpl<_$_Engagement>(this, _$identity);
}

abstract class _Engagement extends Engagement {
  const factory _Engagement(
          final int viewCount, final int? likeCount, final int? dislikeCount) =
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
  _$$_EngagementCopyWith<_$_Engagement> get copyWith =>
      throw _privateConstructorUsedError;
}
