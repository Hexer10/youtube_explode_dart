library youtube_explode.base;

import 'channels/channels.dart';
import 'playlists/playlist_client.dart';
import 'reverse_engineering/youtube_http_client.dart';
import 'search/search_client.dart';
import 'videos/video_client.dart';

/// Library entry point.
class YoutubeExplode {
  final YoutubeHttpClient _httpClient;

  /// Queries related to YouTube videos.
  VideoClient get videos => _videos;

  /// Queries related to YouTube playlists.
  PlaylistClient get playlists => _playlists;

  /// Queries related to YouTube channels.
  ChannelClient get channels => _channels;

  /// YouTube search queries.
  SearchClient get search => _search;

  /// Initializes an instance of [YoutubeClient].
  YoutubeExplode() : _httpClient = YoutubeHttpClient() {
    _videos = VideoClient(_httpClient);
    _playlists = PlaylistClient(_httpClient);
    _channels = ChannelClient(_httpClient);
    _search = SearchClient(_httpClient);
  }

  VideoClient _videos;
  PlaylistClient _playlists;
  ChannelClient _channels;
  SearchClient _search;

  /// Closes the HttpClient assigned to this [YoutubeHttpClient].
  /// Should be called after this is not used anymore.
  void close() => _httpClient.close();
}
