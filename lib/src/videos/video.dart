import 'dart:collection';

import 'package:equatable/equatable.dart';

import '../channels/channel_id.dart';
import '../common/common.dart';
import '../reverse_engineering/responses/responses.dart';
import 'video_id.dart';

/// YouTube video metadata.
class Video with EquatableMixin {
  /// Video ID.
  final VideoId id;

  /// Video URL.
  String get url => 'https://www.youtube.com/watch?v=$id';

  /// Video title.
  final String title;

  /// Video author.
  final String author;

  /// Video author Id.
  /// Note: null if the video is from a search query.
  final ChannelId channelId;

  /// Video upload date.
  /// Note: For search queries it is calculated with:
  ///   DateTime.now() - how much time is was published.
  final DateTime? uploadDate;

  /// Video description.
  final String description;

  /// Duration of the video.
  final Duration duration;

  /// Available thumbnails for this video.
  final ThumbnailSet thumbnails;

  /// Search keywords used for this video.
  final UnmodifiableListView<String> keywords;

  /// Engagement statistics for this video.
  final Engagement engagement;

  /// Returns true if this is a live stream.
  final bool? isLive;

  /// Used internally.
  /// Shouldn't be used in the code.
  final WatchPage? watchPage;

  /// Returns true if the watch page is available for this video.
  bool get hasWatchPage => watchPage != null;

  /// Initializes an instance of [Video]
  Video(
      this.id,
      this.title,
      this.author,
      this.channelId,
      this.uploadDate,
      this.description,
      this.duration,
      this.thumbnails,
      Iterable<String>? keywords,
      this.engagement,
      this.isLive, // ignore: avoid_positional_boolean_parameters
      [this.watchPage])
      : keywords = UnmodifiableListView(keywords ?? []);

  @override
  String toString() => 'Video ($title)';

  @override
  List<Object> get props => [id];
}

/// See [Video].
/// This class has no nullable values.
class SafeVideo extends Video {
  @override
  final DateTime uploadDate;

  @override
  final SafeEngagement engagement;

  @override
  final bool isLive;

  ///
  SafeVideo(
      VideoId id,
      String title,
      String author,
      ChannelId channelId,
      this.uploadDate,
      String description,
      Duration duration,
      ThumbnailSet thumbnails,
      Iterable<String>? keywords,
      this.engagement,
      this.isLive, // ignore: avoid_positional_boolean_parameters
      [WatchPage? watchPage])
      : super(id, title, author, channelId, uploadDate, description, duration,
            thumbnails, keywords, engagement, isLive, watchPage);
}
