library youtube_explode.base;

import 'package:meta/meta.dart';

import 'channels/channels.dart';
import 'playlists/playlist_client.dart';
import 'reverse_engineering/youtube_http_client.dart';
import 'search/search_client.dart';
import 'videos/video_client.dart';

/// Library entry point.
class YoutubeExplode {
  @visibleForTesting
  final YoutubeHttpClient httpClient;

  /// Queries related to YouTube videos.
  late final VideoClient videos;

  /// Queries related to YouTube playlists.
  late final PlaylistClient playlists;

  /// Queries related to YouTube channels.
  late final ChannelClient channels;

  /// YouTube search queries.
  late final SearchClient search;

  /// Initializes an instance of [YoutubeClient].
  YoutubeExplode([YoutubeHttpClient? httpClient])
      : httpClient = httpClient ?? YoutubeHttpClient() {
    videos = VideoClient(this.httpClient);
    playlists = PlaylistClient(this.httpClient);
    channels = ChannelClient(this.httpClient);
    search = SearchClient(this.httpClient);
  }

  /// Closes the HttpClient assigned to this [YoutubeHttpClient].
  /// Should be called after this is not used anymore.
  void close() => httpClient.close();
}
