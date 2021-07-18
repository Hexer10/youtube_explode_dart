import 'dart:convert';

import '../../channels/channel_id.dart';
import '../../extensions/helpers_extension.dart';
import '../../retry.dart';
import '../../reverse_engineering/youtube_http_client.dart';
import '../videos.dart';
import 'comment.dart';

/// Queries related to comments of YouTube videos.
class CommentsClient {
  final YoutubeHttpClient _httpClient;

  /// Initializes an instance of [CommentsClient]
  CommentsClient(this._httpClient);

  /// Returns the json parsed comments map.
  Future<Map<String, dynamic>> _getCommentJson(
      String service,
      String continuation,
      String clickTrackingParams,
      String xsfrToken,
      String visitorInfoLive,
      String ysc) async {
    final url = Uri(
        scheme: 'https',
        host: 'www.youtube.com',
        path: '/comment_service_ajax',
        queryParameters: {
          service: '1',
          'pbj': '1',
          'ctoken': continuation,
          'continuation': continuation,
          'itct': clickTrackingParams,
          'type': 'next',
        });

    return retry(() async {
      var raw = await _httpClient.postString(url, headers: {
        'x-youtube-client-name': '1',
        'x-youtube-client-version': '2.20210622.10.00',
        'cookie':
            'YSC=$ysc; CONSENT=YES+cb; GPS=1; VISITOR_INFO1_LIVE=$visitorInfoLive',
      }, body: {
        'session_token': xsfrToken
      });
      return json.decode(raw);
    });
  }

  /// Returns a stream emitting all the [video]'s comment.
  /// A request is page for every comment page,
  /// a page contains at most 20 comments, use .take if you want to limit
  /// the results.
  ///
  /// The streams doesn't emit any data if [Video.hasWatchPage] is false.
  /// Use `videos.get(videoId, forceWatchPage: true)` to assure that the
  /// WatchPage is fetched.
  Stream<Comment> getComments(Video video) async* {
    if (video.watchPage == null) {
      return;
    }
    yield* _getComments(
        video.watchPage!.initialData.continuation,
        video.watchPage!.initialData.clickTrackingParams,
        video.watchPage!.xsfrToken,
        video.watchPage!.visitorInfoLive,
        video.watchPage!.ysc);
  }

  Stream<Comment> _getComments(String continuation, String clickTrackingParams,
      String xsfrToken, String visitorInfoLive, String ysc) async* {
    var data = await _getCommentJson('action_get_comments', continuation,
        clickTrackingParams, xsfrToken, visitorInfoLive, ysc);
    var contentRoot = data
        .get('response')
        ?.get('continuationContents')
        ?.get('itemSectionContinuation')
        ?.getT<List<dynamic>>('contents')
        ?.map((e) => e['commentThreadRenderer'])
        .toList()
        .cast<Map<String, dynamic>>();
    if (contentRoot == null) {
      return;
    }
    for (final content in contentRoot) {
      var commentRaw = content.get('comment')!.get('commentRenderer')!;
      String? continuation;
      String? clickTrackingParams;
      final replies = content.get('replies');
      if (replies != null) {
        final continuationData = replies
            .get('commentRepliesRenderer')!
            .getList('continuations')!
            .first
            .get('nextContinuationData')!;

        continuation = continuationData.getT<String>('continuation');
        clickTrackingParams =
            continuationData.getT<String>('clickTrackingParams');
      }
      yield Comment(
          commentRaw.getT<String>('commentId')!,
          commentRaw.get('authorText')!.getT<String>('simpleText')!,
          ChannelId(commentRaw
              .get('authorEndpoint')!
              .get('browseEndpoint')!
              .getT<String>('browseId')!),
          commentRaw
              .get('contentText')!
              .getT<List<dynamic>>('runs')!
              .parseRuns(),
          commentRaw.get('voteCount')?.getT<String>('simpleText')?.parseInt() ??
              commentRaw
                  .get('voteCount')
                  ?.getT<List<dynamic>>('runs')
                  ?.parseRuns()
                  .parseInt() ??
              0,
          commentRaw
              .get('publishedTimeText')!
              .getT<List<dynamic>>('runs')!
              .parseRuns(),
          commentRaw.getT<int>('replyCount') ?? 0,
          continuation,
          clickTrackingParams);
    }
    var continuationRoot = (data
            .get('response')
            ?.get('continuationContents')
            ?.get('itemSectionContinuation')
            ?.getT<List<dynamic>>('continuations')
            ?.first)
        ?.get('nextContinuationData');
    if (continuationRoot != null) {
      yield* _getComments(
          continuationRoot['continuation'],
          continuationRoot['clickTrackingParams'],
          xsfrToken,
          visitorInfoLive,
          ysc);
    }
  }

//TODO: Implement replies
/*  Stream<Comment> getReplies(Video video, Comment comment) async* {
    if (video.watchPage == null || comment.continuation == null
    || comment.clicktrackingParams == null) {
      return;
    }
    yield* _getReplies(
        video.watchPage.initialData.continuation,
        video.watchPage.initialData.clickTrackingParams,
        video.watchPage.xsfrToken,
        video.watchPage.visitorInfoLive,
        video.watchPage.ysc);
  }

  Stream<Comment> _getReplies(String continuation, String clickTrackingParams,
      String xsfrToken, String visitorInfoLive, String ysc) async* {
    var data = await _getCommentJson('action_get_comment_replies', continuation,
        clickTrackingParams, xsfrToken, visitorInfoLive, ysc);
    print(data);
  }*/
}
