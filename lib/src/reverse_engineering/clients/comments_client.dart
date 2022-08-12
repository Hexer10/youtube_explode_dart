import 'package:collection/collection.dart';

import '../../../youtube_explode_dart.dart';
import '../../extensions/helpers_extension.dart';
import '../../retry.dart';
import '../pages/watch_page.dart';

class CommentsClient {
  final JsonMap root;

  late final List<JsonMap> _commentRenderers = _getCommentRenderers();

  late final List<_Comment> comments =
      _commentRenderers.map((e) => _Comment(e)).toList(growable: false);

  late final String? _continuationToken = _getContinuationToken();

  CommentsClient(this.root);

  ///
  static Future<CommentsClient?> get(
    YoutubeHttpClient httpClient,
    Video video,
  ) async {
    final watchPage = video.watchPage ??
        await retry<WatchPage>(
          httpClient,
          () async => WatchPage.get(httpClient, video.id.value),
        );

    final continuation = watchPage.commentsContinuation;
    if (continuation == null) {
      return null;
    }

    final data = await httpClient.sendPost('next', continuation);
    return CommentsClient(data);
  }

  ///
  static Future<CommentsClient?> getReplies(
    YoutubeHttpClient httpClient,
    String token,
  ) async {
    final data = await httpClient.sendPost('next', token);
    return CommentsClient(data);
  }

  List<JsonMap> _getCommentRenderers() {
    return root
            .getList('onResponseReceivedEndpoints')!
            .last
            .get('appendContinuationItemsAction')
            ?.getList('continuationItems')
            ?.where((e) => e['commentRenderer'] != null)
            .toList(growable: false) /* Used for the replies */ ??
        root
            .getList('onResponseReceivedEndpoints')!
            .last
            .get('reloadContinuationItemsCommand')!
            .getList('continuationItems', 'appendContinuationItemsAction')!
            .where((e) => e['commentThreadRenderer'] != null)
            .map((e) => e.get('commentThreadRenderer')!)
            .toList(growable: false);
  }

  String? _getContinuationToken() {
    return root
            .getList('onResponseReceivedEndpoints')!
            .last
            .get('appendContinuationItemsAction')
            ?.getList('continuationItems')
            ?.firstWhereOrNull((e) => e['continuationItemRenderer'] != null)
            ?.get('continuationItemRenderer')
            ?.get('button')
            ?.get('buttonRenderer')
            ?.get('command')
            ?.get('continuationCommand')
            ?.getT<String>('token') /* Used for the replies */ ??
        root
            .getList('onResponseReceivedEndpoints')!
            .last
            .get('reloadContinuationItemsCommand')!
            .getList('continuationItems', 'appendContinuationItemsAction')!
            .firstWhereOrNull((e) => e['continuationItemRenderer'] != null)
            ?.get('continuationItemRenderer')
            ?.get('continuationEndpoint')
            ?.get('continuationCommand')
            ?.getT<String>('token');
  }

  // onResponseReceivedEndpoints[0].reloadContinuationItemsCommand.continuationItems[0].commentsHeaderRenderer
  int getCommentsCount() => root
      .getList('onResponseReceivedEndpoints')!
      .first
      .get('reloadContinuationItemsCommand')!
      .getList('continuationItems')!
      .first
      .get('commentsHeaderRenderer')!
      .get('commentsCount')!
      .getList('runs')!
      .first
      .getT<String>('text')
      .parseIntWithUnits()!;

  Future<CommentsClient?> nextPage(YoutubeHttpClient httpClient) async {
    if (_continuationToken == null) {
      return null;
    }

    final data = await httpClient.sendPost('next', _continuationToken!);
    return CommentsClient(data);
  }
}

class _Comment {
  final JsonMap root;

  late final JsonMap _commentRenderer = root.get('commentRenderer') ??
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

  late final int? repliesCount = _commentRenderer.getT<int>('replyCount');

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
      .cast<Map<dynamic, dynamic>>()
      .parseRuns();

  late final String publishTime = _commentRenderer
      .get('publishedTimeText')!
      .getList('runs')!
      .first
      .getT<String>('text')!;

  late final int? likeCount = _commentRenderer
      .get('voteCount')
      ?.getT<String>('simpleText')
      ?.parseIntWithUnits();

  late final bool isHearted = _commentRenderer
          .get('actionButtons')
          ?.get('commentActionButtonsRenderer')
          ?.get('creatorHeart') !=
      null;

  _Comment(this.root);

  @override
  String toString() => '$author: $text';
}
