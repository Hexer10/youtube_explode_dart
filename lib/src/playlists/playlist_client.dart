import '../channels/channel_id.dart';
import '../common/common.dart';
import '../extensions/helpers_extension.dart';
import '../reverse_engineering/pages/playlist_page.dart';
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
    final response =
        await PlaylistPage.get(_httpClient, (id as PlaylistId).value);
    return Playlist(
      id,
      response.title ?? '',
      response.author ?? '',
      response.description ?? '',
      ThumbnailSet(id.value),
      Engagement(response.viewCount ?? 0, null, null),
      response.videoCount,
    );
  }

  /// Enumerates videos included in the specified playlist.
  Stream<Video> getVideos(dynamic id, {int maxRequests = 30}) async* {
    id = PlaylistId.fromString(id);
    final encounteredVideoIds = <String>{};
    var requestCount = 0;
    var consecutiveEmptyPages = 0;
    const maxConsecutiveEmptyPages = 3;

    PlaylistPage? page = await PlaylistPage.get(_httpClient, id.value);

    if (page == null) {
      return;
    }

    while (page != null && requestCount < maxRequests) {
      var videosAddedThisPage = 0;

      // Process videos from current page
      for (final video in page.videos) {
        final videoId = video.id;

        // Skip if already encountered
        if (!encounteredVideoIds.add(videoId)) {
          continue;
        }

        // Skip if no channel ID
        if (video.channelId.isEmpty) {
          continue;
        }

        videosAddedThisPage++;

        yield Video(
          VideoId(videoId),
          video.title,
          video.author,
          ChannelId(video.channelId),
          video.uploadDateRaw.toDateTime(),
          video.uploadDateRaw,
          null,
          video.description,
          video.duration,
          ThumbnailSet(videoId),
          null,
          Engagement(video.viewCount, null, null),
          false,
        );
      }

      if (videosAddedThisPage == 0) {
        consecutiveEmptyPages++;
        if (consecutiveEmptyPages >= maxConsecutiveEmptyPages) {
          break;
        }
      } else {
        consecutiveEmptyPages = 0;
      }

      // Try to get next page
      try {
        requestCount++;

        // Add delay to prevent rate limiting (similar to Python's time.sleep)
        await Future.delayed(Duration(milliseconds: 500));

        final nextPage = await page.nextPage(_httpClient);

        if (nextPage == null) {
          break;
        }

        // Check if we're getting the same page (infinite loop prevention)
        if (nextPage.videos.isNotEmpty &&
            page.videos.isNotEmpty &&
            nextPage.videos.first.id == page.videos.first.id) {
          break;
        }

        page = nextPage;
      } catch (e) {
        break;
      }
    }

    if (requestCount >= maxRequests) {}
  }

  /// Get all videos as a List (for easier debugging and testing)
  Future<List<Video>> getAllVideos(dynamic id, {int maxRequests = 30}) async {
    final videos = <Video>[];

    await for (final video in getVideos(id, maxRequests: maxRequests)) {
      videos.add(video);
    }

    return videos;
  }
}
