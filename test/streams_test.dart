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

  group('Get streams manifest of any video', () {
    for (final val in {
      VideoId('9bZkp7q19f0'), // very popular
      // VideoId('SkRSXFQerZs'), // age restricted (embed allowed) - This is unplayable
      VideoId('hySoCSoH-g8'), // age restricted (embed not allowed)
      VideoId('_kmeFXjjGfk'), // embed not allowed (type 1)
      VideoId('MeJVWBSsPAY'), // embed not allowed (type 2)
      VideoId('5VGm0dczmHc'), // rating not allowed
      VideoId('ZGdLIwrGHG8'), // unlisted
      VideoId('rsAAeyAr-9Y'), // recording of a live stream
      VideoId('AI7ULzgf8RU'), // has DASH manifest
      VideoId('-xNN-bJQ4vI'), // 360° video
    }) {
      test('VideoId - ${val.value}', () async {
        var manifest = await yt!.videos.streamsClient.getManifest(val);
        expect(manifest.streams, isNotEmpty);
      });
    }
  });

  test('Stream of paid videos throw VideoRequiresPurchaseException', () {
    expect(yt!.videos.streamsClient.getManifest(VideoId('p3dDcKOFXQg')),
        throwsA(const TypeMatcher<VideoRequiresPurchaseException>()));
  });

  group('Stream of unavailable videos throws VideoUnavailableException', () {
    for (final val in {VideoId('qld9w0b-1ao'), VideoId('pb_hHv3fByo')}) {
      test('VideoId - ${val.value}', () {
        expect(yt!.videos.streamsClient.getManifest(val),
            throwsA(const TypeMatcher<VideoUnavailableException>()));
      });
    }
  });

  group('Get specific stream of any playable video', () {
    for (final val in {
      VideoId('9bZkp7q19f0'), // very popular
      // VideoId('SkRSXFQerZs'), // age restricted (embed allowed) - This is unplayable
      VideoId('hySoCSoH-g8'), // age restricted (embed not allowed)
      VideoId('_kmeFXjjGfk'), // embed not allowed (type 1)
      VideoId('MeJVWBSsPAY'), // embed not allowed (type 2)
      VideoId('5VGm0dczmHc'), // rating not allowed
      VideoId('ZGdLIwrGHG8'), // unlisted
      VideoId('rsAAeyAr-9Y'), // recording of a live stream
      VideoId('AI7ULzgf8RU'), // has DASH manifest TODO: Test timesout
      VideoId('-xNN-bJQ4vI'), // 360° video
    }) {
      test('VideoId - ${val.value}', () async {
        var manifest = await yt!.videos.streamsClient.getManifest(val);
        for (final streamInfo in manifest.streams) {
          expect(yt!.videos.streamsClient.get(streamInfo), emits(isNotNull));
        }
      });
    }
  });
}
