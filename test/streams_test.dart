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
      VideoId('ZGdLIwrGHG8'), //Unlisted
      VideoId('rsAAeyAr-9Y'), //LiveStreamRecording
      VideoId('V5Fsj_sCKdg'), //ContainsHighQualityStreams
      VideoId('AI7ULzgf8RU'), //ContainsDashManifest
      VideoId('-xNN-bJQ4vI'), //Omnidirectional
      VideoId('vX2vsvdq8nw'), //HighDynamicRange
      VideoId('YltHGKX80Y8'), //ContainsClosedCaptions
      VideoId('_kmeFXjjGfk'), //EmbedRestrictedByYouTube
      VideoId('MeJVWBSsPAY'), //EmbedRestrictedByAuthor
      VideoId('SkRSXFQerZs'), //AgeRestricted
      VideoId('hySoCSoH-g8'), //AgeRestrictedEmbedRestricted
      VideoId('5VGm0dczmHc'), //RatingDisabled
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

  test('Get the hls manifest of a live stream', () async {
    expect(
        await yt!.videos.streamsClient
            .getHttpLiveStreamUrl(VideoId('5qap5aO4i9A')),
        isNotEmpty);
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
      VideoId('9bZkp7q19f0'), //Normal
      VideoId('ZGdLIwrGHG8'), //Unlisted
      VideoId('rsAAeyAr-9Y'), //LiveStreamRecording
      VideoId('V5Fsj_sCKdg'), //ContainsHighQualityStreams
      VideoId('AI7ULzgf8RU'), //ContainsDashManifest
      VideoId('-xNN-bJQ4vI'), //Omnidirectional
      VideoId('vX2vsvdq8nw'), //HighDynamicRange
      VideoId('YltHGKX80Y8'), //ContainsClosedCaptions
      VideoId('_kmeFXjjGfk'), //EmbedRestrictedByYouTube
      VideoId('MeJVWBSsPAY'), //EmbedRestrictedByAuthor
      VideoId('SkRSXFQerZs'), //AgeRestricted
      VideoId('hySoCSoH-g8'), //AgeRestrictedEmbedRestricted
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
