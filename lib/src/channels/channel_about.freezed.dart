// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_about.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChannelAbout {
  /// Full channel description.
  String? get description => throw _privateConstructorUsedError;

  /// Channel view count.
  int? get viewCount => throw _privateConstructorUsedError;

  /// Channel join date.
  /// Formatted as: Gen 01, 2000
  String? get joinDate => throw _privateConstructorUsedError;

  /// Channel title.
  String get title => throw _privateConstructorUsedError;

  /// Channel thumbnails.
  List<Thumbnail> get thumbnails => throw _privateConstructorUsedError;

  /// Channel country.
  String? get country => throw _privateConstructorUsedError;

  /// Channel links.
  List<ChannelLink> get channelLinks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChannelAboutCopyWith<ChannelAbout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelAboutCopyWith<$Res> {
  factory $ChannelAboutCopyWith(
          ChannelAbout value, $Res Function(ChannelAbout) then) =
      _$ChannelAboutCopyWithImpl<$Res, ChannelAbout>;
  @useResult
  $Res call(
      {String? description,
      int? viewCount,
      String? joinDate,
      String title,
      List<Thumbnail> thumbnails,
      String? country,
      List<ChannelLink> channelLinks});
}

/// @nodoc
class _$ChannelAboutCopyWithImpl<$Res, $Val extends ChannelAbout>
    implements $ChannelAboutCopyWith<$Res> {
  _$ChannelAboutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? viewCount = freezed,
    Object? joinDate = freezed,
    Object? title = null,
    Object? thumbnails = null,
    Object? country = freezed,
    Object? channelLinks = null,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      viewCount: freezed == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      joinDate: freezed == joinDate
          ? _value.joinDate
          : joinDate // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnails: null == thumbnails
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<Thumbnail>,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      channelLinks: null == channelLinks
          ? _value.channelLinks
          : channelLinks // ignore: cast_nullable_to_non_nullable
              as List<ChannelLink>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChannelAboutCopyWith<$Res>
    implements $ChannelAboutCopyWith<$Res> {
  factory _$$_ChannelAboutCopyWith(
          _$_ChannelAbout value, $Res Function(_$_ChannelAbout) then) =
      __$$_ChannelAboutCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? description,
      int? viewCount,
      String? joinDate,
      String title,
      List<Thumbnail> thumbnails,
      String? country,
      List<ChannelLink> channelLinks});
}

/// @nodoc
class __$$_ChannelAboutCopyWithImpl<$Res>
    extends _$ChannelAboutCopyWithImpl<$Res, _$_ChannelAbout>
    implements _$$_ChannelAboutCopyWith<$Res> {
  __$$_ChannelAboutCopyWithImpl(
      _$_ChannelAbout _value, $Res Function(_$_ChannelAbout) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? viewCount = freezed,
    Object? joinDate = freezed,
    Object? title = null,
    Object? thumbnails = null,
    Object? country = freezed,
    Object? channelLinks = null,
  }) {
    return _then(_$_ChannelAbout(
      freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == joinDate
          ? _value.joinDate
          : joinDate // ignore: cast_nullable_to_non_nullable
              as String?,
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == thumbnails
          ? _value._thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<Thumbnail>,
      freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      null == channelLinks
          ? _value._channelLinks
          : channelLinks // ignore: cast_nullable_to_non_nullable
              as List<ChannelLink>,
    ));
  }
}

/// @nodoc

class _$_ChannelAbout implements _ChannelAbout {
  const _$_ChannelAbout(
      this.description,
      this.viewCount,
      this.joinDate,
      this.title,
      final List<Thumbnail> thumbnails,
      this.country,
      final List<ChannelLink> channelLinks)
      : _thumbnails = thumbnails,
        _channelLinks = channelLinks;

  /// Full channel description.
  @override
  final String? description;

  /// Channel view count.
  @override
  final int? viewCount;

  /// Channel join date.
  /// Formatted as: Gen 01, 2000
  @override
  final String? joinDate;

  /// Channel title.
  @override
  final String title;

  /// Channel thumbnails.
  final List<Thumbnail> _thumbnails;

  /// Channel thumbnails.
  @override
  List<Thumbnail> get thumbnails {
    if (_thumbnails is EqualUnmodifiableListView) return _thumbnails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_thumbnails);
  }

  /// Channel country.
  @override
  final String? country;

  /// Channel links.
  final List<ChannelLink> _channelLinks;

  /// Channel links.
  @override
  List<ChannelLink> get channelLinks {
    if (_channelLinks is EqualUnmodifiableListView) return _channelLinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_channelLinks);
  }

  @override
  String toString() {
    return 'ChannelAbout(description: $description, viewCount: $viewCount, joinDate: $joinDate, title: $title, thumbnails: $thumbnails, country: $country, channelLinks: $channelLinks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChannelAbout &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.joinDate, joinDate) ||
                other.joinDate == joinDate) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._thumbnails, _thumbnails) &&
            (identical(other.country, country) || other.country == country) &&
            const DeepCollectionEquality()
                .equals(other._channelLinks, _channelLinks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      description,
      viewCount,
      joinDate,
      title,
      const DeepCollectionEquality().hash(_thumbnails),
      country,
      const DeepCollectionEquality().hash(_channelLinks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChannelAboutCopyWith<_$_ChannelAbout> get copyWith =>
      __$$_ChannelAboutCopyWithImpl<_$_ChannelAbout>(this, _$identity);
}

abstract class _ChannelAbout implements ChannelAbout {
  const factory _ChannelAbout(
      final String? description,
      final int? viewCount,
      final String? joinDate,
      final String title,
      final List<Thumbnail> thumbnails,
      final String? country,
      final List<ChannelLink> channelLinks) = _$_ChannelAbout;

  @override

  /// Full channel description.
  String? get description;
  @override

  /// Channel view count.
  int? get viewCount;
  @override

  /// Channel join date.
  /// Formatted as: Gen 01, 2000
  String? get joinDate;
  @override

  /// Channel title.
  String get title;
  @override

  /// Channel thumbnails.
  List<Thumbnail> get thumbnails;
  @override

  /// Channel country.
  String? get country;
  @override

  /// Channel links.
  List<ChannelLink> get channelLinks;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelAboutCopyWith<_$_ChannelAbout> get copyWith =>
      throw _privateConstructorUsedError;
}
