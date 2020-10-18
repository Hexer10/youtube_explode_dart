import 'package:equatable/equatable.dart';

import 'channel_link.dart';
import '../common/thumbnail.dart';

/// YouTube channel's about page metadata.
class ChannelAbout with EquatableMixin {
  /// Full channel description.
  final String description;

  /// Channel view count.
  final int viewCount;

  /// Channel join date.
  /// Formatted as: Gen 01, 2000
  final String joinDate;

  /// Channel title.
  final String title;

  /// Channel thumbnails.
  final List<Thumbnail> thumbnails;

  /// Channel country.
  final String country;

  /// Channel links.
  final List<ChannelLink> channelLinks;

  /// Initialize an instance of [ChannelAbout]
  ChannelAbout(this.description, this.viewCount, this.joinDate, this.title,
      this.thumbnails, this.country, this.channelLinks);

  @override
  List<Object> get props =>
      [description, viewCount, joinDate, title, thumbnails];
}
