import 'package:youtube_explode_dart/youtube_explode_dart.dart';

Future<void> main() async {
  // Parse the video id from the url.
  var id = YoutubeExplode.parseVideoId(
      'https://www.youtube.com/watch?v=bo_efYhYU2A');

  var yt = YoutubeExplode();
  var video = await yt.getVideo(id);

  print('Title: ${video.title}');

  // Close the YoutubeExplode's http client.
  yt.close();
}
