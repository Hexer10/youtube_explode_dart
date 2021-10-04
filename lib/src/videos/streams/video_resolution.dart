/// Width and height of a video.
class VideoResolution implements Comparable<VideoResolution> {
  /// Viewport width.
  final int width;

  /// Viewport height.
  final int height;

  /// Initializes an instance of [VideoResolution]
  const VideoResolution(this.width, this.height);

  @override
  String toString() => '${width}x$height';

  @override
  int compareTo(VideoResolution other) {
    if (width == other.width && height == other.height) {
      return 0;
    }

    if (width > other.width) {
      return 1;
    }

    if (width == other.width && height > other.height) {
      return 1;
    }
    return -1;
  }
}
