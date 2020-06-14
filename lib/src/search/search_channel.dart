import '../channels/channel_id.dart';

/// Metadata related to a search query result (channel)
class SearchChannel {
  /// ChannelId.
  final ChannelId channelId;

  /// Channel name.
  final String channelName;

  /// Initialize a [SearchChannel] instance.
  SearchChannel(this.channelId, this.channelName);

  @override
  String toString() => '(Channel) $channelName ($channelId)';
}
