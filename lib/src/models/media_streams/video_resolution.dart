import 'package:equatable/equatable.dart';

/// Width and height of a video.
class VideoResolution extends Equatable {
  /// Viewport width.
  final int width;

  /// Viewport height.
  final int height;

  /// Initializes an instance of [VideoResolution]
  const VideoResolution(this.width, this.height);

  @override
  String toString() => '${width}x$height';

  @override
  List<Object> get props => [width, height];
}
