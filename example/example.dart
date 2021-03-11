// ignore_for_file: avoid_print
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

Future<void> main() async {
  final yt = YoutubeExplode();

  var manifest = await yt.videos.closedCaptions.getManifest('Pxgvgh9IFqA');
  print(manifest.tracks);
  print('\n\n---------------------\n\n');

  manifest = await yt.videos.closedCaptions.getManifest('Pxgvgh9IFqA');
  print(manifest.tracks);
  yt.close();
}
