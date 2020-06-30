import '../common/common.dart';
import '../reverse_engineering/responses/responses.dart';
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

    var response = await PlaylistResponse.get(_httpClient, id.value);
    return Playlist(
        id,
        response.title,
        response.author,
        response.description ?? '',
        response.thumbnails,
        Engagement(response.viewCount ?? 0, response.likeCount ?? 0,
            response.dislikeCount ?? 0));
  }

  /// Enumerates videos included in the specified playlist.
  Stream<Video> getVideos(dynamic id) async* {
    id = PlaylistId.fromString(id);
    var encounteredVideoIds = <String>{};
    var index = 0;
    // ignore: literal_only_boolean_expressions
    while (true) {
      var response =
          await PlaylistResponse.get(_httpClient, id.value, index: index);
      var countDelta = 0;
      for (var video in response.videos) {
        var videoId = video.id;

        // Already added
        if (!encounteredVideoIds.add(videoId)) {
          continue;
        }

        yield Video(
            VideoId(videoId),
            video.title,
            video.author,
            video.channelId,
            video.uploadDate,
            video.description,
            video.duration,
            ThumbnailSet(videoId),
            video.keywords,
            Engagement(video.viewCount, video.likes, video.dislikes));
        countDelta++;
      }

      // Videos loop around, so break when we stop seeing new videos
      if (countDelta <= 0) {
        break;
      }
      index += countDelta;
    }
  }
}
