import 'package:test/test.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

void main() {
  YoutubeExplode yt;
  setUp(() {
    yt = YoutubeExplode();
  });

  tearDown(() {
    yt.close();
  });

  group('Get streams of any video', () {
    for (var val in {
      VideoId('5VGm0dczmHc'), // rating is not allowed
      VideoId('ZGdLIwrGHG8'), // unlisted
      VideoId('rsAAeyAr-9Y'),
      VideoId('AI7ULzgf8RU')
    }) {
      test('VideoId - ${val.value}', () async {
        var manifest = await yt.videos.streamsClient.getManifest(val);
        expect(manifest.streams, isNotEmpty);
      });
    }
  });

  test('Stream of paid videos throw VideoRequiresPurchaseException', () {
    expect(yt.videos.streamsClient.getManifest(VideoId('p3dDcKOFXQg')),
        throwsA(const TypeMatcher<VideoRequiresPurchaseException>()));
  });

  group('Stream of unavailable videos throws VideoUnavailableException', () {
    for (var val in {VideoId('qld9w0b-1ao'), VideoId('pb_hHv3fByo')}) {
      test('VideoId - ${val.value}', () {
        expect(yt.videos.streamsClient.getManifest(val),
            throwsA(const TypeMatcher<VideoUnavailableException>()));
      });
    }
  });

  group('Get stream of any playable video', () {
    for (var val in {
      VideoId('5VGm0dczmHc'), // rating is not allowed
      VideoId('ZGdLIwrGHG8'), // unlisted
      VideoId('rsAAeyAr-9Y'),
      VideoId('AI7ULzgf8RU')
    }) {
      test('VideoId - ${val.value}', () async {
        var manifest = await yt.videos.streamsClient.getManifest(val);
        for (var streamInfo in manifest.streams) {
          expect(yt.videos.streamsClient.get(streamInfo), emits(isNotNull));
        }
      });
    }
  }, skip: 'Occasionally may fail with certain videos');
}
