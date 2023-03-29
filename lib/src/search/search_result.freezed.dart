// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchResult {
  /// Video ID.
  Object get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            VideoId id,
            String title,
            String author,
            String description,
            String duration,
            int viewCount,
            List<Thumbnail> thumbnails,
            String? uploadDate,
            bool isLive,
            String channelId)
        video,
    required TResult Function(PlaylistId id, String title, int videoCount,
            List<Thumbnail> thumbnails)
        playlist,
    required TResult Function(
            ChannelId id, String name, String description, int videoCount)
        channel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            VideoId id,
            String title,
            String author,
            String description,
            String duration,
            int viewCount,
            List<Thumbnail> thumbnails,
            String? uploadDate,
            bool isLive,
            String channelId)?
        video,
    TResult? Function(PlaylistId id, String title, int videoCount,
            List<Thumbnail> thumbnails)?
        playlist,
    TResult? Function(
            ChannelId id, String name, String description, int videoCount)?
        channel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            VideoId id,
            String title,
            String author,
            String description,
            String duration,
            int viewCount,
            List<Thumbnail> thumbnails,
            String? uploadDate,
            bool isLive,
            String channelId)?
        video,
    TResult Function(PlaylistId id, String title, int videoCount,
            List<Thumbnail> thumbnails)?
        playlist,
    TResult Function(
            ChannelId id, String name, String description, int videoCount)?
        channel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchVideo value) video,
    required TResult Function(SearchPlaylist value) playlist,
    required TResult Function(SearchChannel value) channel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchVideo value)? video,
    TResult? Function(SearchPlaylist value)? playlist,
    TResult? Function(SearchChannel value)? channel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchVideo value)? video,
    TResult Function(SearchPlaylist value)? playlist,
    TResult Function(SearchChannel value)? channel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultCopyWith<$Res> {
  factory $SearchResultCopyWith(
          SearchResult value, $Res Function(SearchResult) then) =
      _$SearchResultCopyWithImpl<$Res, SearchResult>;
}

/// @nodoc
class _$SearchResultCopyWithImpl<$Res, $Val extends SearchResult>
    implements $SearchResultCopyWith<$Res> {
  _$SearchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchVideoCopyWith<$Res> {
  factory _$$SearchVideoCopyWith(
          _$SearchVideo value, $Res Function(_$SearchVideo) then) =
      __$$SearchVideoCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {VideoId id,
      String title,
      String author,
      String description,
      String duration,
      int viewCount,
      List<Thumbnail> thumbnails,
      String? uploadDate,
      bool isLive,
      String channelId});

  $VideoIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$SearchVideoCopyWithImpl<$Res>
    extends _$SearchResultCopyWithImpl<$Res, _$SearchVideo>
    implements _$$SearchVideoCopyWith<$Res> {
  __$$SearchVideoCopyWithImpl(
      _$SearchVideo _value, $Res Function(_$SearchVideo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
    Object? description = null,
    Object? duration = null,
    Object? viewCount = null,
    Object? thumbnails = null,
    Object? uploadDate = freezed,
    Object? isLive = null,
    Object? channelId = null,
  }) {
    return _then(_$SearchVideo(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as VideoId,
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      null == thumbnails
          ? _value._thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<Thumbnail>,
      freezed == uploadDate
          ? _value.uploadDate
          : uploadDate // ignore: cast_nullable_to_non_nullable
              as String?,
      null == isLive
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool,
      null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $VideoIdCopyWith<$Res> get id {
    return $VideoIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value));
    });
  }
}

/// @nodoc

class _$SearchVideo extends SearchVideo {
  const _$SearchVideo(
      this.id,
      this.title,
      this.author,
      this.description,
      this.duration,
      this.viewCount,
      final List<Thumbnail> thumbnails,
      this.uploadDate,
      this.isLive,
      this.channelId)
      : _thumbnails = thumbnails,
        super._();

  /// Video ID.
  @override
  final VideoId id;

  /// Video title.
  @override
  final String title;

  /// Video author.
  @override
  final String author;

  /// Video description snippet. (Part of the full description if too long)
  @override
  final String description;

  /// Video duration as String, HH:MM:SS
  @override
  final String duration;

  /// Video View Count
  @override
  final int viewCount;

  /// Video thumbnail
  final List<Thumbnail> _thumbnails;

  /// Video thumbnail
  @override
  List<Thumbnail> get thumbnails {
    if (_thumbnails is EqualUnmodifiableListView) return _thumbnails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_thumbnails);
  }

  /// Video upload date - As string: 5 years ago.
  @override
  final String? uploadDate;

  /// True if this video is a live stream.
  @override
  final bool isLive;

  /// Channel id
  @override
  final String channelId;

  @override
  String toString() {
    return 'SearchResult.video(id: $id, title: $title, author: $author, description: $description, duration: $duration, viewCount: $viewCount, thumbnails: $thumbnails, uploadDate: $uploadDate, isLive: $isLive, channelId: $channelId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchVideo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            const DeepCollectionEquality()
                .equals(other._thumbnails, _thumbnails) &&
            (identical(other.uploadDate, uploadDate) ||
                other.uploadDate == uploadDate) &&
            (identical(other.isLive, isLive) || other.isLive == isLive) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      author,
      description,
      duration,
      viewCount,
      const DeepCollectionEquality().hash(_thumbnails),
      uploadDate,
      isLive,
      channelId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchVideoCopyWith<_$SearchVideo> get copyWith =>
      __$$SearchVideoCopyWithImpl<_$SearchVideo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            VideoId id,
            String title,
            String author,
            String description,
            String duration,
            int viewCount,
            List<Thumbnail> thumbnails,
            String? uploadDate,
            bool isLive,
            String channelId)
        video,
    required TResult Function(PlaylistId id, String title, int videoCount,
            List<Thumbnail> thumbnails)
        playlist,
    required TResult Function(
            ChannelId id, String name, String description, int videoCount)
        channel,
  }) {
    return video(id, title, author, description, duration, viewCount,
        thumbnails, uploadDate, isLive, channelId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            VideoId id,
            String title,
            String author,
            String description,
            String duration,
            int viewCount,
            List<Thumbnail> thumbnails,
            String? uploadDate,
            bool isLive,
            String channelId)?
        video,
    TResult? Function(PlaylistId id, String title, int videoCount,
            List<Thumbnail> thumbnails)?
        playlist,
    TResult? Function(
            ChannelId id, String name, String description, int videoCount)?
        channel,
  }) {
    return video?.call(id, title, author, description, duration, viewCount,
        thumbnails, uploadDate, isLive, channelId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            VideoId id,
            String title,
            String author,
            String description,
            String duration,
            int viewCount,
            List<Thumbnail> thumbnails,
            String? uploadDate,
            bool isLive,
            String channelId)?
        video,
    TResult Function(PlaylistId id, String title, int videoCount,
            List<Thumbnail> thumbnails)?
        playlist,
    TResult Function(
            ChannelId id, String name, String description, int videoCount)?
        channel,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(id, title, author, description, duration, viewCount,
          thumbnails, uploadDate, isLive, channelId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchVideo value) video,
    required TResult Function(SearchPlaylist value) playlist,
    required TResult Function(SearchChannel value) channel,
  }) {
    return video(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchVideo value)? video,
    TResult? Function(SearchPlaylist value)? playlist,
    TResult? Function(SearchChannel value)? channel,
  }) {
    return video?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchVideo value)? video,
    TResult Function(SearchPlaylist value)? playlist,
    TResult Function(SearchChannel value)? channel,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(this);
    }
    return orElse();
  }
}

abstract class SearchVideo extends SearchResult {
  const factory SearchVideo(
      final VideoId id,
      final String title,
      final String author,
      final String description,
      final String duration,
      final int viewCount,
      final List<Thumbnail> thumbnails,
      final String? uploadDate,
      final bool isLive,
      final String channelId) = _$SearchVideo;
  const SearchVideo._() : super._();

  @override

  /// Video ID.
  VideoId get id;

  /// Video title.
  String get title;

  /// Video author.
  String get author;

  /// Video description snippet. (Part of the full description if too long)
  String get description;

  /// Video duration as String, HH:MM:SS
  String get duration;

  /// Video View Count
  int get viewCount;

  /// Video thumbnail
  List<Thumbnail> get thumbnails;

  /// Video upload date - As string: 5 years ago.
  String? get uploadDate;

  /// True if this video is a live stream.
  bool get isLive;

  /// Channel id
  String get channelId;
  @JsonKey(ignore: true)
  _$$SearchVideoCopyWith<_$SearchVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchPlaylistCopyWith<$Res> {
  factory _$$SearchPlaylistCopyWith(
          _$SearchPlaylist value, $Res Function(_$SearchPlaylist) then) =
      __$$SearchPlaylistCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {PlaylistId id,
      String title,
      int videoCount,
      List<Thumbnail> thumbnails});

  $PlaylistIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$SearchPlaylistCopyWithImpl<$Res>
    extends _$SearchResultCopyWithImpl<$Res, _$SearchPlaylist>
    implements _$$SearchPlaylistCopyWith<$Res> {
  __$$SearchPlaylistCopyWithImpl(
      _$SearchPlaylist _value, $Res Function(_$SearchPlaylist) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? videoCount = null,
    Object? thumbnails = null,
  }) {
    return _then(_$SearchPlaylist(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as PlaylistId,
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == videoCount
          ? _value.videoCount
          : videoCount // ignore: cast_nullable_to_non_nullable
              as int,
      null == thumbnails
          ? _value._thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as List<Thumbnail>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaylistIdCopyWith<$Res> get id {
    return $PlaylistIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value));
    });
  }
}

/// @nodoc

class _$SearchPlaylist extends SearchPlaylist {
  const _$SearchPlaylist(
      this.id, this.title, this.videoCount, final List<Thumbnail> thumbnails)
      : _thumbnails = thumbnails,
        super._();

  /// PlaylistId.
  @override
  final PlaylistId id;

  /// Playlist title.
  @override
  final String title;

  /// Playlist video count, cannot be greater than 50.
  @override
  final int videoCount;

  /// Video thumbnail
  final List<Thumbnail> _thumbnails;

  /// Video thumbnail
  @override
  List<Thumbnail> get thumbnails {
    if (_thumbnails is EqualUnmodifiableListView) return _thumbnails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_thumbnails);
  }

  @override
  String toString() {
    return 'SearchResult.playlist(id: $id, title: $title, videoCount: $videoCount, thumbnails: $thumbnails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchPlaylist &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.videoCount, videoCount) ||
                other.videoCount == videoCount) &&
            const DeepCollectionEquality()
                .equals(other._thumbnails, _thumbnails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, videoCount,
      const DeepCollectionEquality().hash(_thumbnails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchPlaylistCopyWith<_$SearchPlaylist> get copyWith =>
      __$$SearchPlaylistCopyWithImpl<_$SearchPlaylist>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            VideoId id,
            String title,
            String author,
            String description,
            String duration,
            int viewCount,
            List<Thumbnail> thumbnails,
            String? uploadDate,
            bool isLive,
            String channelId)
        video,
    required TResult Function(PlaylistId id, String title, int videoCount,
            List<Thumbnail> thumbnails)
        playlist,
    required TResult Function(
            ChannelId id, String name, String description, int videoCount)
        channel,
  }) {
    return playlist(id, title, videoCount, thumbnails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            VideoId id,
            String title,
            String author,
            String description,
            String duration,
            int viewCount,
            List<Thumbnail> thumbnails,
            String? uploadDate,
            bool isLive,
            String channelId)?
        video,
    TResult? Function(PlaylistId id, String title, int videoCount,
            List<Thumbnail> thumbnails)?
        playlist,
    TResult? Function(
            ChannelId id, String name, String description, int videoCount)?
        channel,
  }) {
    return playlist?.call(id, title, videoCount, thumbnails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            VideoId id,
            String title,
            String author,
            String description,
            String duration,
            int viewCount,
            List<Thumbnail> thumbnails,
            String? uploadDate,
            bool isLive,
            String channelId)?
        video,
    TResult Function(PlaylistId id, String title, int videoCount,
            List<Thumbnail> thumbnails)?
        playlist,
    TResult Function(
            ChannelId id, String name, String description, int videoCount)?
        channel,
    required TResult orElse(),
  }) {
    if (playlist != null) {
      return playlist(id, title, videoCount, thumbnails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchVideo value) video,
    required TResult Function(SearchPlaylist value) playlist,
    required TResult Function(SearchChannel value) channel,
  }) {
    return playlist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchVideo value)? video,
    TResult? Function(SearchPlaylist value)? playlist,
    TResult? Function(SearchChannel value)? channel,
  }) {
    return playlist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchVideo value)? video,
    TResult Function(SearchPlaylist value)? playlist,
    TResult Function(SearchChannel value)? channel,
    required TResult orElse(),
  }) {
    if (playlist != null) {
      return playlist(this);
    }
    return orElse();
  }
}

abstract class SearchPlaylist extends SearchResult {
  const factory SearchPlaylist(
      final PlaylistId id,
      final String title,
      final int videoCount,
      final List<Thumbnail> thumbnails) = _$SearchPlaylist;
  const SearchPlaylist._() : super._();

  @override

  /// PlaylistId.
  PlaylistId get id;

  /// Playlist title.
  String get title;

  /// Playlist video count, cannot be greater than 50.
  int get videoCount;

  /// Video thumbnail
  List<Thumbnail> get thumbnails;
  @JsonKey(ignore: true)
  _$$SearchPlaylistCopyWith<_$SearchPlaylist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchChannelCopyWith<$Res> {
  factory _$$SearchChannelCopyWith(
          _$SearchChannel value, $Res Function(_$SearchChannel) then) =
      __$$SearchChannelCopyWithImpl<$Res>;
  @useResult
  $Res call({ChannelId id, String name, String description, int videoCount});

  $ChannelIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$SearchChannelCopyWithImpl<$Res>
    extends _$SearchResultCopyWithImpl<$Res, _$SearchChannel>
    implements _$$SearchChannelCopyWith<$Res> {
  __$$SearchChannelCopyWithImpl(
      _$SearchChannel _value, $Res Function(_$SearchChannel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? videoCount = null,
  }) {
    return _then(_$SearchChannel(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ChannelId,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      null == videoCount
          ? _value.videoCount
          : videoCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ChannelIdCopyWith<$Res> get id {
    return $ChannelIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value));
    });
  }
}

/// @nodoc

class _$SearchChannel extends SearchChannel {
  const _$SearchChannel(this.id, this.name, this.description, this.videoCount)
      : super._();

  /// Channel id.
  @override
  final ChannelId id;

  /// Channel name.
  @override
  final String name;

  /// Description snippet.
  /// Can be empty.
  @override
  final String description;

  /// Channel uploaded videos.
  @override
  final int videoCount;

  @override
  String toString() {
    return 'SearchResult.channel(id: $id, name: $name, description: $description, videoCount: $videoCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchChannel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.videoCount, videoCount) ||
                other.videoCount == videoCount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, videoCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchChannelCopyWith<_$SearchChannel> get copyWith =>
      __$$SearchChannelCopyWithImpl<_$SearchChannel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            VideoId id,
            String title,
            String author,
            String description,
            String duration,
            int viewCount,
            List<Thumbnail> thumbnails,
            String? uploadDate,
            bool isLive,
            String channelId)
        video,
    required TResult Function(PlaylistId id, String title, int videoCount,
            List<Thumbnail> thumbnails)
        playlist,
    required TResult Function(
            ChannelId id, String name, String description, int videoCount)
        channel,
  }) {
    return channel(id, name, description, videoCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            VideoId id,
            String title,
            String author,
            String description,
            String duration,
            int viewCount,
            List<Thumbnail> thumbnails,
            String? uploadDate,
            bool isLive,
            String channelId)?
        video,
    TResult? Function(PlaylistId id, String title, int videoCount,
            List<Thumbnail> thumbnails)?
        playlist,
    TResult? Function(
            ChannelId id, String name, String description, int videoCount)?
        channel,
  }) {
    return channel?.call(id, name, description, videoCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            VideoId id,
            String title,
            String author,
            String description,
            String duration,
            int viewCount,
            List<Thumbnail> thumbnails,
            String? uploadDate,
            bool isLive,
            String channelId)?
        video,
    TResult Function(PlaylistId id, String title, int videoCount,
            List<Thumbnail> thumbnails)?
        playlist,
    TResult Function(
            ChannelId id, String name, String description, int videoCount)?
        channel,
    required TResult orElse(),
  }) {
    if (channel != null) {
      return channel(id, name, description, videoCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchVideo value) video,
    required TResult Function(SearchPlaylist value) playlist,
    required TResult Function(SearchChannel value) channel,
  }) {
    return channel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchVideo value)? video,
    TResult? Function(SearchPlaylist value)? playlist,
    TResult? Function(SearchChannel value)? channel,
  }) {
    return channel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchVideo value)? video,
    TResult Function(SearchPlaylist value)? playlist,
    TResult Function(SearchChannel value)? channel,
    required TResult orElse(),
  }) {
    if (channel != null) {
      return channel(this);
    }
    return orElse();
  }
}

abstract class SearchChannel extends SearchResult {
  const factory SearchChannel(final ChannelId id, final String name,
      final String description, final int videoCount) = _$SearchChannel;
  const SearchChannel._() : super._();

  @override

  /// Channel id.
  ChannelId get id;

  /// Channel name.
  String get name;

  /// Description snippet.
  /// Can be empty.
  String get description;

  /// Channel uploaded videos.
  int get videoCount;
  @JsonKey(ignore: true)
  _$$SearchChannelCopyWith<_$SearchChannel> get copyWith =>
      throw _privateConstructorUsedError;
}
