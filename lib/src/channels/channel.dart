import 'channel_id.dart';

/// YouTube channel metadata.
class Channel {
  /// Channel ID.
  final ChannelId id;

  /// Channel URL.
  String get url => 'https://www.youtube.com/channel/$id';

  /// Channel title.
  final String title;

  /// URL of the channel's logo image.
  final String logoUrl;

  /// Initializes an instance of [Channel]
  Channel(this.id, this.title, this.logoUrl);

  @override
  String toString() => 'Channel ($title)';
}
