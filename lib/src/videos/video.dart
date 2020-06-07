import 'dart:collection';

import '../common/common.dart';
import 'video_id.dart';

/// YouTube video metadata.
class Video {
  /// Video ID.
  final VideoId id;

  /// Video URL.
  String get url => 'https://www.youtube.com/watch?v=$id';

  /// Video title.
  final String title;

  /// Video author.
  final String author;

  /// Video upload date.
  final DateTime uploadDate;

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

  /// Initializes an instance of [Video]
  Video(
      this.id,
      this.title,
      this.author,
      this.uploadDate,
      this.description,
      this.duration,
      this.thumbnails,
      Iterable<String> keywords,
      this.engagement)
      : keywords = UnmodifiableListView(keywords);

  @override
  String toString() => 'Video ($title)';
}
