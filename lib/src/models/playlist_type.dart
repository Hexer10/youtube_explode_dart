/// Playlist type.
enum PlaylistType {
  /// Regular playlist created by a user.
  normal,

  /// Mix playlist generated to group similar videos.
  videoMix,

  /// Mix playlist generated to group similar videos uploaded
  /// by the same channel.
  channelVideoMix,

  /// Playlist generated from channel uploads.
  channelVideos,

  /// Playlist generated from popular channel uploads.
  popularChannelVideos,

  /// Playlist generated from automated music videos.
  musicAlbum,

  /// System playlist for videos liked by a user.
  likedVideos,

  /// System playlist for videos favorited by a user.
  favorites,

  /// System playlist for videos user added to watch later.
  watchLater,
}
