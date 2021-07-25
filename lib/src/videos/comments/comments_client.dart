import '../../channels/channel_id.dart';
import '../../reverse_engineering/clients/comments_client.dart' as re;
import '../../reverse_engineering/youtube_http_client.dart';
import '../videos.dart';
import 'comment.dart';
import 'comments_list.dart';

/// Queries related to comments of YouTube videos.
class CommentsClient {
  final YoutubeHttpClient _httpClient;

  /// Initializes an instance of [CommentsClient]
  CommentsClient(this._httpClient);

  /// Returns a [List<Comment>] containing the first batch of comments.
  /// You can use [CommentsList.nextPage()] to get the next batch of comments.
  Future<CommentsList?> getComments(Video video) async {
    if (video.watchPage == null) {
      return null;
    }

    final page = await re.CommentsClient.get(_httpClient, video);

    if (page == null) {
      return null;
    }

    return CommentsList(
        page.comments
            .map((e) => Comment(
                e.author,
                ChannelId(e.channelId),
                e.text,
                e.likeCount ?? 0,
                e.publishTime,
                e.repliesCount ?? 0,
                e.continuation))
            .toList(growable: false),
        page,
        _httpClient);
  }

  Future<CommentsList?> getReplies(Comment comment) async {
    if (comment.continuation == null) {
      return null;
    }

    final page =
        await re.CommentsClient.getReplies(_httpClient, comment.continuation!);

    if (page == null) {
      return null;
    }

    return CommentsList(
        page.comments
            .map((e) => Comment(
                e.author,
                ChannelId(e.channelId),
                e.text,
                e.likeCount ?? 0,
                e.publishTime,
                e.repliesCount ?? 0,
                e.continuation))
            .toList(growable: false),
        page,
        _httpClient);
  }
}
