/// Metadata about video are sorted with [ChannelClient.getUploadsFromPage]
class VideoSorting {
  /// Code used to fetch the video.
  /// Used internally.
  final String code;

  /// Sort from the newest video
  static const VideoSorting newest = VideoSorting._('dd');

  /// Sort from the oldest video.
  static const oldest = VideoSorting._('da');

  /// Sort from the most popular video.
  static const popularity = VideoSorting._('p');

  const VideoSorting._(this.code);
}
