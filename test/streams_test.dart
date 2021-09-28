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
      VideoId('9bZkp7q19f0'), //Normal
      VideoId('rsAAeyAr-9Y'), //LiveStreamRecording
      VideoId('V5Fsj_sCKdg'), //ContainsHighQualityStreams
      VideoId('AI7ULzgf8RU'), //ContainsDashManifest
      VideoId('-xNN-bJQ4vI'), //Omnidirectional
      VideoId('vX2vsvdq8nw'), //HighDynamicRange
      VideoId('YltHGKX80Y8'), //ContainsClosedCaptions
      VideoId('_kmeFXjjGfk'), //EmbedRestrictedByYouTube
      VideoId('MeJVWBSsPAY'), //EmbedRestrictedByAuthor
      VideoId('hySoCSoH-g8'), //AgeRestrictedEmbedRestricted
      VideoId('5VGm0dczmHc'), //RatingDisabled
      VideoId('-xNN-bJQ4vI'), // 360° video
    }) {
      test('VideoId - ${val.value}', () async {
        var manifest = await yt!.videos.streamsClient.getManifest(val);
        expect(manifest.videoOnly, isNotEmpty);
        expect(manifest.audioOnly, isNotEmpty);
      }, timeout: const Timeout(Duration(seconds: 90)));
    }
  });

  // Seems that youtube broke something and now this throws VideoUnplayableException instead of VideoRequiresPurchaseException
  test('Stream of paid videos throw VideoRequiresPurchaseException', () {
    expect(yt!.videos.streamsClient.getManifest(VideoId('p3dDcKOFXQg')),
        throwsA(const TypeMatcher<VideoUnplayableException>()));
  });

  test('Stream of age-limited video throws VideoUnplayableException', () {
    expect(yt!.videos.streamsClient.getManifest(VideoId('SkRSXFQerZs')),
        throwsA(const TypeMatcher<VideoUnplayableException>()));
  });
  test('Get the hls manifest of a live stream', () async {
    expect(
        await yt!.videos.streamsClient
            .getHttpLiveStreamUrl(VideoId('5qap5aO4i9A')),
        isNotEmpty);
  });

  // Seems that youtube broke something and now this throws VideoUnplayableException instead of VideoUnavailableException
  group('Stream of unavailable videos throws VideoUnplayableException', () {
    for (final val in {VideoId('qld9w0b-1ao'), VideoId('pb_hHv3fByo')}) {
      test('VideoId - ${val.value}', () {
        expect(yt!.videos.streamsClient.getManifest(val),
            throwsA(const TypeMatcher<VideoUnplayableException>()));
      });
    }
  });

  group('Get specific stream of any playable video', () {
    for (final val in {
      VideoId('AI7ULzgf8RU'), //ContainsDashManifest
      VideoId('5VGm0dczmHc'), //RatingDisabled
    }) {
      test('VideoId - ${val.value}', () async {
        var manifest = await yt!.videos.streamsClient.getManifest(val);
        for (final streamInfo in manifest.streams) {
          expect(yt!.videos.streamsClient.get(streamInfo).first, completes);
        }
      }, timeout: const Timeout(Duration(minutes: 5)));
    }
  });
}
