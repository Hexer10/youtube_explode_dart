import '../common/common.dart';
import 'playlist_id.dart';

class Playlist {
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

  /// Engagement statistics.
  final Engagement engagement;

  /// Initializes an instance of [Playlist].
  Playlist(this.id, this.title, this.author, this.description, this.engagement);

  @override
  String toString() => 'Playlist ($title)';
}
