import 'package:test/test.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

void main() {
  group('ChannelId', () {
    test('ValidChannelId', () {
      var channel1 = ChannelId('UCEnBXANsKmyj2r9xVyKoDiQ');
      var channel2 = ChannelId('UC46807r_RiRjH8IU-h_DrDQ');

      expect(channel1.value, 'UCEnBXANsKmyj2r9xVyKoDiQ');
      expect(channel2.value, 'UC46807r_RiRjH8IU-h_DrDQ');
    });
    test('ValidChannelUrl', () {
      var channel1 = ChannelId('youtube.com/channel/UC3xnGqlcL3y-GXz5N3wiTJQ');
      var channel2 = ChannelId('youtube.com/channel/UCkQO3QsgTpNTsOw6ujimT5Q');
      var channel3 = ChannelId('youtube.com/channel/UCQtjJDOYluum87LA4sI6xcg');

      expect(channel1.value, 'UC3xnGqlcL3y-GXz5N3wiTJQ');
      expect(channel2.value, 'UCkQO3QsgTpNTsOw6ujimT5Q');
      expect(channel3.value, 'UCQtjJDOYluum87LA4sI6xcg');
    });
    test('InvalidChannelId', () {
      expect(() => ChannelId(''), throwsArgumentError);
      expect(() => ChannelId('UC3xnGqlcL3y-GXz5N3wiTJ'), throwsArgumentError);
      expect(() => ChannelId('UC3xnGqlcL y-GXz5N3wiTJQ'), throwsArgumentError);
    });

    test('InvalidChannelUrl', () {
      expect(() => ChannelId('youtube.com/?channel=UCUC3xnGqlcL3y-GXz5N3wiTJQ'),
          throwsArgumentError);
      expect(() => ChannelId('youtube.com/channel/asd'), throwsArgumentError);
      expect(() => ChannelId('youtube.com/'), throwsArgumentError);
    });
  });
}
