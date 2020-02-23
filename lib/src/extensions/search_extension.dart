import 'dart:convert';

import '../models/models.dart';
import '../youtube_explode_base.dart';
import 'helpers_extension.dart';

/// Search extension for [YoutubeExplode]
extension SearchExtension on YoutubeExplode {
  Future<Map<String, dynamic>> _getSearchResults(String query, int page) async {
    var url =
        'https://youtube.com/search_ajax?style=json&search_query=${Uri.encodeQueryComponent(query)}&page=$page&hl=en';
    var raw = (await client.get(url)).body;

    return json.decode(raw);
  }

  /// Searches videos using given query up to [maxPages] count.
  Future<List<Video>> searchVideos(String query, [int maxPages = 5]) async {
    var videos = <Video>[];
    for (var page = 1; page <= maxPages; page++) {
      var resultsJson = await _getSearchResults(query, page);

      var countDelta = 0;
      var videosJson = resultsJson['video'] as List<dynamic>;
      if (videosJson == null) {
        break;
      }

      for (var videoJson in videosJson) {
        var id = videoJson['encrypted_id'];
        var author = videoJson['author'];
        var uploadDate = DateTime.fromMillisecondsSinceEpoch(1581602398 * 1000);
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
        var thumbnails = ThumbnailSet(id);
        videos.add(Video(id, author, uploadDate, title, description, thumbnails,
            duration, keyWords, statistics));

        countDelta++;
      }
      if (countDelta <= 0) {
        break;
      }
    }
    return videos;
  }
}
