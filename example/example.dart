// ignore_for_file: avoid_print
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

Future<void> main() async {
  var yt = YoutubeExplode();
  var streamInfo = await yt.videos.streamsClient.getManifest('fRh_vgS2dFE');

  print(streamInfo);

  // Close the YoutubeExplode's http client.
  yt.close();
}
