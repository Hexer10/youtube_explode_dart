import 'package:test/test.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

void main() {
  group('Video', () {
    YoutubeExplode yt;
    setUp(() {
      yt = YoutubeExplode();
    });

    tearDown(() {
      yt.close();
    });

    test('GetMetadataOfVideo', () async {
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
      expect(video.duration, const Duration(minutes: 1, seconds: 49));
      expect(video.thumbnails.lowResUrl, isNotEmpty);
      expect(video.thumbnails.mediumResUrl, isNotEmpty);
      expect(video.thumbnails.highResUrl, isNotEmpty);
      expect(video.thumbnails.standardResUrl, isNotEmpty);
      expect(video.thumbnails.maxResUrl, isNotEmpty);
      expect(video.keywords, orderedEquals(['osu', 'mouse', 'rhythm game']));
      expect(video.engagement.viewCount, greaterThanOrEqualTo(134));
      expect(video.engagement.likeCount, greaterThanOrEqualTo(5));
      expect(video.engagement.dislikeCount, greaterThanOrEqualTo(0));
    });

    test('GetMetadataOfAnyVideo', () async {
      var data = {
        '9bZkp7q19f0',
        'SkRSXFQerZs',
        '5VGm0dczmHc',
        'ZGdLIwrGHG8',
        '5qap5aO4i9A'
      };
      for (var videoId in data) {
        var video = await yt.videos.get(VideoId(videoId));
        expect(video.id.value, videoId);
      }
    });

    test('GetMetadataOfInvalidVideo', () async {
      expect(() async => yt.videos.get(VideoId('qld9w0b-1ao')),
          throwsA(const TypeMatcher<VideoUnplayableException>()));
      expect(() async => yt.videos.get(VideoId('pb_hHv3fByo')),
          throwsA(const TypeMatcher<VideoUnplayableException>()));
    });
  });
}
