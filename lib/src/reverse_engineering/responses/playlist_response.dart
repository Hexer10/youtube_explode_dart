import 'dart:convert';

import '../../channels/channel_id.dart';
import '../../common/common.dart';
import '../../exceptions/exceptions.dart';
import '../../extensions/helpers_extension.dart';
import '../../retry.dart';
import '../youtube_http_client.dart';
import 'generated/playlist_response.g.dart';

///
class PlaylistResponse {
  List<_Video> _videos;

  // Json parsed map
  PlaylistResponseJson _root;

  ///
  String get title => _root.title;

  ///
  String get author => _root.author;

  ///
  String get description => _root.description;

  ///
  ThumbnailSet get thumbnails => ThumbnailSet(videos.firstOrNull.id);

  ///
  int get viewCount => _root.views;

  ///
  int get likeCount => _root.likes;

  ///
  int get dislikeCount => _root.dislikes;

  ///
  List<_Video> get videos =>
      _videos ??= _root.video.map((e) => _Video(e)).toList();

  ///
  PlaylistResponse.parse(String raw) {
    final t = json.tryDecode(raw);
    if (t == null) {
      throw TransientFailureException('Playerlist response is broken.');
    }
    _root = PlaylistResponseJson.fromJson(t);
  }

  ///
  static Future<PlaylistResponse> get(YoutubeHttpClient httpClient, String id,
      {int index = 0}) {
    var url =
        'https://youtube.com/list_ajax?style=json&action_get_list=1&list=$id&index=$index&hl=en';
    return retry(() async {
      var raw = await httpClient.getString(url);
      return PlaylistResponse.parse(raw);
    });
  }

  ///
  static Future<PlaylistResponse> searchResults(
      YoutubeHttpClient httpClient, String query,
      {int page = 0}) {
    var url = 'https://youtube.com/search_ajax?style=json&search_query='
        '${Uri.encodeQueryComponent(query)}&page=$page&hl=en';
    return retry(() async {
      var raw = await httpClient.getString(url, validate: false);
      return PlaylistResponse.parse(raw);
    });
  }
}

class _Video {
  // Json parsed map
  final Video root;

  _Video(this.root);

  String get id => root.encryptedId;

  String get author => root.author;

  ChannelId get channelId => ChannelId('UC${root.userId}');

  DateTime get uploadDate =>
      DateTime.fromMillisecondsSinceEpoch(root.timeCreated * 1000);

  String get title => root.title;

  String get description => root.description;

  Duration get duration => Duration(seconds: root.lengthSeconds);

  int get viewCount => int.parse(root.views.stripNonDigits());

  int get likes => root.likes;

  int get dislikes => root.dislikes;

  Iterable<String> get keywords => RegExp(r'"[^\"]+"|\S+')
      .allMatches(root.keywords)
      .map((e) => e.group(0))
      .toList(growable: false);
}

extension on JsonCodec {
  dynamic tryDecode(String source) {
    try {
      return json.decode(source);
    } on FormatException {
      return null;
    }
  }
}
