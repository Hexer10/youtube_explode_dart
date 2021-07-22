import 'package:collection/collection.dart';
import 'package:youtube_explode_dart/src/reverse_engineering/pages/watch_page.dart';

import '../../../youtube_explode_dart.dart';
import '../../extensions/helpers_extension.dart';
import '../../retry.dart';
import '../youtube_http_client.dart';

class CommentsClient {
  final JsonMap root;

  late final List<JsonMap> _commentRenderers = _getCommentRenderers();

  late final List<_Comment> comments =
      _commentRenderers.map((e) => _Comment(e)).toList(growable: false);

  CommentsClient(this.root);

  ///
  static Future<CommentsClient?> get(
      YoutubeHttpClient httpClient, Video video) async {
    final watchPage = video.watchPage ??
        await retry<WatchPage>(
            () async => WatchPage.get(httpClient, video.id.value));

    final continuation = watchPage.commentsContinuation;
    if (continuation == null) {
      return null;
    }

    final data = await httpClient.sendPost('next', continuation);
    return CommentsClient(data);
  }

  List<JsonMap> _getCommentRenderers() {
    return root
        .getList('onResponseReceivedEndpoints')![1]
        .get('reloadContinuationItemsCommand')!
        .getList('continuationItems')!
        .where((e) => e['commentThreadRenderer'] != null)
        .map((e) => e.get('commentThreadRenderer')!)
        .toList(growable: false);
  }
}

class _Comment {
  final JsonMap root;

  late final JsonMap _commentRenderer =
      root.get('comment')!.get('commentRenderer')!;

  late final JsonMap? _commentRepliesRenderer =
      root.get('replies')?.get('commentRepliesRenderer');

  /// Used to get replies
  late final String? continuation = _commentRepliesRenderer
      ?.getList('contents')
      ?.firstOrNull
      ?.get('continuationItemRenderer')
      ?.get('continuationEndpoint')
      ?.get('continuationCommand')
      ?.getT<String>('token');

  late final int? repliesCount = _commentRepliesRenderer
      ?.get('viewReplies')
      ?.get('buttonRenderer')
      ?.get('text')
      ?.getList('runs')
      ?.elementAtSafe(2)
      ?.getT<String>('text')
      ?.parseIntWithUnits();

  late final String author =
      _commentRenderer.get('authorText')!.getT<String>('simpleText')!;

  late final String channelThumbnail = _commentRenderer
      .get('authorThumbnail')!
      .getList('thumbnails')!
      .last
      .getT<String>('url')!;

  late final String channelId = _commentRenderer
      .get('authorEndpoint')!
      .get('browseEndpoint')!
      .getT<String>('browseId')!;

  late final String text = _commentRenderer
      .get('contentText')!
      .getT<List<dynamic>>('runs')!
      .parseRuns();

  late final String publishTime = _commentRenderer
      .get('publishedTimeText')!
      .getList('runs')!
      .first
      .getT<String>('text')!;

  /// Needs to be parsed as an int current is like: 1.2K
  late final int? likeCount = _commentRenderer
      .get('actionButtons')
      ?.get('commentActionButtonsRenderer')
      ?.get('likeButton')
      ?.get('toggleButtonRenderer')
      ?.get('defaultServiceEndpoint')
      ?.get('performCommentActionEndpoint')
      ?.getList('clientActions')
      ?.first
      .get('updateCommentVoteAction')
      ?.get('voteCount')
      ?.getT<String>('simpleText')
      ?.parseIntWithUnits();

  _Comment(this.root);

  @override
  String toString() => '$author: $text';
}
