import 'package:test/test.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

void main() {
  YoutubeExplode yt;
  setUpAll(() {
    yt = YoutubeExplode();
  });

  tearDownAll(() {
    yt.close();
  });

  test('Get comments of a video', () async {
    var videoUrl = 'https://www.youtube.com/watch?v=AI7ULzgf8RU';
    var video = await yt.videos.get(VideoId(videoUrl));
    var comments = await yt.videos.commentsClient.getComments(video).toList();
    expect(comments.length, greaterThanOrEqualTo(1));
  }, skip: 'This may fail on some environments');
}
