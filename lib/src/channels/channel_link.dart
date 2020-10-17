import 'package:equatable/equatable.dart';

/// Represents a channel link.
class ChannelLink with EquatableMixin {
  /// Link title.
  final String title;

  /// Link URL.
  /// Already decoded with the YouTube shortener already taken out.
  final Uri url;

  /// Link Icon URL.
  final Uri icon;

  /// Initialize an instance of [ChannelLink]
  ChannelLink(this.title, this.url, this.icon);

  @override
  List<Object> get props => [title, url, icon];

  @override
  String toString() => 'Link: $title ($url): $icon';
}
