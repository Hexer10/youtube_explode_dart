import 'package:test/test.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

void main() {
  group('Search', () {
    YoutubeExplode yt;
    setUp(() {
      yt = YoutubeExplode();
    });

    tearDown(() {
      yt.close();
    });

    test('SearchYouTubeVideosFromApi', () async {
      var videos = await yt.search
          .getVideosAsync('undead corporation megalomania')
          .toList();
      expect(videos, isNotEmpty);
    });
    test('SearchYouTubeVideosFromPage', () async {
      var searchQuery = await yt.search.queryFromPage('hello');
      expect(searchQuery.content, isNotEmpty);
      expect(searchQuery.relatedVideos, isNotEmpty);
      expect(searchQuery.relatedQueries, isNotEmpty);
    });
  });
}
