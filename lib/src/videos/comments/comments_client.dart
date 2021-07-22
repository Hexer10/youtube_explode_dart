import 'package:freezed_annotation/freezed_annotation.dart';

import '../../channels/channel_id.dart';
import '../../extensions/helpers_extension.dart';
import '../../reverse_engineering/responses/comments_client.dart' as re;
import '../../reverse_engineering/youtube_http_client.dart';
import '../videos.dart';
import 'comment.dart';

/// Queries related to comments of YouTube videos.
@experimental
class CommentsClient {
  final YoutubeHttpClient _httpClient;

  /// Initializes an instance of [CommentsClient]
  CommentsClient(this._httpClient);

  /// Returns a stream emitting all the [video]'s comment.
  /// A request is page for every comment page,
  /// a page contains at most 20 comments, use .take if you want to limit
  /// the results.
  ///
  /// The streams doesn't emit any data if [Video.hasWatchPage] is false.
  /// Use `videos.get(videoId, forceWatchPage: true)` to assure that the
  /// WatchPage is fetched.
  Future<List<Comment>> getComments(Video video) async {
    if (video.watchPage == null) {
      return const [];
    }

    final page = await re.CommentsClient.get(_httpClient, video);

    return page?.comments
            .map((e) => Comment(
                e.author,
                ChannelId(e.channelId),
                e.text,
                e.likeCount ?? 0,
                e.publishTime,
                e.repliesCount ?? 0,
                e.continuation))
            .toList(growable: false) ??
        const [];
  }
}
