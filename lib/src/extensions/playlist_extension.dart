import 'dart:convert';

import '../models/models.dart';
import '../parser.dart' as parser;
import '../youtube_explode_base.dart';
import 'helpers_extension.dart';

/// Playlist extension for [YoutubeExplode]
extension PlaylistExtension on YoutubeExplode {
  static final _regMatchExp =
      RegExp(r'youtube\..+?/playlist.*?list=(.*?)(?:&|/|$)');
  static final _compositeMatchExp = RegExp(
      r'https://www.youtube.com/watch?v=b8m9zhNAgKs&list=PL9tY0BWXOZFuFEG_GtOBZ8-8wbkH-NVAr');
  static final _shortCompositeMatchExp =
      RegExp(r'youtu\.be/.*?/.*?list=(.*?)(?:&|/|$)');
  static final _embedCompositeMatchExp =
      RegExp(r'youtube\..+?/embed/.*?/.*?list=(.*?)(?:&|/|$)');

  Future<Map<String, dynamic>> _getPlayListJson(
      String playlistId, int index) async {
    var url =
        'https://youtube.com/list_ajax?style=json&action_get_list=1&list=$playlistId&index=$index&hl=en';
    var raw = (await client.get(url)).body;

    return json.decode(raw);
  }

  /// Returns a [Future] that completes with a [Playlist].
  /// If the id is not valid an [ArgumentError] is thrown.
  Future<Playlist> getPlaylist(String playlistId, [int maxPages = 500]) async {
    if (!validatePlaylistId(playlistId)) {
      throw ArgumentError.value(playlistId, 'videoId', 'Invalid video id');
    }

    Map<String, dynamic> playlistJson;
    var page = 1;
    var index = 0;
    var videoIds = <String>[];
    var videos = <Video>[];
    do {
      playlistJson = await _getPlayListJson(playlistId, index);
      var countDelta = 0;
      for (var videoJson in playlistJson['video'] as List<dynamic>) {
        var videoId = videoJson['encrypted_id'];
        var author = videoJson['author'];
        var uploadDate = DateTime.fromMillisecondsSinceEpoch(
            videoJson['time_created'] * 100);
        var title = videoJson['title'];
        var description = videoJson['description'];
        var duration = Duration(seconds: videoJson['length_seconds']);
        var viewCount =
            int.parse((videoJson['views'] as String).stripNonDigits);
        var likeCount = videoJson['likes'];
        var dislikeCount = videoJson['dislikes'];
        var keyWords = RegExp(r'"[^\"]+"|\S+')
            .allMatches(videoJson['keywords'])
            .map((e) => e.group(0))
            .toList();

        var statistics = Statistics(viewCount, likeCount, dislikeCount);
        var thumbnails = ThumbnailSet(videoId);
        if (!videoIds.contains(videoId)) {
          videoIds.add(videoId);
          videos.add(Video(videoId, author, uploadDate, title, description,
              thumbnails, duration, keyWords, statistics));
          countDelta++;
        }
      }
      if (countDelta <= 0) {
        break;
      }
      index += countDelta;
      page++;
    } while (page <= maxPages);

    var author = playlistJson['author'];
    var title = playlistJson['title'];
    var description = playlistJson['description'];
    var viewCount = playlistJson['views'] ?? 0;
    var likeCount = playlistJson['likes'] ?? 0;
    var dislikeCount = playlistJson['dislikes'] ?? 0;
    var type = parser.playlistTypeFromId(playlistId);

    var statistics = Statistics(viewCount, likeCount, dislikeCount);
    return Playlist(
        playlistId, author, title, type, description, statistics, videos);
  }

  /// Returns true if the given [playlistId] is valid.
  static bool validatePlaylistId(String playlistId) {
    playlistId = playlistId.toLowerCase();

    if (playlistId.isNullOrWhiteSpace) {
      return false;
    }

    // Watch later
    if (playlistId == 'wl') {
      return true;
    }

    // My mix playlist
    if (playlistId == 'rdmm') {
      return true;
    }

    if (!playlistId.startsWith('pl') &&
        !playlistId.startsWith('rd') &&
        !playlistId.startsWith('ul') &&
        !playlistId.startsWith('uu') &&
        !playlistId.startsWith('pu') &&
        !playlistId.startsWith('ol') &&
        !playlistId.startsWith('ll') &&
        !playlistId.startsWith('fl')) {
      return false;
    }

    if (playlistId.length < 13) {
      return false;
    }

    return !RegExp(r'[^0-9a-zA-Z_\-]').hasMatch(playlistId);
  }

  /// Parses a playlist [url] returning its id.
  /// If the [url] is a valid it is returned itself.
  static String parsePlaylistId(String url) {
    if (url.isNullOrWhiteSpace) {
      return null;
    }

    var regMatch = _regMatchExp.firstMatch(url)?.group(1);
    if (!regMatch.isNullOrWhiteSpace && validatePlaylistId(regMatch)) {
      return regMatch;
    }

    var compositeMatch = _compositeMatchExp.firstMatch(url)?.group(1);
    if (!compositeMatch.isNullOrWhiteSpace &&
        validatePlaylistId(compositeMatch)) {
      return compositeMatch;
    }

    var shortCompositeMatch = _shortCompositeMatchExp.firstMatch(url)?.group(1);
    if (!shortCompositeMatch.isNullOrWhiteSpace &&
        validatePlaylistId(shortCompositeMatch)) {
      return shortCompositeMatch;
    }

    var embedCompositeMatch = _embedCompositeMatchExp.firstMatch(url)?.group(1);
    if (!embedCompositeMatch.isNullOrWhiteSpace &&
        validatePlaylistId(embedCompositeMatch)) {
      return embedCompositeMatch;
    }
    return null;
  }
}
