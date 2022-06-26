import '../channels/channel_id.dart';
import '../common/common.dart';
import '../extensions/helpers_extension.dart';
import '../reverse_engineering/pages/watch_page.dart';
import '../reverse_engineering/youtube_http_client.dart';
import 'videos.dart';

/// Queries related to YouTube videos.
class VideoClient {
  final YoutubeHttpClient _httpClient;

  /// Queries related to media streams of YouTube videos.
  final StreamsClient streamsClient;

  /// Queries related to media streams of YouTube videos.
  /// Alias of [streamsClient].
  StreamsClient get streams => streamsClient;

  /// Queries related to closed captions of YouTube videos.
  final ClosedCaptionClient closedCaptions;

  /// Queries related to a YouTube video comments.
  final CommentsClient commentsClient;

  /// Queries related to a YouTube video comments.
  /// Alias of [commentsClient].
  CommentsClient get comments => commentsClient;

  /// Initializes an instance of [VideoClient].
  VideoClient(this._httpClient)
      : streamsClient = StreamsClient(_httpClient),
        closedCaptions = ClosedCaptionClient(_httpClient),
        commentsClient = CommentsClient(_httpClient);

  /// Gets the metadata associated with the specified video.
  Future<Video> _getVideoFromWatchPage(VideoId videoId) async {
    var watchPage = await WatchPage.get(_httpClient, videoId.value);
    final playerResponse = watchPage.playerResponse!;

    return Video(
        videoId,
        playerResponse.videoTitle,
        playerResponse.videoAuthor,
        ChannelId(playerResponse.videoChannelId),
        playerResponse.videoUploadDate ??
            watchPage.root
                .querySelector('meta[itemprop=uploadDate]')
                ?.attributes['content']
                ?.tryParseDateTime(),
        playerResponse.videoUploadDate.toString(),
        playerResponse.videoPublishDate ??
            watchPage.root
                .querySelector('meta[itemprop=datePublished]')
                ?.attributes['content']
                ?.tryParseDateTime(),
        playerResponse.videoDescription,
        playerResponse.videoDuration,
        ThumbnailSet(videoId.value),
        playerResponse.videoKeywords,
        Engagement(playerResponse.videoViewCount, watchPage.videoLikeCount,
            watchPage.videoDislikeCount),
        playerResponse.isLive,
        watchPage);
  }

  /// Get a [Video] instance from a [videoId]
  Future<Video> get(dynamic videoId) async =>
      _getVideoFromWatchPage(VideoId.fromString(videoId));
}
