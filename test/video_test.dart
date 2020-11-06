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

  test('Get metadata of a video', () async {
    var videoUrl = 'https://www.youtube.com/watch?v=AI7ULzgf8RU';
    var video = await yt.videos.get(VideoId(videoUrl));
    expect(video.id.value, 'AI7ULzgf8RU');
    expect(video.url, videoUrl);
    expect(video.title, 'Aka no Ha [Another] +HDHR');
    expect(video.channelId.value, 'UCEnBXANsKmyj2r9xVyKoDiQ');
    expect(video.author, 'Tyrrrz');
    var rangeMs = DateTime(2017, 09, 30, 17, 15, 26).millisecondsSinceEpoch;
    // 1day margin since the uploadDate could differ from timezones
    expect(video.uploadDate.millisecondsSinceEpoch,
        inInclusiveRange(rangeMs - 86400000, rangeMs + 86400000));
    expect(video.description, contains('246pp'));
    // Should be 1:38 but sometimes it differs
    // so where using a 10 seconds range from it.
    expect(video.duration.inSeconds, inInclusiveRange(108, 118));
    expect(video.thumbnails.lowResUrl, isNotEmpty);
    expect(video.thumbnails.mediumResUrl, isNotEmpty);
    expect(video.thumbnails.highResUrl, isNotEmpty);
    expect(video.thumbnails.standardResUrl, isNotEmpty);
    expect(video.thumbnails.maxResUrl, isNotEmpty);
    expect(video.keywords, containsAll(['osu', 'mouse'/*, 'rhythm game'*/]));
    expect(video.engagement.viewCount, greaterThanOrEqualTo(134));
    expect(video.engagement.likeCount, greaterThanOrEqualTo(5));
    expect(video.engagement.dislikeCount, greaterThanOrEqualTo(0));
  });

  group('Get metadata of any video', () {
    for (var val in {
      VideoId('9bZkp7q19f0'),
      VideoId('SkRSXFQerZs'),
      VideoId('5VGm0dczmHc'),
      VideoId('ZGdLIwrGHG8'),
      VideoId('5qap5aO4i9A')
    }) {
      test('VideoId - ${val.value}', () async {
        var video = await yt.videos.get(val);
        expect(video.id.value, val.value);
      });
    }
  });

  group('Get metadata of invalid videos throws VideoUnplayableException', () {
    for (var val in {VideoId('qld9w0b-1ao'), VideoId('pb_hHv3fByo')}) {
      test('VideoId - $val', () {
        expect(() async => yt.videos.get(val),
            throwsA(const TypeMatcher<VideoUnplayableException>()));
      });
    }
  });
}
