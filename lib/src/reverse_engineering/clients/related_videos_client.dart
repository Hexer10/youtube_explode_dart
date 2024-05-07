import 'package:meta/meta.dart';

import '../../../youtube_explode_dart.dart';
import '../../extensions/helpers_extension.dart';
import '../../retry.dart';
import '../pages/watch_page.dart';

@internal
class RelatedVideosClient {
  final List<Map<String, dynamic>> contents;

  Iterable<Video> relatedVideos() sync* {
    final results = contents
        .where((e) => e.containsKey('compactVideoRenderer'))
        .map((e) => e['compactVideoRenderer']);

    for (final video in results) {
      if (video
          case {
            'videoId': final String videoId,
            'title': {'simpleText': final String title},
            'longBylineText': {
              'runs': [
                {
                  'text': final String author,
                  'navigationEndpoint': {
                    'browseEndpoint': {'browseId': final String channelId}
                  }
                }
              ]
            },
            'publishedTimeText': {
              'simpleText': final String uploadDate,
            },
            'lengthText': {
              'simpleText': final String duration,
            },
            'viewCountText': {
              'simpleText': final String videoCount,
            }
          }) {
        yield Video(
          VideoId(videoId),
          title,
          author,
          ChannelId(channelId),
          uploadDate.toDateTime(),
          uploadDate,
          uploadDate.toDateTime(),
          '',
          duration.toDuration(),
          ThumbnailSet(videoId),
          [],
          Engagement(int.parse(videoCount.stripNonDigits()), null, null),
          false,
        );
      }
    }
  }

  String? getContinuationToken() {
    return switch (contents) {
      [
        ...,
        {
          'continuationItemRenderer': {
            'continuationEndpoint': {
              'continuationCommand': {'token': final String token}
            }
          }
        }
      ] =>
        token,
      _ => null,
    };
  }

  const RelatedVideosClient(this.contents);

  Future<RelatedVideosClient?> nextPage(YoutubeHttpClient client) async {
    final continuation = getContinuationToken();
    if (continuation == null) {
      return null;
    }
    final response =
        await client.sendPost('next', {'continuation': continuation});
    if (response
        case {
          'onResponseReceivedEndpoints': [
            {
              'appendContinuationItemsAction': {
                'continuationItems': final List<dynamic> contents,
              }
            }
          ]
        }) {
      return RelatedVideosClient(contents.cast<Map<String, dynamic>>());
    }
    return null;
  }

  static Future<RelatedVideosClient?> get(
    YoutubeHttpClient httpClient,
    Video video,
  ) async {
    final watchPage = video.watchPage ??
        await retry<WatchPage>(
          httpClient,
          () async => WatchPage.get(httpClient, video.id.value),
        );

    final contents = watchPage.initialData.getRelatedVideosContent();
    if (contents == null) {
      return null;
    }
    return RelatedVideosClient(contents);
  }
}

extension _RelatedVideosExtInitialData on WatchPageInitialData {
  List<Map<String, dynamic>>? getRelatedVideosContent() {
    return switch (root) {
      {
        'contents': {
          'twoColumnWatchNextResults': {
            'secondaryResults': {
              'secondaryResults': {
                'results': [
                      _,
                      {
                        'itemSectionRenderer': {
                          'contents': final List<dynamic> results,
                        }
                      }
                    ] ||
                    final List<dynamic> results
              }
            }
          },
        }
      } =>
        results.cast<Map<String, dynamic>>(),
      _ => null,
    };
  }
}
