import 'dart:async';

import 'package:collection/collection.dart';
import 'package:youtube_explode_dart/src/reverse_engineering/responses/comments_client.dart'
    as re;

import '../../../youtube_explode_dart.dart';

/// This list contains search videos.
///This behaves like a [List] but has the [SearchList.nextPage] to get the next batch of videos.
class CommentsList extends DelegatingList<Comment> {
  final re.CommentsClient _client;
  final YoutubeHttpClient _httpClient;

  /// Construct an instance of [SearchList]
  /// See [SearchList]
  CommentsList(List<Comment> base, this._client, this._httpClient)
      : super(base);

  /// Fetches the next batch of videos or returns null if there are no more
  /// results.
  Future<CommentsList?> nextPage() async {
    final page = await _client.nextPage(_httpClient);
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
