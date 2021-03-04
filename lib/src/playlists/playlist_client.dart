import 'package:youtube_explode_dart/src/channels/channel_id.dart';
import 'package:youtube_explode_dart/src/reverse_engineering/responses/playlist_page.dart';

import '../common/common.dart';
import '../reverse_engineering/youtube_http_client.dart';
import '../videos/video.dart';
import '../videos/video_id.dart';
import 'playlist.dart';
import 'playlist_id.dart';

/// Queries related to YouTube playlists.
class PlaylistClient {
  final YoutubeHttpClient _httpClient;

  /// Initializes an instance of [PlaylistClient]
  PlaylistClient(this._httpClient);

  /// Gets the metadata associated with the specified playlist.
  Future<Playlist> get(dynamic id) async {
    id = PlaylistId.fromString(id);

    var response = await PlaylistPage.get(_httpClient, id.value);
    return Playlist(
        id,
        response.initialData.title,
        response.initialData.author,
        response.initialData.description,
        ThumbnailSet(id.value),
        Engagement(response.initialData.viewCount ?? 0, null, null));
  }

  /// Enumerates videos included in the specified playlist.
  Stream<Video> getVideos(dynamic id) async* {
    id = PlaylistId.fromString(id);
    var encounteredVideoIds = <String>{};
    var continuationToken = '';

    // ignore: literal_only_boolean_expressions
    while (true) {
      var response = await PlaylistPage.get(_httpClient, id.value,
          token: continuationToken);

      for (var video in response.initialData.playlistVideos) {
        var videoId = video.id;

        // Already added
        if (!encounteredVideoIds.add(videoId)) {
          continue;
        }

        if (video.channelId.isEmpty) {
          continue;
        }

        yield Video(
            VideoId(videoId),
            video.title,
            video.author,
            ChannelId(video.channelId),
            null,
            video.description,
            video.duration,
            ThumbnailSet(videoId),
            null,
            Engagement(video.viewCount, null, null),
            null);
      }
      continuationToken = response.initialData.continuationToken;
      if (response.initialData.continuationToken?.isEmpty ?? true) {
        break;
      }
    }
  }
}
