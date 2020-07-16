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
    var url = 'https://www.youtube.com/comment_service_ajax?'
        '$service=1&'
        'pbj=1&'
        'ctoken=$continuation&'
        'continuation=$continuation&'
        'itct=$clickTrackingParams';
    return retry(() async {
      var raw = await _httpClient.postString(url, headers: {
        'cookie': 'YSC=$ysc; GPS=1; VISITOR_INFO1_LIVE=$visitorInfoLive;'
            ' CONSENT=WP.288163; PREF=f4=4000000',
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
  Stream<Comment> getComments(Video video) async* {
    if (video.watchPage == null) {
      return;
    }
    yield* _getComments(
        video.watchPage.initialData.continuation,
        video.watchPage.initialData.clickTrackingParams,
        video.watchPage.xsfrToken,
        video.watchPage.visitorInfoLive,
        video.watchPage.ysc);
  }

  Stream<Comment> _getComments(String continuation, String clickTrackingParams,
      String xsfrToken, String visitorInfoLive, String ysc) async* {
    var data = await _getCommentJson('action_get_comments', continuation,
        clickTrackingParams, xsfrToken, visitorInfoLive, ysc);
    var contentRoot = data['response']['continuationContents']
            ['itemSectionContinuation']['contents']
        ?.map((e) => e['commentThreadRenderer'])
        ?.toList()
        ?.cast<Map<String, dynamic>>() as List<Map<String, dynamic>>;
    if (contentRoot == null) {
      return;
    }
    for (var content in contentRoot) {
      var commentRaw = content['comment']['commentRenderer'];
      String continuation;
      String clickTrackingParams;
      if (content['replies'] != null) {
        continuation = content['replies']['commentRepliesRenderer']
                ['continuations']
            .first['nextContinuationData']['continuation'];
        clickTrackingParams = content['replies']['commentRepliesRenderer']
                ['continuations']
            .first['nextContinuationData']['clickTrackingParams'];
      }
      var comment = Comment(
          commentRaw['commentId'],
          commentRaw['authorText']['simpleText'],
          ChannelId(commentRaw['authorEndpoint']['browseEndpoint']['browseId']),
          _parseRuns(commentRaw['contentText']),
          commentRaw['likeCount'] ?? 0,
          _parseRuns(commentRaw['publishedTimeText']),
          commentRaw['replyCount'],
          continuation,
          clickTrackingParams);
      yield comment;
    }
    var continuationRoot = (data
            ?.get('response')
            ?.get('continuationContents')
            ?.get('itemSectionContinuation')
            ?.getValue('continuations')
            ?.first as Map<String, dynamic>)
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

  String _parseRuns(Map<dynamic, dynamic> runs) =>
      runs?.getValue('runs')?.map((e) => e['text'])?.join() ?? '';

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
