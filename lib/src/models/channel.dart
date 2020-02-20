/// Information about a YouTube channel.
class Channel {
  /// ID of this channel.
  final String id;

  /// Title of this channel.
  final String title;

  /// Logo image URL of this channel.
  final Uri logoUrl;

  /// Initializes an instance of [Channel]
  Channel(this.id, this.title, this.logoUrl);
}
