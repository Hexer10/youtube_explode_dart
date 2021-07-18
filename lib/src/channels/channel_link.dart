import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel_link.freezed.dart';

/// Represents a channel link.
@freezed
class ChannelLink with _$ChannelLink {
  /// Initialize an instance of [ChannelLink]
  const factory ChannelLink(
    /// Link title.
    String title,

    /// Link URL.
    /// Already decoded with the YouTube shortener already taken out.
    Uri url,

    /// Link Icon URL.
    Uri icon,
  ) = _ChannelLink;
}
