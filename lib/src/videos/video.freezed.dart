// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'video.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VideoTearOff {
  const _$VideoTearOff();

  _Video _internal(
      VideoId id,
      String title,
      String author,
      ChannelId channelId,
      DateTime? uploadDate,
      String? uploadDateRaw,
      DateTime? publishDate,
      String description,
      Duration? duration,
      ThumbnailSet thumbnails,
      UnmodifiableListView<String> keywords,
      Engagement engagement,
      bool isLive,
      [@internal WatchPage? watchPage]) {
    return _Video(
      id,
      title,
      author,
      channelId,
      uploadDate,
      uploadDateRaw,
      publishDate,
      description,
      duration,
      thumbnails,
      keywords,
      engagement,
      isLive,
      watchPage,
    );
  }
}

/// @nodoc
const $Video = _$VideoTearOff();

/// @nodoc
mixin _$Video {
  /// Video ID.
  VideoId get id => throw _privateConstructorUsedError;

  /// Video title.
  String get title => throw _privateConstructorUsedError;

  /// Video author.
  String get author => throw _privateConstructorUsedError;

  /// Video author Id.
  ChannelId get channelId => throw _privateConstructorUsedError;

  /// Video upload date.
  /// Note: For search queries it is calculated with:
  ///   DateTime.now() - how much time is was published.
  DateTime? get uploadDate => throw _privateConstructorUsedError;
  String? get uploadDateRaw => throw _privateConstructorUsedError;

  /// Video publish date.
  DateTime? get publishDate => throw _privateConstructorUsedError;

  /// Video description.
  String get description => throw _privateConstructorUsedError;

  /// Duration of the video.
  Duration? get duration => throw _privateConstructorUsedError;

  /// Available thumbnails for this video.
  ThumbnailSet get thumbnails => throw _privateConstructorUsedError;

  /// Search keywords used for this video.
  UnmodifiableListView<String> get keywords =>
      throw _privateConstructorUsedError;

  /// Engagement statistics for this video.
  Engagement get engagement => throw _privateConstructorUsedError;

  /// Returns true if this is a live stream.
//ignore: avoid_positional_boolean_parameters
  bool get isLive => throw _privateConstructorUsedError;

  /// Used internally.
  /// Shouldn't be used in the code.
  @internal
  WatchPage? get watchPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoCopyWith<Video> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCopyWith<$Res> {
  factory $VideoCopyWith(Video value, $Res Function(Video) then) =
      _$VideoCopyWithImpl<$Res>;
  $Res call(
      {VideoId id,
      String title,
      String author,
      ChannelId channelId,
      DateTime? uploadDate,
      String? uploadDateRaw,
      DateTime? publishDate,
      String description,
      Duration? duration,
      ThumbnailSet thumbnails,
      UnmodifiableListView<String> keywords,
      Engagement engagement,
      bool isLive,
      @internal WatchPage? watchPage});

  $VideoIdCopyWith<$Res> get id;
  $ChannelIdCopyWith<$Res> get channelId;
  $ThumbnailSetCopyWith<$Res> get thumbnails;
  $EngagementCopyWith<$Res> get engagement;
}

/// @nodoc
class _$VideoCopyWithImpl<$Res> implements $VideoCopyWith<$Res> {
  _$VideoCopyWithImpl(this._value, this._then);

  final Video _value;
  // ignore: unused_field
  final $Res Function(Video) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? author = freezed,
    Object? channelId = freezed,
    Object? uploadDate = freezed,
    Object? uploadDateRaw = freezed,
    Object? publishDate = freezed,
    Object? description = freezed,
    Object? duration = freezed,
    Object? thumbnails = freezed,
    Object? keywords = freezed,
    Object? engagement = freezed,
    Object? isLive = freezed,
    Object? watchPage = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as VideoId,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      channelId: channelId == freezed
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as ChannelId,
      uploadDate: uploadDate == freezed
          ? _value.uploadDate
          : uploadDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      uploadDateRaw: uploadDateRaw == freezed
          ? _value.uploadDateRaw
          : uploadDateRaw // ignore: cast_nullable_to_non_nullable
              as String?,
      publishDate: publishDate == freezed
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as ThumbnailSet,
      keywords: keywords == freezed
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as UnmodifiableListView<String>,
      engagement: engagement == freezed
          ? _value.engagement
          : engagement // ignore: cast_nullable_to_non_nullable
              as Engagement,
      isLive: isLive == freezed
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool,
      watchPage: watchPage == freezed
          ? _value.watchPage
          : watchPage // ignore: cast_nullable_to_non_nullable
              as WatchPage?,
    ));
  }

  @override
  $VideoIdCopyWith<$Res> get id {
    return $VideoIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value));
    });
  }

  @override
  $ChannelIdCopyWith<$Res> get channelId {
    return $ChannelIdCopyWith<$Res>(_value.channelId, (value) {
      return _then(_value.copyWith(channelId: value));
    });
  }

  @override
  $ThumbnailSetCopyWith<$Res> get thumbnails {
    return $ThumbnailSetCopyWith<$Res>(_value.thumbnails, (value) {
      return _then(_value.copyWith(thumbnails: value));
    });
  }

  @override
  $EngagementCopyWith<$Res> get engagement {
    return $EngagementCopyWith<$Res>(_value.engagement, (value) {
      return _then(_value.copyWith(engagement: value));
    });
  }
}

/// @nodoc
abstract class _$VideoCopyWith<$Res> implements $VideoCopyWith<$Res> {
  factory _$VideoCopyWith(_Video value, $Res Function(_Video) then) =
      __$VideoCopyWithImpl<$Res>;
  @override
  $Res call(
      {VideoId id,
      String title,
      String author,
      ChannelId channelId,
      DateTime? uploadDate,
      String? uploadDateRaw,
      DateTime? publishDate,
      String description,
      Duration? duration,
      ThumbnailSet thumbnails,
      UnmodifiableListView<String> keywords,
      Engagement engagement,
      bool isLive,
      @internal WatchPage? watchPage});

  @override
  $VideoIdCopyWith<$Res> get id;
  @override
  $ChannelIdCopyWith<$Res> get channelId;
  @override
  $ThumbnailSetCopyWith<$Res> get thumbnails;
  @override
  $EngagementCopyWith<$Res> get engagement;
}

/// @nodoc
class __$VideoCopyWithImpl<$Res> extends _$VideoCopyWithImpl<$Res>
    implements _$VideoCopyWith<$Res> {
  __$VideoCopyWithImpl(_Video _value, $Res Function(_Video) _then)
      : super(_value, (v) => _then(v as _Video));

  @override
  _Video get _value => super._value as _Video;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? author = freezed,
    Object? channelId = freezed,
    Object? uploadDate = freezed,
    Object? uploadDateRaw = freezed,
    Object? publishDate = freezed,
    Object? description = freezed,
    Object? duration = freezed,
    Object? thumbnails = freezed,
    Object? keywords = freezed,
    Object? engagement = freezed,
    Object? isLive = freezed,
    Object? watchPage = freezed,
  }) {
    return _then(_Video(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as VideoId,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      channelId == freezed
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as ChannelId,
      uploadDate == freezed
          ? _value.uploadDate
          : uploadDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      uploadDateRaw == freezed
          ? _value.uploadDateRaw
          : uploadDateRaw // ignore: cast_nullable_to_non_nullable
              as String?,
      publishDate == freezed
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as ThumbnailSet,
      keywords == freezed
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as UnmodifiableListView<String>,
      engagement == freezed
          ? _value.engagement
          : engagement // ignore: cast_nullable_to_non_nullable
              as Engagement,
      isLive == freezed
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool,
      watchPage == freezed
          ? _value.watchPage
          : watchPage // ignore: cast_nullable_to_non_nullable
              as WatchPage?,
    ));
  }
}

/// @nodoc

class _$_Video extends _Video {
  const _$_Video(
      this.id,
      this.title,
      this.author,
      this.channelId,
      this.uploadDate,
      this.uploadDateRaw,
      this.publishDate,
      this.description,
      this.duration,
      this.thumbnails,
      this.keywords,
      this.engagement,
      this.isLive,
      [@internal this.watchPage])
      : super._();

  @override

  /// Video ID.
  final VideoId id;
  @override

  /// Video title.
  final String title;
  @override

  /// Video author.
  final String author;
  @override

  /// Video author Id.
  final ChannelId channelId;
  @override

  /// Video upload date.
  /// Note: For search queries it is calculated with:
  ///   DateTime.now() - how much time is was published.
  final DateTime? uploadDate;
  @override
  final String? uploadDateRaw;
  @override

  /// Video publish date.
  final DateTime? publishDate;
  @override

  /// Video description.
  final String description;
  @override

  /// Duration of the video.
  final Duration? duration;
  @override

  /// Available thumbnails for this video.
  final ThumbnailSet thumbnails;
  @override

  /// Search keywords used for this video.
  final UnmodifiableListView<String> keywords;
  @override

  /// Engagement statistics for this video.
  final Engagement engagement;
  @override

  /// Returns true if this is a live stream.
//ignore: avoid_positional_boolean_parameters
  final bool isLive;
  @override

  /// Used internally.
  /// Shouldn't be used in the code.
  @internal
  final WatchPage? watchPage;

  @override
  String toString() {
    return 'Video._internal(id: $id, title: $title, author: $author, channelId: $channelId, uploadDate: $uploadDate, uploadDateRaw: $uploadDateRaw, publishDate: $publishDate, description: $description, duration: $duration, thumbnails: $thumbnails, keywords: $keywords, engagement: $engagement, isLive: $isLive, watchPage: $watchPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Video &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.channelId, channelId) &&
            const DeepCollectionEquality()
                .equals(other.uploadDate, uploadDate) &&
            const DeepCollectionEquality()
                .equals(other.uploadDateRaw, uploadDateRaw) &&
            const DeepCollectionEquality()
                .equals(other.publishDate, publishDate) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality()
                .equals(other.thumbnails, thumbnails) &&
            const DeepCollectionEquality().equals(other.keywords, keywords) &&
            const DeepCollectionEquality()
                .equals(other.engagement, engagement) &&
            const DeepCollectionEquality().equals(other.isLive, isLive) &&
            const DeepCollectionEquality().equals(other.watchPage, watchPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(channelId),
      const DeepCollectionEquality().hash(uploadDate),
      const DeepCollectionEquality().hash(uploadDateRaw),
      const DeepCollectionEquality().hash(publishDate),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(thumbnails),
      const DeepCollectionEquality().hash(keywords),
      const DeepCollectionEquality().hash(engagement),
      const DeepCollectionEquality().hash(isLive),
      const DeepCollectionEquality().hash(watchPage));

  @JsonKey(ignore: true)
  @override
  _$VideoCopyWith<_Video> get copyWith =>
      __$VideoCopyWithImpl<_Video>(this, _$identity);
}

abstract class _Video extends Video {
  const factory _Video(
      VideoId id,
      String title,
      String author,
      ChannelId channelId,
      DateTime? uploadDate,
      String? uploadDateRaw,
      DateTime? publishDate,
      String description,
      Duration? duration,
      ThumbnailSet thumbnails,
      UnmodifiableListView<String> keywords,
      Engagement engagement,
      bool isLive,
      [@internal WatchPage? watchPage]) = _$_Video;
  const _Video._() : super._();

  @override

  /// Video ID.
  VideoId get id;
  @override

  /// Video title.
  String get title;
  @override

  /// Video author.
  String get author;
  @override

  /// Video author Id.
  ChannelId get channelId;
  @override

  /// Video upload date.
  /// Note: For search queries it is calculated with:
  ///   DateTime.now() - how much time is was published.
  DateTime? get uploadDate;
  @override
  String? get uploadDateRaw;
  @override

  /// Video publish date.
  DateTime? get publishDate;
  @override

  /// Video description.
  String get description;
  @override

  /// Duration of the video.
  Duration? get duration;
  @override

  /// Available thumbnails for this video.
  ThumbnailSet get thumbnails;
  @override

  /// Search keywords used for this video.
  UnmodifiableListView<String> get keywords;
  @override

  /// Engagement statistics for this video.
  Engagement get engagement;
  @override

  /// Returns true if this is a live stream.
//ignore: avoid_positional_boolean_parameters
  bool get isLive;
  @override

  /// Used internally.
  /// Shouldn't be used in the code.
  @internal
  WatchPage? get watchPage;
  @override
  @JsonKey(ignore: true)
  _$VideoCopyWith<_Video> get copyWith => throw _privateConstructorUsedError;
}
