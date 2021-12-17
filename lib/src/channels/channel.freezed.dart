// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'channel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChannelTearOff {
  const _$ChannelTearOff();

  _Channel call(
      ChannelId id, String title, String logoUrl, int? subscribersCount) {
    return _Channel(
      id,
      title,
      logoUrl,
      subscribersCount,
    );
  }
}

/// @nodoc
const $Channel = _$ChannelTearOff();

/// @nodoc
mixin _$Channel {
  /// Channel ID.
  ChannelId get id => throw _privateConstructorUsedError;

  /// Channel title.
  String get title => throw _privateConstructorUsedError;

  /// URL of the channel's logo image.
  String get logoUrl => throw _privateConstructorUsedError;

  /// The (approximate) channel subscriber's count.
  int? get subscribersCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChannelCopyWith<Channel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelCopyWith<$Res> {
  factory $ChannelCopyWith(Channel value, $Res Function(Channel) then) =
      _$ChannelCopyWithImpl<$Res>;
  $Res call(
      {ChannelId id, String title, String logoUrl, int? subscribersCount});

  $ChannelIdCopyWith<$Res> get id;
}

/// @nodoc
class _$ChannelCopyWithImpl<$Res> implements $ChannelCopyWith<$Res> {
  _$ChannelCopyWithImpl(this._value, this._then);

  final Channel _value;
  // ignore: unused_field
  final $Res Function(Channel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? logoUrl = freezed,
    Object? subscribersCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ChannelId,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      logoUrl: logoUrl == freezed
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      subscribersCount: subscribersCount == freezed
          ? _value.subscribersCount
          : subscribersCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $ChannelIdCopyWith<$Res> get id {
    return $ChannelIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value));
    });
  }
}

/// @nodoc
abstract class _$ChannelCopyWith<$Res> implements $ChannelCopyWith<$Res> {
  factory _$ChannelCopyWith(_Channel value, $Res Function(_Channel) then) =
      __$ChannelCopyWithImpl<$Res>;
  @override
  $Res call(
      {ChannelId id, String title, String logoUrl, int? subscribersCount});

  @override
  $ChannelIdCopyWith<$Res> get id;
}

/// @nodoc
class __$ChannelCopyWithImpl<$Res> extends _$ChannelCopyWithImpl<$Res>
    implements _$ChannelCopyWith<$Res> {
  __$ChannelCopyWithImpl(_Channel _value, $Res Function(_Channel) _then)
      : super(_value, (v) => _then(v as _Channel));

  @override
  _Channel get _value => super._value as _Channel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? logoUrl = freezed,
    Object? subscribersCount = freezed,
  }) {
    return _then(_Channel(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ChannelId,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      logoUrl == freezed
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      subscribersCount == freezed
          ? _value.subscribersCount
          : subscribersCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_Channel extends _Channel {
  const _$_Channel(this.id, this.title, this.logoUrl, this.subscribersCount)
      : super._();

  @override

  /// Channel ID.
  final ChannelId id;
  @override

  /// Channel title.
  final String title;
  @override

  /// URL of the channel's logo image.
  final String logoUrl;
  @override

  /// The (approximate) channel subscriber's count.
  final int? subscribersCount;

  @override
  String toString() {
    return 'Channel(id: $id, title: $title, logoUrl: $logoUrl, subscribersCount: $subscribersCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Channel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.logoUrl, logoUrl) &&
            const DeepCollectionEquality()
                .equals(other.subscribersCount, subscribersCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(logoUrl),
      const DeepCollectionEquality().hash(subscribersCount));

  @JsonKey(ignore: true)
  @override
  _$ChannelCopyWith<_Channel> get copyWith =>
      __$ChannelCopyWithImpl<_Channel>(this, _$identity);
}

abstract class _Channel extends Channel {
  const factory _Channel(
          ChannelId id, String title, String logoUrl, int? subscribersCount) =
      _$_Channel;
  const _Channel._() : super._();

  @override

  /// Channel ID.
  ChannelId get id;
  @override

  /// Channel title.
  String get title;
  @override

  /// URL of the channel's logo image.
  String get logoUrl;
  @override

  /// The (approximate) channel subscriber's count.
  int? get subscribersCount;
  @override
  @JsonKey(ignore: true)
  _$ChannelCopyWith<_Channel> get copyWith =>
      throw _privateConstructorUsedError;
}
