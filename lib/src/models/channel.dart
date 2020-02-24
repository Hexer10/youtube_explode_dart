import 'package:equatable/equatable.dart';

/// Information about a YouTube channel.
class Channel extends Equatable {
  /// ID of this channel.
  final String id;

  /// Title of this channel.
  final String title;

  /// Logo image URL of this channel.
  final Uri logoUrl;

  /// Initializes an instance of [Channel]
  const Channel(this.id, this.title, this.logoUrl);

  @override
  List<Object> get props => [id, title, logoUrl];
}
