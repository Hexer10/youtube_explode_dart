// ignore_for_file: avoid_print
import 'package:logging/logging.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

Future<void> main() async {
  Logger.root.level = Level.FINER;
  Logger.root.onRecord.listen((record) {
    print(
        '[${record.loggerName}] ${record.level.name}: ${record.time}: ${record.message}');
    if (record.error != null) {
      print(record.error);
      print(record.stackTrace);
    }
  });

  final yt = YoutubeExplode();
  final streamInfo =
      await yt.videos.streams.getManifest('qCnQEsljFt0', ytClients: [
    YoutubeApiClient.ios,
    YoutubeApiClient.android,
    YoutubeApiClient.tv,
    YoutubeApiClient.androidVr,
    YoutubeApiClient.mediaConnect,
    YoutubeApiClient.tvSimplyEmbedded
  ]);

  print(streamInfo);
  final my = streamInfo.hls.last;
  // final file = File('local/vid.ts').openWrite();
  // await yt.videos.streams.get(my).pipe(file);
  // await file.flush();
  // await file.close();

  // Close the YoutubeExplode's http client.
  yt.close();
}
