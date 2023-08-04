import 'package:youtube_explode_dart/src/exceptions/exceptions.dart';
import 'package:youtube_explode_dart/src/extensions/helpers_extension.dart';
import 'package:youtube_explode_dart/src/reverse_engineering/dash_manifest.dart';
import 'package:youtube_explode_dart/src/reverse_engineering/player/player_source.dart';
import 'package:youtube_explode_dart/src/videos/video_controller.dart';

class StreamController extends VideoController {
  StreamController(super.httpClient);

  static final _versionExp = RegExp(r'player\\\/?([0-9a-fA-F]{8})\\?\/');

  Future<PlayerSource> getPlayerSource() async {
    final iframe =
        await httpClient.getString('https://www.youtube.com/iframe_api');
    final version = _versionExp.firstMatch(iframe)?.group(1);
    if (version.isNullOrWhiteSpace) {
      throw YoutubeExplodeException('Could not extract player version.');
    }

    return PlayerSource.parse(await httpClient.getString(
        'https://www.youtube.com/s/player/$version/player_ias.vflset/en_US/base.js'));
  }

  Future<DashManifest> getDashManifest(String url) async {
    return DashManifest.parse(await httpClient.getString(url));
  }
}
