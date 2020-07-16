import 'dart:convert';

import '../../channels/channel_id.dart';
import '../../common/common.dart';
import '../../exceptions/exceptions.dart';
import '../../extensions/helpers_extension.dart';
import '../../retry.dart';
import '../youtube_http_client.dart';

///
class PlaylistResponse {
  Iterable<_Video> _videos;

  // Json parsed map
  final Map<String, dynamic> _root;

  ///
  String get title => _root['title'];

  ///
  String get author => _root['author'];

  ///
  String get description => _root['description'];

  ///
  ThumbnailSet get thumbnails => ThumbnailSet(videos.firstOrNull.id);

  ///
  int get viewCount => _root['views'];

  ///
  int get likeCount => _root['likes'];

  ///
  int get dislikeCount => _root['dislikes'];

  ///
  Iterable<_Video> get videos => _videos ??=
      _root['video']?.map((e) => _Video(e))?.cast<_Video>() ?? const <_Video>[];

  ///
  PlaylistResponse(this._root);

  ///
  PlaylistResponse.parse(String raw) : _root = json.tryDecode(raw) {
    if (_root == null) {
      throw TransientFailureException('Playerlist response is broken.');
    }
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
  final Map<String, dynamic> _root;

  _Video(this._root);

  String get id => _root['encrypted_id'];

  String get author => _root['author'];

  ChannelId get channelId => ChannelId('UC${_root['user_id']}');

  DateTime get uploadDate =>
      DateTime.fromMillisecondsSinceEpoch(_root['time_created'] * 1000);

  String get title => _root['title'];

  String get description => _root['description'];

  Duration get duration => Duration(seconds: _root['length_seconds']);

  int get viewCount => int.parse((_root['views'] as String).stripNonDigits());

  int get likes => _root['likes'];

  int get dislikes => _root['dislikes'];

  Iterable<String> get keywords => RegExp(r'"[^\"]+"|\S+')
      .allMatches(_root['keywords'])
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
