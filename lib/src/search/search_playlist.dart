import 'package:freezed_annotation/freezed_annotation.dart';

import '../common/common.dart';
import '../playlists/playlist_id.dart';
import 'base_search_content.dart';

part 'search_playlist.freezed.dart';

/// Metadata related to a search query result (playlist)
@freezed
class SearchPlaylist with _$SearchPlaylist, BaseSearchContent {
  /// Initialize a [SearchPlaylist] instance.
  //@With<BaseSearchContent>()
  const factory SearchPlaylist(

      /// PlaylistId.
      PlaylistId playlistId,

      /// Playlist title.
      String playlistTitle,

      /// Playlist video count, cannot be greater than 50.
      int playlistVideoCount,

      /// Video thumbnail
      List<Thumbnail> thumbnails) = _SearchPlaylist;
}
