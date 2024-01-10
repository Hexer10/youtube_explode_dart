/// The type of the video you want to get.
///
/// Will filter only by the type you want.
enum VideoType {
  /// Default horizontal video
  normal('videos', 'videoRenderer'),

  /// Youtube shorts video
  shorts('shorts', 'reelItemRenderer');

  final String name;
  final String youtubeRenderText;
  const VideoType(this.name, this.youtubeRenderText);
}
