// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChannelLink {
  /// Link title.
  String get title => throw _privateConstructorUsedError;

  /// Link URL.
  /// Already decoded with the YouTube shortener already taken out.
  Uri get url => throw _privateConstructorUsedError;

  /// Link Icon URL.
  @Deprecated(
      'As of at least 26-08-2023 YT no longer provides icons for links, so this URI is always empty')
  Uri get icon => throw _privateConstructorUsedError;

  /// Create a copy of ChannelLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChannelLinkCopyWith<ChannelLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelLinkCopyWith<$Res> {
  factory $ChannelLinkCopyWith(
          ChannelLink value, $Res Function(ChannelLink) then) =
      _$ChannelLinkCopyWithImpl<$Res, ChannelLink>;
  @useResult
  $Res call(
      {String title,
      Uri url,
      @Deprecated(
          'As of at least 26-08-2023 YT no longer provides icons for links, so this URI is always empty')
      Uri icon});
}

/// @nodoc
class _$ChannelLinkCopyWithImpl<$Res, $Val extends ChannelLink>
    implements $ChannelLinkCopyWith<$Res> {
  _$ChannelLinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChannelLink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? url = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Uri,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChannelLinkImplCopyWith<$Res>
    implements $ChannelLinkCopyWith<$Res> {
  factory _$$ChannelLinkImplCopyWith(
          _$ChannelLinkImpl value, $Res Function(_$ChannelLinkImpl) then) =
      __$$ChannelLinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      Uri url,
      @Deprecated(
          'As of at least 26-08-2023 YT no longer provides icons for links, so this URI is always empty')
      Uri icon});
}

/// @nodoc
class __$$ChannelLinkImplCopyWithImpl<$Res>
    extends _$ChannelLinkCopyWithImpl<$Res, _$ChannelLinkImpl>
    implements _$$ChannelLinkImplCopyWith<$Res> {
  __$$ChannelLinkImplCopyWithImpl(
      _$ChannelLinkImpl _value, $Res Function(_$ChannelLinkImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChannelLink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? url = null,
    Object? icon = null,
  }) {
    return _then(_$ChannelLinkImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
      null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc

class _$ChannelLinkImpl implements _ChannelLink {
  const _$ChannelLinkImpl(
      this.title,
      this.url,
      @Deprecated(
          'As of at least 26-08-2023 YT no longer provides icons for links, so this URI is always empty')
      this.icon);

  /// Link title.
  @override
  final String title;

  /// Link URL.
  /// Already decoded with the YouTube shortener already taken out.
  @override
  final Uri url;

  /// Link Icon URL.
  @override
  @Deprecated(
      'As of at least 26-08-2023 YT no longer provides icons for links, so this URI is always empty')
  final Uri icon;

  @override
  String toString() {
    return 'ChannelLink(title: $title, url: $url, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelLinkImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, url, icon);

  /// Create a copy of ChannelLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelLinkImplCopyWith<_$ChannelLinkImpl> get copyWith =>
      __$$ChannelLinkImplCopyWithImpl<_$ChannelLinkImpl>(this, _$identity);
}

abstract class _ChannelLink implements ChannelLink {
  const factory _ChannelLink(
      final String title,
      final Uri url,
      @Deprecated(
          'As of at least 26-08-2023 YT no longer provides icons for links, so this URI is always empty')
      final Uri icon) = _$ChannelLinkImpl;

  /// Link title.
  @override
  String get title;

  /// Link URL.
  /// Already decoded with the YouTube shortener already taken out.
  @override
  Uri get url;

  /// Link Icon URL.
  @override
  @Deprecated(
      'As of at least 26-08-2023 YT no longer provides icons for links, so this URI is always empty')
  Uri get icon;

  /// Create a copy of ChannelLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChannelLinkImplCopyWith<_$ChannelLinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
