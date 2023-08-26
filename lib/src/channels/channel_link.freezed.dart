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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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

  @JsonKey(ignore: true)
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
abstract class _$$_ChannelLinkCopyWith<$Res>
    implements $ChannelLinkCopyWith<$Res> {
  factory _$$_ChannelLinkCopyWith(
          _$_ChannelLink value, $Res Function(_$_ChannelLink) then) =
      __$$_ChannelLinkCopyWithImpl<$Res>;
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
class __$$_ChannelLinkCopyWithImpl<$Res>
    extends _$ChannelLinkCopyWithImpl<$Res, _$_ChannelLink>
    implements _$$_ChannelLinkCopyWith<$Res> {
  __$$_ChannelLinkCopyWithImpl(
      _$_ChannelLink _value, $Res Function(_$_ChannelLink) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? url = null,
    Object? icon = null,
  }) {
    return _then(_$_ChannelLink(
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

class _$_ChannelLink implements _ChannelLink {
  const _$_ChannelLink(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChannelLink &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, url, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChannelLinkCopyWith<_$_ChannelLink> get copyWith =>
      __$$_ChannelLinkCopyWithImpl<_$_ChannelLink>(this, _$identity);
}

abstract class _ChannelLink implements ChannelLink {
  const factory _ChannelLink(
      final String title,
      final Uri url,
      @Deprecated(
          'As of at least 26-08-2023 YT no longer provides icons for links, so this URI is always empty')
      final Uri icon) = _$_ChannelLink;

  @override

  /// Link title.
  String get title;
  @override

  /// Link URL.
  /// Already decoded with the YouTube shortener already taken out.
  Uri get url;
  @override

  /// Link Icon URL.
  @Deprecated(
      'As of at least 26-08-2023 YT no longer provides icons for links, so this URI is always empty')
  Uri get icon;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelLinkCopyWith<_$_ChannelLink> get copyWith =>
      throw _privateConstructorUsedError;
}
