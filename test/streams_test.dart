import 'package:test/test.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

import 'data.dart';

void main() {
  YoutubeExplode? yt;
  setUpAll(() {
    yt = YoutubeExplode();
  });

  tearDownAll(() {
    yt?.close();
  });

  group('Get streams manifest of any video', () {
    for (final videoId in VideoIdData.playable) {
      test('VideoId - $videoId', () async {
        final manifest = await yt!.videos.streamsClient.getManifest(videoId.id);
        expect(manifest.videoOnly, isNotEmpty);
        expect(manifest.audioOnly, isNotEmpty);
      }, timeout: const Timeout(Duration(seconds: 90)),);
    }
  });

  test('Stream of paid videos throw VideoRequiresPurchaseException', () {
    expect(
        yt!.videos.streamsClient.getManifest(VideoIdData.requiresPurchase.id),
        throwsA(const TypeMatcher<VideoRequiresPurchaseException>()),);
  });

  test('Get the hls manifest of a live stream', () async {
    expect(
        await yt!.videos.streamsClient
            .getHttpLiveStreamUrl(VideoId('jfKfPfyJRdk')),
        isNotEmpty,);
  });

  // Seems that youtube broke something and now this throws VideoUnplayableException instead of VideoUnavailableException
  group('Stream of unavailable videos throws VideoUnplayableException', () {
    for (final val in VideoIdData.invalid) {
      test('VideoId - $val', () {
        expect(yt!.videos.streamsClient.getManifest(val.id),
            throwsA(const TypeMatcher<VideoUnplayableException>()),);
      });
    }
  });

  group('Get specific stream of any playable video', () {
    for (final val in VideoIdData.playable) {
      test('VideoId - $val', () async {
        final manifest = await yt!.videos.streamsClient.getManifest(val.id);
        for (final streamInfo in manifest.streams) {
          expect(yt!.videos.streamsClient.get(streamInfo).first, completes);
        }
      }, timeout: const Timeout(Duration(minutes: 5)),);
    }
  });
}
