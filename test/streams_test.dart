import 'package:test/test.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

void main() {
  group('Streams', () {
    YoutubeExplode yt;
    setUp(() {
      yt = YoutubeExplode();
    });

    tearDown(() {
      yt.close();
    });

    var data = {
      '9bZkp7q19f0',
      'SkRSXFQerZs',
      'hySoCSoH-g8',
      '_kmeFXjjGfk',
      'MeJVWBSsPAY',
      '5VGm0dczmHc',
      'ZGdLIwrGHG8',
      'rsAAeyAr-9Y',
      'AI7ULzgf8RU'
    };
    for (var videoId in data) {
      test('GetStreamsOfAnyVideo - $videoId', () async {
        var manifest =
            await yt.videos.streamsClient.getManifest(VideoId(videoId));
        expect(manifest.streams, isNotEmpty);
      });
    }

    test('GetStreamOfUnplayableVideo', () async {
      expect(yt.videos.streamsClient.getManifest(VideoId('5qap5aO4i9A')),
          throwsA(const TypeMatcher<VideoUnplayableException>()));
    });
    test('GetStreamOfPurchaseVideo', () async {
      expect(yt.videos.streamsClient.getManifest(VideoId('p3dDcKOFXQg')),
          throwsA(const TypeMatcher<VideoRequiresPurchaseException>()));
    });
    //TODO: Fix this with VideoRequiresPurchaseException.
    test('GetStreamOfPurchaseVideo', () async {
      expect(yt.videos.streamsClient.getManifest(VideoId('qld9w0b-1ao')),
          throwsA(const TypeMatcher<VideoUnavailableException>()));
      expect(yt.videos.streamsClient.getManifest(VideoId('pb_hHv3fByo')),
          throwsA(const TypeMatcher<VideoUnavailableException>()));
    });
    test('GetStreamOfAnyPlayableVideo', () async {
      var data = {
        '9bZkp7q19f0',
        'SkRSXFQerZs',
        'hySoCSoH-g8',
        '_kmeFXjjGfk',
        'MeJVWBSsPAY',
        '5VGm0dczmHc',
        'ZGdLIwrGHG8',
        'rsAAeyAr-9Y',
      };
      for (var videoId in data) {
        var manifest =
            await yt.videos.streamsClient.getManifest(VideoId(videoId));
        for (var streamInfo in manifest.streams) {
          var stream = await yt.videos.streamsClient.get(streamInfo).toList();
          expect(stream, isNotEmpty);
        }
      }
    }, timeout: const Timeout(Duration(minutes: 10)), skip: 'Takes too long.');
  });
}
