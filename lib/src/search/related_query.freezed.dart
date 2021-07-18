// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'related_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RelatedQueryTearOff {
  const _$RelatedQueryTearOff();

  _RelatedQuery call(String query, VideoId videoId) {
    return _RelatedQuery(
      query,
      videoId,
    );
  }
}

/// @nodoc
const $RelatedQuery = _$RelatedQueryTearOff();

/// @nodoc
mixin _$RelatedQuery {
  /// Query related to a search query.
  String get query => throw _privateConstructorUsedError;

  /// Video related to a search query.
  VideoId get videoId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RelatedQueryCopyWith<RelatedQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelatedQueryCopyWith<$Res> {
  factory $RelatedQueryCopyWith(
          RelatedQuery value, $Res Function(RelatedQuery) then) =
      _$RelatedQueryCopyWithImpl<$Res>;
  $Res call({String query, VideoId videoId});

  $VideoIdCopyWith<$Res> get videoId;
}

/// @nodoc
class _$RelatedQueryCopyWithImpl<$Res> implements $RelatedQueryCopyWith<$Res> {
  _$RelatedQueryCopyWithImpl(this._value, this._then);

  final RelatedQuery _value;
  // ignore: unused_field
  final $Res Function(RelatedQuery) _then;

  @override
  $Res call({
    Object? query = freezed,
    Object? videoId = freezed,
  }) {
    return _then(_value.copyWith(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as VideoId,
    ));
  }

  @override
  $VideoIdCopyWith<$Res> get videoId {
    return $VideoIdCopyWith<$Res>(_value.videoId, (value) {
      return _then(_value.copyWith(videoId: value));
    });
  }
}

/// @nodoc
abstract class _$RelatedQueryCopyWith<$Res>
    implements $RelatedQueryCopyWith<$Res> {
  factory _$RelatedQueryCopyWith(
          _RelatedQuery value, $Res Function(_RelatedQuery) then) =
      __$RelatedQueryCopyWithImpl<$Res>;
  @override
  $Res call({String query, VideoId videoId});

  @override
  $VideoIdCopyWith<$Res> get videoId;
}

/// @nodoc
class __$RelatedQueryCopyWithImpl<$Res> extends _$RelatedQueryCopyWithImpl<$Res>
    implements _$RelatedQueryCopyWith<$Res> {
  __$RelatedQueryCopyWithImpl(
      _RelatedQuery _value, $Res Function(_RelatedQuery) _then)
      : super(_value, (v) => _then(v as _RelatedQuery));

  @override
  _RelatedQuery get _value => super._value as _RelatedQuery;

  @override
  $Res call({
    Object? query = freezed,
    Object? videoId = freezed,
  }) {
    return _then(_RelatedQuery(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as VideoId,
    ));
  }
}

/// @nodoc

class _$_RelatedQuery implements _RelatedQuery {
  const _$_RelatedQuery(this.query, this.videoId);

  @override

  /// Query related to a search query.
  final String query;
  @override

  /// Video related to a search query.
  final VideoId videoId;

  @override
  String toString() {
    return 'RelatedQuery(query: $query, videoId: $videoId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RelatedQuery &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)) &&
            (identical(other.videoId, videoId) ||
                const DeepCollectionEquality().equals(other.videoId, videoId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(query) ^
      const DeepCollectionEquality().hash(videoId);

  @JsonKey(ignore: true)
  @override
  _$RelatedQueryCopyWith<_RelatedQuery> get copyWith =>
      __$RelatedQueryCopyWithImpl<_RelatedQuery>(this, _$identity);
}

abstract class _RelatedQuery implements RelatedQuery {
  const factory _RelatedQuery(String query, VideoId videoId) = _$_RelatedQuery;

  @override

  /// Query related to a search query.
  String get query => throw _privateConstructorUsedError;
  @override

  /// Video related to a search query.
  VideoId get videoId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RelatedQueryCopyWith<_RelatedQuery> get copyWith =>
      throw _privateConstructorUsedError;
}
