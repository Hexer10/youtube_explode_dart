import 'package:freezed_annotation/freezed_annotation.dart';

import '../common/common.dart';
import '../videos/video_id.dart';
import 'base_search_content.dart';

part 'search_video.freezed.dart';

/// Metadata related to a search query result (video).
@freezed
class SearchVideo with _$SearchVideo, BaseSearchContent {
  /// Initialize a [SearchVideo] instance.
  //@With<BaseSearchContent>()
  const factory SearchVideo(
    /// Video ID.
    VideoId id,

    /// Video title.
    String title,

    /// Video author.
    String author,

    /// Video description snippet. (Part of the full description if too long)
    String description,

    /// Video duration as String, HH:MM:SS
    String duration,

    /// Video View Count
    int viewCount,

    /// Video thumbnail
    List<Thumbnail> thumbnails,

    /// Video upload date - As string: 5 years ago.
    String? uploadDate,

    /// True if this video is a live stream.
    // ignore: avoid_positional_boolean_parameters
    bool isLive,

    /// Channel id
    String channelId,
  ) = _SearchVideo;
}
