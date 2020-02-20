/// Width and height of a video.
class VideoResolution {
  /// Viewport width.
  final int width;

  /// Viewport height.
  final int height;

  /// Initializes an instance of [VideoResolution]
  const VideoResolution(this.width, this.height);

  @override
  String toString() => '${width}x$height';
}
