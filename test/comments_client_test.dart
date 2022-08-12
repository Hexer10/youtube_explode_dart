import 'package:test/test.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

void main() {
  YoutubeExplode? yt;
  setUpAll(() {
    yt = YoutubeExplode();
  });

  tearDownAll(() {
    yt?.close();
  });

  test('Get comments of a video', () async {
    const videoUrl = 'https://www.youtube.com/watch?v=AI7ULzgf8RU';
    final video = await yt!.videos.get(VideoId(videoUrl));
    final comments = (await yt!.videos.commentsClient.getComments(video))!;
    expect(comments.length, greaterThanOrEqualTo(1));
    expect(comments.totalLength, greaterThanOrEqualTo(3));
    expect(comments.first.isHearted, false);
  });
}
