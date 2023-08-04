import 'channels/channels.dart';
import 'playlists/playlist_client.dart';
import 'reverse_engineering/youtube_http_client.dart';
import 'search/search_client.dart';
import 'videos/video_client.dart';

/// Library entry point.
class YoutubeExplode {
  final YoutubeHttpClient _httpClient;

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
      : _httpClient = httpClient ?? YoutubeHttpClient() {
    videos = VideoClient(_httpClient);
    playlists = PlaylistClient(_httpClient);
    channels = ChannelClient(_httpClient);
    search = SearchClient(_httpClient);
  }

  /// Closes the HttpClient assigned to this [YoutubeHttpClient].
  /// Should be called after this is not used anymore.
  void close() => _httpClient.close();
}
