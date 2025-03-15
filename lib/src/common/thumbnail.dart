import 'package:freezed_annotation/freezed_annotation.dart';

part 'thumbnail.freezed.dart';

/// Represent a channel thumbnail
@freezed
sealed class Thumbnail with _$Thumbnail {
  const factory Thumbnail(
    /// Image url.
    Uri url,

    /// Image height.
    int height,

    /// Image width.
    int width,
  ) = _Thumbnail;
}
