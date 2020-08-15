import 'package:test/test.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

void main() {
  group('Channel', () {
    YoutubeExplode yt;
    setUp(() {
      yt = YoutubeExplode();
    });

    tearDown(() {
      yt.close();
    });

    test('GetMetadataOfChannel', () async {
      var channelUrl =
          'https://www.youtube.com/channel/UCEnBXANsKmyj2r9xVyKoDiQ';
      var channel = await yt.channels.get(ChannelId(channelUrl));
      expect(channel.url, channelUrl);
      expect(channel.title, 'Tyrrrz');
      expect(channel.logoUrl, isNotEmpty);
      expect(channel.logoUrl, isNot(equalsIgnoringWhitespace('')));
    });

    test('GetMetadataOfAnyChannel', () async {
      var channelId = ChannelId('UC46807r_RiRjH8IU-h_DrDQ');
      var channel = await yt.channels.get(channelId);
      expect(channel.id, channelId);

      channelId = ChannelId('UCJ6td3C9QlPO9O_J5dF4ZzA');
      channel = await yt.channels.get(channelId);
      expect(channel.id, channelId);

      channelId = ChannelId('UCiGm_E4ZwYSHV3bcW1pnSeQ');
      channel = await yt.channels.get(channelId);
      expect(channel.id, channelId);
    });

    test('GetMetadataOfAnyChannelByUser', () async {
      var channel = await yt.channels.getByUsername(Username('TheTyrrr'));
      expect(channel.id.value, 'UCEnBXANsKmyj2r9xVyKoDiQ');
    });

    test('GetMetadataOfAnyChannelByVideo', () async {
      var channel = await yt.channels.getByVideo(VideoId('5NmxuoNyDss'));
      expect(channel.id.value, 'UCEnBXANsKmyj2r9xVyKoDiQ');
    });

    test('GetVideosOfYoutubeChannel', () async {
      var videos = await yt.channels
          .getUploads(ChannelId(
              'https://www.youtube.com/channel/UCEnBXANsKmyj2r9xVyKoDiQ'))
          .toList();
      expect(videos.length, greaterThanOrEqualTo(80));
    });

    test('GetVideosOfAnyYoutubeChannel', () async {
      var videos = await yt.channels
          .getUploads(ChannelId('UC46807r_RiRjH8IU-h_DrDQ'))
          .toList();
      expect(videos, isNotEmpty);

      videos = await yt.channels
          .getUploads(ChannelId('UCJ6td3C9QlPO9O_J5dF4ZzA'))
          .toList();
      expect(videos, isNotEmpty);

      videos = await yt.channels
          .getUploads(ChannelId('UCiGm_E4ZwYSHV3bcW1pnSeQ'))
          .toList();
      expect(videos, isNotEmpty);
    });

    test('GetVideosOfYoutubeChannelFromUploadPage', () async {
      var videos = await yt.channels
          .getUploadsFromPage('UCEnBXANsKmyj2r9xVyKoDiQ')
          .take(30)
          .toList();
      expect(videos, hasLength(30));
    });
  });
}
