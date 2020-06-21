import 'package:test/test.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

void main() {
  group('Comments', () {
    YoutubeExplode yt;
    setUp(() {
      yt = YoutubeExplode();
    });

    tearDown(() {
      yt.close();
    });

    test('GetCommentOfVideo', () async {
      var videoUrl = 'https://www.youtube.com/watch?v=AI7ULzgf8RU';
      var video = await yt.videos.get(VideoId(videoUrl));
      var comments = await yt.videos.commentsClient.getComments(video).toList();
      expect(comments.length, greaterThanOrEqualTo(1));
    });
  });
}
