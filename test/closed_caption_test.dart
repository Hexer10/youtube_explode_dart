import 'package:test/test.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

void main() {
  group('Search', () {
    YoutubeExplode yt;
    setUp(() {
      yt = YoutubeExplode();
    });

    tearDown(() {
      yt.close();
    });

    test('GetClosedCaptionTracksOfAnyVideo', () async {
      var manifest = await yt.videos.closedCaptions.getManifest('_QdPW8JrYzQ');
      expect(manifest.tracks, isNotEmpty);
    });
    test('GetClosedCaptionTrackOfAnyVideoSpecific', () async {
      var manifest = await yt.videos.closedCaptions.getManifest('_QdPW8JrYzQ');
      var trackInfo = manifest.tracks.first;
      var track = await yt.videos.closedCaptions.get(trackInfo);

      expect(track.captions, isNotEmpty);
    });
    test('GetClosedCaptionTrackAtSpecificTime', () async {
      var manifest = await yt.videos.closedCaptions
          .getManifest('https://www.youtube.com/watch?v=YltHGKX80Y8');
      var trackInfo = manifest.getByLanguage('en');
      var track = await yt.videos.closedCaptions.get(trackInfo);
      var caption =
          track.getByTime(const Duration(hours: 0, minutes: 10, seconds: 41));
      var captionPart =
          caption.getPartByTime(const Duration(milliseconds: 650));

      expect(caption, isNotNull);
      expect(captionPart, isNotNull);
      expect(caption.text, 'know I worked really hard on not doing');
      expect(captionPart.text, ' hard');
    });
  });
}
