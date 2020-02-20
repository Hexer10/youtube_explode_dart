import 'models.dart';

/// Information about a YouTube playlist.
class Playlist {
  /// ID of this playlist.
  final String id;

  /// Author of this playlist.
  final String author;

  /// Title of this playlist.
  final String title;

  /// The type of this playlist.
  final PlaylistType type;

  /// Description of this playlist.
  final String description;

  /// Statistics of this playlist.
  final Statistics statistics;

  /// Collection of videos contained in this playlist.
  final List<Video> videos;

  /// Initializes an instance of [Playlist]
  Playlist(this.id, this.author, this.title, this.type, this.description,
      this.statistics, this.videos);
}
