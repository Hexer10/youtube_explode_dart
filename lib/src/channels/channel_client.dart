import '../extensions/helpers_extension.dart';
import '../playlists/playlists.dart';
import '../reverse_engineering/responses/channel_upload_page.dart';
import '../reverse_engineering/responses/responses.dart';
import '../reverse_engineering/youtube_http_client.dart';
import '../videos/video.dart';
import '../videos/video_id.dart';
import 'channel.dart';
import 'channel_id.dart';
import 'channel_video.dart';
import 'username.dart';
import 'video_sorting.dart';

/// Queries related to YouTube channels.
class ChannelClient {
  final YoutubeHttpClient _httpClient;

  /// Initializes an instance of [ChannelClient]
  ChannelClient(this._httpClient);

  /// Gets the metadata associated with the specified channel.
  /// [id] must be either a [ChannelId] or a string
  /// which is parsed to a [ChannelId]
  Future<Channel> get(dynamic id) async {
    id = ChannelId.fromString(id);
    var channelPage = await ChannelPage.get(_httpClient, id.value);

    return Channel(id, channelPage.channelTitle, channelPage.channelLogoUrl);
  }

  /// Gets the metadata associated with the channel of the specified user.
  /// [username] must be either a [Username] or a string
  /// which is parsed to a [Username]
  Future<Channel> getByUsername(dynamic username) async {
    username = Username.fromString(username);

    var channelPage =
        await ChannelPage.getByUsername(_httpClient, username.value);
    return Channel(ChannelId(channelPage.channelId), channelPage.channelTitle,
        channelPage.channelLogoUrl);
  }

  /// Gets the metadata associated with the channel
  /// that uploaded the specified video.
  Future<Channel> getByVideo(dynamic videoId) async {
    videoId = VideoId.fromString(videoId);
    var videoInfoResponse =
        await VideoInfoResponse.get(_httpClient, videoId.value);
    var playerResponse = videoInfoResponse.playerResponse;

    var channelId = playerResponse.videoChannelId;
    return get(ChannelId(channelId));
  }

  /// Enumerates videos uploaded by the specified channel.
  /// If you want a full list of uploads see [getUploadsFromPage]
  Stream<Video> getUploads(dynamic channelId) {
    channelId = ChannelId.fromString(channelId);
    var playlistId = 'UU${(channelId.value as String).substringAfter('UC')}';
    return PlaylistClient(_httpClient).getVideos(PlaylistId(playlistId));
  }

  /// Enumerates videos uploaded by the specified channel.
  /// This fetches thru all the uploads pages of the channel so it is
  /// recommended to use _.take_ (or any other method) to limit the
  /// search result. Every page has 30 results.
  ///
  /// Note that this endpoint provides less info about each video
  /// (only the Title and VideoId).
  Stream<ChannelVideo> getUploadsFromPage(dynamic channelId,
      [VideoSorting videoSorting = VideoSorting.newest]) async* {
    channelId = ChannelId.fromString(channelId);
    var page = await ChannelUploadPage.get(
        _httpClient, channelId.value, videoSorting.code);
    yield* Stream.fromIterable(page.initialData.uploads);

    // ignore: literal_only_boolean_expressions
    while (true) {
      page = await page.nextPage(_httpClient);
      if (page == null) {
        return;
      }
      yield* Stream.fromIterable(page.initialData.uploads);
    }
  }
}
