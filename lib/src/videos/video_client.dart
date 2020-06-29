import '../channels/channel_id.dart';
import '../common/common.dart';
import '../reverse_engineering/responses/responses.dart';
import '../reverse_engineering/youtube_http_client.dart';
import 'closed_captions/closed_caption_client.dart';
import 'comments/comments_client.dart';
import 'videos.dart';

/// Queries related to YouTube videos.
class VideoClient {
  final YoutubeHttpClient _httpClient;

  /// Queries related to media streams of YouTube videos.
  final StreamsClient streamsClient;

  /// Queries related to closed captions of YouTube videos.
  final ClosedCaptionClient closedCaptions;

  /// Queries related to a YouTube video.
  final CommentsClient commentsClient;

  /// Initializes an instance of [VideoClient].
  VideoClient(this._httpClient)
      : streamsClient = StreamsClient(_httpClient),
        closedCaptions = ClosedCaptionClient(_httpClient),
        commentsClient = CommentsClient(_httpClient);

  /// Gets the metadata associated with the specified video.
  Future<Video> get(dynamic videoId) async {
    videoId = VideoId.fromString(videoId);
    var videoInfoResponse =
        await VideoInfoResponse.get(_httpClient, videoId.value);
    var playerResponse = videoInfoResponse.playerResponse;

    var watchPage = await WatchPage.get(_httpClient, videoId.value);
    return Video(
        videoId,
        playerResponse.videoTitle,
        playerResponse.videoAuthor,
        ChannelId(playerResponse.videoChannelId),
        playerResponse.videoUploadDate,
        playerResponse.videoDescription,
        playerResponse.videoDuration,
        ThumbnailSet(videoId.value),
        playerResponse.videoKeywords,
        Engagement(playerResponse.videoViewCount ?? 0, watchPage.videoLikeCount,
            watchPage.videoDislikeCount),
        watchPage);
  }
}
