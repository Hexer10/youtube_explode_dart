import 'package:equatable/equatable.dart';

/// Represent a channel thumbnail
class ChannelThumbnail with EquatableMixin {
  /// Image url.
  final Uri url;

  /// Image height.
  final int height;

  /// Image width.
  final int width;

  /// Initialize an instance of [ChannelThumbnail].
  ChannelThumbnail(this.url, this.height, this.width);

  @override
  List<Object> get props => [url, height, width];
}
