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

  test('Get closed captions of a video', () async {
    var manifest = await yt.videos.closedCaptions.getManifest('WOxr2dmLHLo');
    expect(manifest.tracks, isNotEmpty);
  });
  test('Get closed caption track of a video', () async {
    var manifest = await yt.videos.closedCaptions.getManifest('WOxr2dmLHLo');
    var trackInfo = manifest.tracks.first;
    var track = await yt.videos.closedCaptions.get(trackInfo);

    expect(track.captions, isNotEmpty);
  });
  test('Get closed caption track at a specific time', () async {
    var manifest = await yt.videos.closedCaptions
        .getManifest('https://www.youtube.com/watch?v=ppJy5uGZLi4');
    var trackInfo = manifest.getByLanguage('en');
    var track = await yt.videos.closedCaptions.get(trackInfo);
    var caption =
        track.getByTime(const Duration(hours: 0, minutes: 13, seconds: 22));
    var captionPart = caption.getPartByTime(const Duration(milliseconds: 200));

    expect(caption, isNotNull);
    expect(captionPart, isNotNull);
    expect(caption.text, 'how about this black there are some');
    expect(captionPart.text, ' about');
  });
}
