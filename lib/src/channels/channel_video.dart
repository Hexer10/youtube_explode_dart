import 'package:freezed_annotation/freezed_annotation.dart';

import '../videos/video_id.dart';

part 'channel_video.freezed.dart';

/// Metadata related to a search query result (playlist)
@freezed
class ChannelVideo with _$ChannelVideo {
  const factory ChannelVideo(
    /// Video ID.
    VideoId videoId,

    /// Video title.
    String videoTitle,

    /// Video duration
    Duration videoDuration,

    /// Video thumbnail
    String videoThumbnail,

    /// Video upload date.
    /// Formatted like 10 hours ago
    String videoUploadDate,

    /// Video view count.
    int videoViews,
  ) = _ChannelVideo;
}
