import '../extensions/helpers_extension.dart';
import '../playlists/playlists.dart';
import '../reverse_engineering/responses/responses.dart';
import '../reverse_engineering/youtube_http_client.dart';
import '../videos/video.dart';
import '../videos/video_id.dart';
import 'channel.dart';
import 'channel_id.dart';
import 'username.dart';

/// Queries related to YouTube channels.
class ChannelClient {
  final YoutubeHttpClient _httpClient;

  /// Initializes an instance of [ChannelClient]
  ChannelClient(this._httpClient);

  /// Gets the metadata associated with the specified channel.
  Future<Channel> get(ChannelId id) async {
    var channelPage = await ChannelPage.get(_httpClient, id.value);

    return Channel(id, channelPage.channelTitle, channelPage.channelLogoUrl);
  }

  /// Gets the metadata associated with the channel of the specified user.
  Future<Channel> getByUsername(Username username) async {
    var channelPage =
        await ChannelPage.getByUsername(_httpClient, username.value);
    return Channel(ChannelId(channelPage.channelId), channelPage.channelTitle,
        channelPage.channelLogoUrl);
  }

  /// Gets the metadata associated with the channel
  /// that uploaded the specified video.
  Future<Channel> getByVideo(VideoId videoId) async {
    var videoInfoResponse =
        await VideoInfoResponse.get(_httpClient, videoId.value);
    var playerReponse = videoInfoResponse.playerResponse;

    var channelId = playerReponse.videoChannelId;
    return await get(ChannelId(channelId));
  }

  /// Enumerates videos uploaded by the specified channel.
  Stream<Video> getUploads(ChannelId id) {
    var playlistId = 'UU${id.value.substringAfter('UC')}';
    return PlaylistClient(_httpClient).getVideos(PlaylistId(playlistId));
  }
}
