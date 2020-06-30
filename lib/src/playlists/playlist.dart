import 'package:equatable/equatable.dart';

import '../common/common.dart';
import 'playlist_id.dart';

/// YouTube playlist metadata.
class Playlist with EquatableMixin {
  /// Playlist ID.
  final PlaylistId id;

  /// Playlist URL.
  String get url => 'https://www.youtube.com/playlist?list=$id';

  /// Playlist title.
  final String title;

  /// Playlist author.
  /// Can be null if it's a system playlist (e.g. Video Mix, Topics, etc.).
  final String author;

  /// Playlist description.
  final String description;

  /// Available thumbnails for this playlist.
  /// Can be null if the playlist is empty.
  final ThumbnailSet thumbnails;

  /// Engagement statistics.
  final Engagement engagement;

  /// Initializes an instance of [Playlist].
  Playlist(this.id, this.title, this.author, this.description, this.thumbnails,
      this.engagement);

  @override
  String toString() => 'Playlist ($title)';

  @override
  List<Object> get props => [id];
}
