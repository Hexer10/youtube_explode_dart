import '../common/common.dart';
import '../extensions/helpers_extension.dart';
import '../playlists/playlists.dart';
import '../reverse_engineering/pages/channel_about_page.dart';
import '../reverse_engineering/pages/channel_page.dart';
import '../reverse_engineering/pages/channel_upload_page.dart';
import '../reverse_engineering/pages/watch_page.dart';
import '../reverse_engineering/youtube_http_client.dart';
import '../videos/video.dart';
import '../videos/video_id.dart';
import 'channels.dart';

/// Queries related to YouTube channels.
class ChannelClient {
  final YoutubeHttpClient _httpClient;

  /// Initializes an instance of [ChannelClient]
  const ChannelClient(this._httpClient);

  /// Gets the metadata associated with the specified channel.
  /// [id] must be either a [ChannelId] or a string
  /// which is parsed to a [ChannelId]
  Future<Channel> get(dynamic id) async {
    id = ChannelId.fromString(id);
    var channelPage = await ChannelPage.get(_httpClient, id.value);

    return Channel(
      id,
      channelPage.channelTitle,
      channelPage.channelLogoUrl,
      channelPage.channelBannerUrl,
      channelPage.subscribersCount,
    );
  }

  /// Gets the metadata associated with the channel of the specified user.
  /// [username] must be either a [Username] or a string
  /// which is parsed to a [Username]
  Future<Channel> getByUsername(dynamic username) async {
    username = Username.fromString(username);

    var channelPage = await ChannelPage.getByUsername(
        _httpClient, (username as Username).value);
    return Channel(
      ChannelId(channelPage.channelId),
      channelPage.channelTitle,
      channelPage.channelLogoUrl,
      channelPage.channelBannerUrl,
      channelPage.subscribersCount,
    );
  }

  /// Gets the info found on a YouTube Channel About page.
  /// [id] must be either a [ChannelId] or a string
  /// which is parsed to a [ChannelId]
  Future<ChannelAbout> getAboutPage(dynamic channelId) async {
    channelId = ChannelId.fromString(channelId);

    final aboutPage = await ChannelAboutPage.get(_httpClient, channelId.value);

    return ChannelAbout(
      aboutPage.description,
      aboutPage.viewCount,
      aboutPage.joinDate,
      aboutPage.title,
      [
        for (var e in aboutPage.avatar)
          Thumbnail(Uri.parse(e['url']), e['height'], e['width'])
      ],
      aboutPage.country,
      aboutPage.channelLinks,
    );
  }

  /// Gets the info found on a YouTube Channel About page.
  /// [username] must be either a [Username] or a string
  /// which is parsed to a [Username]
  Future<ChannelAbout> getAboutPageByUsername(dynamic username) async {
    username = Username.fromString(username);

    var page =
        await ChannelAboutPage.getByUsername(_httpClient, username.value);

    return ChannelAbout(
      page.description,
      page.viewCount,
      page.joinDate,
      page.title,
      [
        for (var e in page.avatar)
          Thumbnail(Uri.parse(e['url']), e['height'], e['width'])
      ],
      page.country,
      page.channelLinks,
    );
  }

  /// Gets the metadata associated with the channel
  /// that uploaded the specified video.
  Future<Channel> getByVideo(dynamic videoId) async {
    videoId = VideoId.fromString(videoId);
    var videoInfoResponse = await WatchPage.get(_httpClient, videoId.value);
    var playerResponse = videoInfoResponse.playerResponse!;

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
  /// This fetches thru all the uploads pages of the channel.
  ///
  /// Use .nextPage() to fetch the next batch of videos.
  Future<ChannelUploadsList> getUploadsFromPage(dynamic channelId,
      [VideoSorting videoSorting = VideoSorting.newest]) async {
    channelId = ChannelId.fromString(channelId);
    final page = await ChannelUploadPage.get(
        _httpClient, (channelId as ChannelId).value, videoSorting.code);

    final channel = await get(channelId);

    return ChannelUploadsList(
        page.uploads
            .map((e) => Video(
                  e.videoId,
                  e.videoTitle,
                  channel.title,
                  channelId,
                  e.videoUploadDate.toDateTime(),
                  e.videoUploadDate,
                  null,
                  '',
                  e.videoDuration,
                  ThumbnailSet(e.videoId.value),
                  null,
                  Engagement(e.videoViews, null, null),
                  false,
                ))
            .toList(),
        channel.title,
        channelId,
        page,
        _httpClient);
  }
}
