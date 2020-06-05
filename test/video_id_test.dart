import 'package:test/test.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

void main() {
  group('VideoId', () {
    test('ValidVideoId', () {
      var data = const {
        '9bZkp7q19f0',
        '_kmeFXjjGfk',
        'AI7ULzgf8RU',
      };
      // ignore: avoid_function_literals_in_foreach_calls
      data.forEach((videoId) {
        var video = VideoId(videoId);
        expect(video.value, videoId);
      });
    });
    test('ValidVideoUrl', () {
      var data = const {
        'youtube.com/watch?v=yIVRs6YSbOM': 'yIVRs6YSbOM',
        'youtu.be/yIVRs6YSbOM': 'yIVRs6YSbOM',
        'youtube.com/embed/yIVRs6YSbOM': 'yIVRs6YSbOM',
      };
      data.forEach((url, videoId) {
        var video = VideoId(url);
        expect(video.value, videoId);
      });
    });
    test('InvalidVideoId', () {
      expect(() => VideoId(''), throwsArgumentError);
      expect(() => VideoId('pI2I2zqzeK'), throwsArgumentError);
      expect(() => VideoId('pI2I2z zeKg'), throwsArgumentError);
    });
    test('InvalidVideoUrl', () {
      expect(() => VideoId('youtube.com/xxx?v=pI2I2zqzeKg'),
          throwsArgumentError);
      expect(() => VideoId('youtu.be/watch?v=xxx'), throwsArgumentError);
      expect(() => VideoId('youtube.com/embed/'), throwsArgumentError);
    });
  });
}
