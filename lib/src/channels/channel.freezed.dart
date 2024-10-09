// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Channel {
  /// Channel ID.
  ChannelId get id => throw _privateConstructorUsedError;

  /// Channel title.
  String get title => throw _privateConstructorUsedError;

  /// URL of the channel's logo image.
  String get logoUrl => throw _privateConstructorUsedError;

  /// URL of the channel's banner image.
  String get bannerUrl => throw _privateConstructorUsedError;

  /// The (approximate) channel subscriber's count.
  int? get subscribersCount => throw _privateConstructorUsedError;

  /// Create a copy of Channel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChannelCopyWith<Channel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelCopyWith<$Res> {
  factory $ChannelCopyWith(Channel value, $Res Function(Channel) then) =
      _$ChannelCopyWithImpl<$Res, Channel>;
  @useResult
  $Res call(
      {ChannelId id,
      String title,
      String logoUrl,
      String bannerUrl,
      int? subscribersCount});

  $ChannelIdCopyWith<$Res> get id;
}

/// @nodoc
class _$ChannelCopyWithImpl<$Res, $Val extends Channel>
    implements $ChannelCopyWith<$Res> {
  _$ChannelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Channel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? logoUrl = null,
    Object? bannerUrl = null,
    Object? subscribersCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ChannelId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      logoUrl: null == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      bannerUrl: null == bannerUrl
          ? _value.bannerUrl
          : bannerUrl // ignore: cast_nullable_to_non_nullable
              as String,
      subscribersCount: freezed == subscribersCount
          ? _value.subscribersCount
          : subscribersCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of Channel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChannelIdCopyWith<$Res> get id {
    return $ChannelIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChannelImplCopyWith<$Res> implements $ChannelCopyWith<$Res> {
  factory _$$ChannelImplCopyWith(
          _$ChannelImpl value, $Res Function(_$ChannelImpl) then) =
      __$$ChannelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChannelId id,
      String title,
      String logoUrl,
      String bannerUrl,
      int? subscribersCount});

  @override
  $ChannelIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$ChannelImplCopyWithImpl<$Res>
    extends _$ChannelCopyWithImpl<$Res, _$ChannelImpl>
    implements _$$ChannelImplCopyWith<$Res> {
  __$$ChannelImplCopyWithImpl(
      _$ChannelImpl _value, $Res Function(_$ChannelImpl) _then)
      : super(_value, _then);

  /// Create a copy of Channel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? logoUrl = null,
    Object? bannerUrl = null,
    Object? subscribersCount = freezed,
  }) {
    return _then(_$ChannelImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ChannelId,
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      null == bannerUrl
          ? _value.bannerUrl
          : bannerUrl // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == subscribersCount
          ? _value.subscribersCount
          : subscribersCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ChannelImpl extends _Channel {
  const _$ChannelImpl(
      this.id, this.title, this.logoUrl, this.bannerUrl, this.subscribersCount)
      : super._();

  /// Channel ID.
  @override
  final ChannelId id;

  /// Channel title.
  @override
  final String title;

  /// URL of the channel's logo image.
  @override
  final String logoUrl;

  /// URL of the channel's banner image.
  @override
  final String bannerUrl;

  /// The (approximate) channel subscriber's count.
  @override
  final int? subscribersCount;

  @override
  String toString() {
    return 'Channel(id: $id, title: $title, logoUrl: $logoUrl, bannerUrl: $bannerUrl, subscribersCount: $subscribersCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.bannerUrl, bannerUrl) ||
                other.bannerUrl == bannerUrl) &&
            (identical(other.subscribersCount, subscribersCount) ||
                other.subscribersCount == subscribersCount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, logoUrl, bannerUrl, subscribersCount);

  /// Create a copy of Channel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelImplCopyWith<_$ChannelImpl> get copyWith =>
      __$$ChannelImplCopyWithImpl<_$ChannelImpl>(this, _$identity);
}

abstract class _Channel extends Channel {
  const factory _Channel(
      final ChannelId id,
      final String title,
      final String logoUrl,
      final String bannerUrl,
      final int? subscribersCount) = _$ChannelImpl;
  const _Channel._() : super._();

  /// Channel ID.
  @override
  ChannelId get id;

  /// Channel title.
  @override
  String get title;

  /// URL of the channel's logo image.
  @override
  String get logoUrl;

  /// URL of the channel's banner image.
  @override
  String get bannerUrl;

  /// The (approximate) channel subscriber's count.
  @override
  int? get subscribersCount;

  /// Create a copy of Channel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChannelImplCopyWith<_$ChannelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
