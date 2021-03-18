import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart' as parser;

import '../../channels/channel_video.dart';
import '../../exceptions/exceptions.dart';
import '../../extensions/helpers_extension.dart';
import '../../retry.dart';
import '../../videos/videos.dart';
import '../youtube_http_client.dart';

///
class ChannelUploadPage {
  ///
  final String channelId;
  final Document? _root;

  late final _InitialData initialData = _getInitialData();
  _InitialData? _initialData;

  ///
  _InitialData _getInitialData() {
    if (_initialData != null) {
      return _initialData!;
    }
    final scriptText = _root!
        .querySelectorAll('script')
        .map((e) => e.text)
        .toList(growable: false);

    return scriptText.extractGenericData(
        (obj) => _InitialData(obj),
        () => TransientFailureException(
            'Failed to retrieve initial data from the channel upload page, please report this to the project GitHub page.'));
  }

  ///
  ChannelUploadPage(this._root, this.channelId, [_InitialData? initialData])
      : _initialData = initialData;

  ///
  Future<ChannelUploadPage?> nextPage(YoutubeHttpClient httpClient) {
    if (initialData.continuation.isEmpty) {
      return Future.value(null);
    }
    var url =
        'https://www.youtube.com/browse_ajax?ctoken=${initialData.continuation}&continuation=${initialData.continuation}&itct=${initialData.clickTrackingParams}';
    return retry(() async {
      var raw = await httpClient.getString(url);
      return ChannelUploadPage(
          null, channelId, _InitialData(json.decode(raw)[1]));
    });
  }

  ///
  static Future<ChannelUploadPage> get(
      YoutubeHttpClient httpClient, String channelId, String sorting) {
    var url =
        'https://www.youtube.com/channel/$channelId/videos?view=0&sort=$sorting&flow=grid';
    return retry(() async {
      var raw = await httpClient.getString(url);
      return ChannelUploadPage.parse(raw, channelId);
    });
  }

  ///
  ChannelUploadPage.parse(String raw, this.channelId)
      : _root = parser.parse(raw);
}

class _InitialData {
  // Json parsed map
  final Map<String, dynamic> root;

  _InitialData(this.root);

  late final Map<String, dynamic>? continuationContext =
      getContinuationContext();

  late final String clickTrackingParams =
      continuationContext?.getT<String>('continuationContext') ?? '';

  late final List<ChannelVideo> uploads =
      getContentContext().map(_parseContent).whereNotNull().toList();

  late final String continuation =
      continuationContext?.getT<String>('continuation') ?? '';

  List<Map<String, dynamic>> getContentContext() {
    List<Map<String, dynamic>>? context;
    if (root.containsKey('contents')) {
      context = root
          .get('contents')
          ?.get('twoColumnBrowseResultsRenderer')
          ?.getList('tabs')
          ?.map((e) => e['tabRenderer'])
          .cast<Map<String, dynamic>>()
          .firstWhereOrNull((e) => e['selected'] as bool)
          ?.get('content')
          ?.get('sectionListRenderer')
          ?.getList('contents')
          ?.firstOrNull
          ?.get('itemSectionRenderer')
          ?.getList('contents')
          ?.firstOrNull
          ?.get('gridRenderer')
          ?.getList('items')
          ?.cast<Map<String, dynamic>>();
    }
    if (context == null && root.containsKey('response')) {
      context = root
          .get('response')
          ?.get('continuationContents')
          ?.get('gridContinuation')
          ?.getList('items')
          ?.cast<Map<String, dynamic>>();
    }
    if (context == null) {
      throw FatalFailureException('Failed to get initial data context.');
    }
    return context;
  }

  Map<String, dynamic>? getContinuationContext() {
    if (root.containsKey('contents')) {
      return root
          .get('contents')
          ?.get('twoColumnBrowseResultsRenderer')
          ?.getList('tabs')
          ?.map((e) => e['tabRenderer'])
          .cast<Map<String, dynamic>>()
          .firstWhereOrNull((e) => e['selected'] as bool)
          ?.get('content')
          ?.get('sectionListRenderer')
          ?.getList('contents')
          ?.firstOrNull
          ?.get('itemSectionRenderer')
          ?.getList('contents')
          ?.firstOrNull
          ?.get('gridRenderer')
          ?.getList('continuations')
          ?.firstOrNull
          ?.get('nextContinuationData');
    }
    if (root.containsKey('response')) {
      return root
          .get('response')
          ?.get('continuationContents')
          ?.get('gridContinuation')
          ?.getList('continuations')
          ?.firstOrNull
          ?.get('nextContinuationData');
    }
    return null;
  }

  ChannelVideo? _parseContent(Map<String, dynamic>? content) {
    if (content == null || !content.containsKey('gridVideoRenderer')) {
      return null;
    }

    var video = content.get('gridVideoRenderer')!;
    return ChannelVideo(
        VideoId(video.getT<String>('videoId')!),
        video.get('title')?.getT<String>('simpleText') ??
            video.get('title')?.getList('runs')?.map((e) => e['text']).join() ??
            '');
  }
}
