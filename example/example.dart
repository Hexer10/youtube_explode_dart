import 'package:youtube_explode_dart/youtube_explode_dart.dart';

Future<void> main() async {
  var yt = YoutubeExplode();
  var video =
      await yt.videos.get('https://www.youtube.com/watch?v=AI7ULzgf8RU');

  print('Title: ${video.title}');

  // Close the YoutubeExplode's http client.
  yt.close();
}
