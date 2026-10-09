import 'package:meta/meta.dart';

import '../../../youtube_explode_dart.dart';
import '../../extensions/helpers_extension.dart';
import '../../retry.dart';
import '../pages/watch_page.dart';

@internal
class RelatedVideosClient {
  final List<Map<String, dynamic>> contents;

  Iterable<Video> relatedVideos() sync* {
    for (final video in contents) {
      Video? result;
      if (video['compactVideoRenderer'] != null) {
        result = _parseCompactVideo(video['compactVideoRenderer']);
      } else if (video['lockupViewModel'] != null) {
        result = _parseLockupView(video['lockupViewModel']);
      }
      if (result != null) yield result;
    }
  }

  Video? _parseLockupView(Map<String, dynamic> data) {
    final videoId = data.getJson(
        'rendererContext/commandContext/onTap/innertubeCommand/watchEndpoint/videoId');
    final title =
        data.getJson<String>('metadata/lockupMetadataViewModel/title/content');
    final channelId = data.getJson<String>(
        'metadata/lockupMetadataViewModel/image/decoratedAvatarViewModel/rendererContext/commandContext/onTap/innertubeCommand/browseEndpoint/browseId');

    if (videoId == null || title == null || channelId == null) {
      return null;
    }

    final duration = data.getJson<String>(
        'contentImage/thumbnailViewModel/overlays/0/thumbnailBottomOverlayViewModel/badges/0/thumbnailBadgeViewModel/text');
    final uploadDate = data.getJson<String>(
        'metadata/lockupMetadataViewModel/metadata/contentMetadataViewModel/metadataRows/1/metadataParts/1/text/content');
    final viewsText = data.getJson<String>(
        'metadata/lockupMetadataViewModel/metadata/contentMetadataViewModel/metadataRows/1/metadataParts/0/text/content');
    final author = data.getJson<String>(
        'metadata/lockupMetadataViewModel/metadata/contentMetadataViewModel/metadataRows/0/metadataParts/0/text/content');

    final views = int.tryParse(viewsText?.stripNonDigits() ?? '') ?? 0;

    return Video(
      VideoId(videoId),
      title,
      author ?? '',
      ChannelId(channelId),
      uploadDate?.toDateTime(),
      uploadDate,
      uploadDate?.toDateTime(),
      '',
      duration?.toDuration(),
      ThumbnailSet(videoId),
      [],
      Engagement(views, null, null),
      duration == 'LIVE',
    );
  }

  Video? _parseCompactVideo(Map<String, dynamic> data) {
    final videoId = data['videoId'] as String?;
    final title = data['title']?['simpleText'] as String?;
    final author = data['longBylineText']?['runs']?[0]?['text'] as String?;
    final channelId = data['longBylineText']?['runs']?[0]?['navigationEndpoint']
        ?['browseEndpoint']?['browseId'] as String?;

    if (videoId == null ||
        title == null ||
        author == null ||
        channelId == null) {
      return null;
    }

    final uploadDate = data['publishedTimeText']?['simpleText'] as String?;
    final duration = data['lengthText']?['simpleText'] as String?;
    final viewCountText = data['viewCountText']?['simpleText'] as String?;

    final views = int.tryParse(viewCountText?.stripNonDigits() ?? '') ?? 0;

    return Video(
      VideoId(videoId),
      title,
      author,
      ChannelId(channelId),
      uploadDate?.toDateTime(),
      uploadDate,
      uploadDate?.toDateTime(),
      '',
      duration?.toDuration(),
      ThumbnailSet(videoId),
      [],
      Engagement(views, null, null),
      false,
    );
  }

  String? getContinuationToken() {
    for (final item in contents) {
      final token = item['continuationItemRenderer']?['continuationEndpoint']
              ?['continuationCommand']?['token'] as String? ??
          item['continuationItemRenderer']?['button']?['buttonRenderer']
              ?['command']?['continuationCommand']?['token'] as String?;
      if (token != null) return token;
    }
    return null;
  }

  const RelatedVideosClient(this.contents);

  Future<RelatedVideosClient?> nextPage(YoutubeHttpClient client) async {
    final continuation = getContinuationToken();
    if (continuation == null) {
      return null;
    }
    final response =
        await client.sendPost('next', {'continuation': continuation});

    final actions = response['onResponseReceivedEndpoints'] as List? ??
        response['onResponseReceivedActions'] as List?;

    if (actions == null) return null;

    for (final action in actions) {
      final continuationItems = action['appendContinuationItemsAction']
          ?['continuationItems'] as List?;
      if (continuationItems != null) {
        return RelatedVideosClient(
            continuationItems.cast<Map<String, dynamic>>());
      }
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
                      },
                      ...
                    ] ||
                    [
                      {
                        'itemSectionRenderer': {
                          'contents': final List<dynamic> results,
                        }
                      },
                      ...
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
