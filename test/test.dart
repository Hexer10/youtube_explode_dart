import 'package:test/test.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

void main() {
  test('Parse valid video id', () {
    var id = 'en2D_5TzXCA';
    expect(YoutubeExplode.parseVideoId(id), equals('en2D_5TzXCA'));
  });

  test('Parse id from youtube url', () {
    var url = 'https://www.youtube.com/watch?v=en2D_5TzXCA';
    expect(YoutubeExplode.parseVideoId(url), equals('en2D_5TzXCA'));
  });

  test('Get video title', () async {
    var yt = YoutubeExplode();
    var video = await yt.getVideo('en2D_5TzXCA');
    expect(video.title, equals('Lady Gaga - Million Reasons'));
    yt.close();
  });

  test('Parse invalid id', () {
    var id = 'aaa';
    expect(YoutubeExplode.parseVideoId(id), isNull);
  });

  test('Get video media stream', () async {
    var yt = YoutubeExplode();
    expect(await yt.getVideoMediaStream('en2D_5TzXCA'), isNotNull);
    yt.close();
  });

  test('Get video media stream with invalid id', () async {
    var yt = YoutubeExplode();
    var stream = yt.getVideoMediaStream('aaa').asStream();
    stream.listen(neverCalled)
      ..onError(expectAsync1((error) {
        expect(error, isArgumentError);
      }))
      ..onDone(() {
        yt.close();
      });
  });

  // TODO: Implement more tests
}
