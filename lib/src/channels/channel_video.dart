import 'package:equatable/equatable.dart';

import '../videos/video_id.dart';

/// Metadata related to a search query result (playlist)
class ChannelVideo with EquatableMixin {
  /// Video ID.
  final VideoId videoId;

  /// Video title.
  final String videoTitle;

  /// Video duration
  final Duration videoDuration;

  /// Video thumbnail
  final String videoThumbnail;

  /// Video upload date.
  /// Formatted like 10 hours ago
  final String videoUploadDate;

  /// Video view count.
  final int videoViews;

  /// Initialize an instance of [ChannelVideo]
  ChannelVideo(this.videoId, this.videoTitle, this.videoDuration,
      this.videoThumbnail, this.videoUploadDate, this.videoViews);

  @override
  String toString() => '[ChannelVideo] $videoTitle ($videoId)';

  @override
  List<Object> get props => [videoId];
}
