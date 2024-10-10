import '../../exceptions/exceptions.dart';
import '../../extensions/helpers_extension.dart';
import '../../reverse_engineering/dash_manifest.dart';
import '../../reverse_engineering/player/player_source.dart';
import '../video_controller.dart';

class StreamController extends VideoController {
  StreamController(super.httpClient);

  Future<DashManifest> getDashManifest(String url) async {
    return DashManifest.parse(await httpClient.getString(url));
  }
}
