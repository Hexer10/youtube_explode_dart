import 'package:equatable/equatable.dart';

/// Represent a channel thumbnail
class Thumbnail with EquatableMixin {
  /// Image url.
  final Uri url;

  /// Image height.
  final int height;

  /// Image width.
  final int width;

  /// Initialize an instance of [Thumbnail].
  Thumbnail(this.url, this.height, this.width);

  @override
  List<Object> get props => [url, height, width];
}
