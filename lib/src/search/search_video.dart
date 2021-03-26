import '../common/common.dart';
import '../videos/video_id.dart';
import 'base_search_content.dart';

/// Metadata related to a search query result (video).
class SearchVideo extends BaseSearchContent {
  /// Video ID.
  final VideoId id;

  /// Video title.
  final String title;

  /// Video author.
  final String author;

  /// Video description snippet. (Part of the full description if too long)
  final String description;

  /// Video duration as String, HH:MM:SS
  final String duration;

  /// Video View Count
  final int viewCount;

  /// Video thumbnail
  final List<Thumbnail> thumbnails;

  /// Video upload date - As string: 5 years ago.
  final String? uploadDate;

  /// True if this video is a live stream.
  final bool isLive;

  /// Channel id
  final String channelId;

  /// Initialize a [SearchVideo] instance.
  const SearchVideo(
      this.id,
      this.title,
      this.author,
      this.description,
      this.duration,
      this.viewCount,
      this.thumbnails,
      this.uploadDate,
      this.isLive, // ignore: avoid_positional_boolean_parameters
      this.channelId);

  @override
  String toString() => '(Video) $title ($id)';
}
