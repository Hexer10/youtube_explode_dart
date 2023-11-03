import 'package:collection/collection.dart';
import 'package:html/parser.dart' as parser;

import '../../../youtube_explode_dart.dart';
import '../../extensions/helpers_extension.dart';
import '../../retry.dart';
import '../models/initial_data.dart';
import '../models/youtube_page.dart';
import '../youtube_http_client.dart';

///
class PlaylistPage extends YoutubePage<_InitialData> {
  ///
  final String playlistId;

  late final List<_Video> videos = initialData.playlistVideos;

  late final String? title = initialData.title;

  late final String? description = initialData.description;

  late final String? author = initialData.author;

  late final int? viewCount = initialData.viewCount;

  late final int? videoCount = initialData.videoCount;

  /// InitialData
  PlaylistPage.id(this.playlistId, _InitialData initialData)
      : super.fromInitialData(initialData);

  ///
  Future<PlaylistPage?> nextPage(YoutubeHttpClient httpClient) async {
    if (initialData.continuationToken?.isEmpty == null) {
      return null;
    }

    final data =
        await httpClient.sendPost('browse', initialData.continuationToken!);

    return PlaylistPage.id(playlistId, _InitialData(data));
  }

  ///
  static Future<PlaylistPage> get(
    YoutubeHttpClient httpClient,
    String id,
  ) async {
    final url = 'https://www.youtube.com/playlist?list=$id&hl=en&persist_hl=1';
    return retry(httpClient, () async {
      final raw = await httpClient.getString(url);
      return PlaylistPage.parse(raw, id);
    });
  }

  ///
  PlaylistPage.parse(String raw, this.playlistId)
      : super(parser.parse(raw), (root) => _InitialData(root));
}

class _InitialData extends InitialData {
  _InitialData(super.root);

  late final String? title = root
      .get('metadata')
      ?.get('playlistMetadataRenderer')
      ?.getT<String>('title');

  late final String? author = root
      .get('sidebar')
      ?.get('playlistSidebarRenderer')
      ?.getList('items')
      ?.elementAtSafe(1)
      ?.get('playlistSidebarSecondaryInfoRenderer')
      ?.get('videoOwner')
      ?.get('videoOwnerRenderer')
      ?.get('title')
      ?.getT<List<dynamic>>('runs')
      ?.cast<Map<dynamic, dynamic>>()
      .parseRuns();

  late final String? description = root
      .get('metadata')
      ?.get('playlistMetadataRenderer')
      ?.getT<String>('description');

  late final int? viewCount = root
      .get('sidebar')
      ?.get('playlistSidebarRenderer')
      ?.getList('items')
      ?.firstOrNull
      ?.get('playlistSidebarPrimaryInfoRenderer')
      ?.getList('stats')
      ?.elementAtSafe(1)
      ?.getT<String>('simpleText')
      .parseInt();

  // sidebar.playlistSidebarRenderer.items[0].playlistSidebarPrimaryInfoRenderer.stats
  late final int? videoCount = root
      .get('sidebar')
      ?.get('playlistSidebarRenderer')
      ?.getList('items')
      ?.firstOrNull
      ?.get('playlistSidebarPrimaryInfoRenderer')
      ?.getList('stats')
      ?.elementAtSafe(0)
      ?.getList('runs')
      ?.firstOrNull
      ?.getT<String>('text')
      .parseInt();

  late final String? continuationToken =
      (videosContent ?? playlistVideosContent)
          ?.firstWhereOrNull((e) => e['continuationItemRenderer'] != null)
          ?.get('continuationItemRenderer')
          ?.get('continuationEndpoint')
          ?.get('continuationCommand')
          ?.getT<String>('token');

  List<JsonMap>? get playlistVideosContent =>
      root
          .get('contents')
          ?.get('twoColumnBrowseResultsRenderer')
          ?.getList('tabs')
          ?.firstOrNull
          ?.get('tabRenderer')
          ?.get('content')
          ?.get('sectionListRenderer')
          ?.getList('contents')
          ?.firstOrNull
          ?.get('itemSectionRenderer')
          ?.getList('contents')
          ?.firstOrNull
          ?.get('playlistVideoListRenderer')
          ?.getList('contents') ??
      root
          .getList('onResponseReceivedActions')
          ?.firstOrNull
          ?.get('appendContinuationItemsAction')
          ?.getList('continuationItems');

  late final List<JsonMap>? videosContent = root
          .get('contents')
          ?.get('twoColumnSearchResultsRenderer')
          ?.get('primaryContents')
          ?.get('sectionListRenderer')
          ?.getList('contents') ??
      root
          .getList('onResponseReceivedCommands')
          ?.firstOrNull
          ?.get('appendContinuationItemsAction')
          ?.getList('continuationItems');

  List<_Video> get playlistVideos =>
      playlistVideosContent
          ?.where((e) => e['playlistVideoRenderer'] != null)
          .map((e) => _Video(e['playlistVideoRenderer']))
          .toList() ??
      const [];

/*  List<_Video> get videos =>
      videosContent?.firstOrNull
          ?.get('itemSectionRenderer')
          ?.getList('contents')
          ?.where((e) => e['videoRenderer'] != null)
          .map((e) => _Video(e))
          .toList() ??
      const [];*/
}

class _Video {
  // Json parsed map
  final JsonMap root;

  _Video(this.root);

  String get id => root.getT<String>('videoId')!;

  String get author =>
      root
          .get('ownerText')
          ?.getT<List<dynamic>>('runs')
          ?.cast<Map<dynamic, dynamic>>()
          .parseRuns() ??
      root
          .get('shortBylineText')
          ?.getT<List<dynamic>>('runs')
          ?.cast<Map<dynamic, dynamic>>()
          .parseRuns() ??
      '';

  String get channelId =>
      root
          .get('ownerText')
          ?.getList('runs')
          ?.firstOrNull
          ?.get('navigationEndpoint')
          ?.get('browseEndpoint')
          ?.getT<String>('browseId') ??
      root
          .get('shortBylineText')
          ?.getList('runs')
          ?.firstOrNull
          ?.get('navigationEndpoint')
          ?.get('browseEndpoint')
          ?.getT<String>('browseId') ??
      '';

  String get title => root.get('title')?.getList('runs')?.parseRuns() ?? '';

  String get description =>
      root.getList('descriptionSnippet')?.parseRuns() ?? '';

  Duration? get duration =>
      root.get('lengthText')?.getT<String>('simpleText')?.toDuration();

  int get viewCount =>
      root.get('viewCountText')?.getT<String>('simpleText').parseInt() ??
      _videoInfo?.split('•').elementAtSafe(0)?.stripNonDigits().parseInt() ??
      0;

  String? get uploadDateRaw => _videoInfo?.split('•').elementAtSafe(1);

  String? get _videoInfo => root
      .get('videoInfo')
      ?.getT<List<dynamic>>('runs')!
      .cast<Map<dynamic, dynamic>>()
      .parseRuns();
}
