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

    test('SearchYouTubeVideos', () async {
      var videos = await yt.search
          .getVideosAsync('undead corporation megalomania')
          .toList();
      expect(videos, isNotEmpty);
    });
  });
}
