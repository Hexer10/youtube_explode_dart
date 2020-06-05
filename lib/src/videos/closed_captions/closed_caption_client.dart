import '../../extensions/helpers_extension.dart';
import '../../reverse_engineering/responses/closed_caption_track_response.dart'
    hide ClosedCaption, ClosedCaptionPart;
import '../../reverse_engineering/responses/video_info_response.dart';
import '../../reverse_engineering/youtube_http_client.dart';
import '../videos.dart';
import 'closed_caption.dart';
import 'closed_caption_manifest.dart';
import 'closed_caption_part.dart';
import 'closed_caption_track.dart';
import 'closed_caption_track_info.dart';
import 'language.dart';

/// Queries related to closed captions of YouTube videos.
class ClosedCaptionClient {
  final YoutubeHttpClient _httpClient;

  /// Initializes an instance of [ClosedCaptionClient]
  ClosedCaptionClient(this._httpClient);

  /// Gets the manifest that contains information
  /// about available closed caption tracks in the specified video.
  Future<ClosedCaptionManifest> getManifest(dynamic videoId) async {
    videoId = VideoId.fromString(videoId);
    var videoInfoResponse =
        await VideoInfoResponse.get(_httpClient, videoId.value);
    var playerResponse = videoInfoResponse.playerResponse;

    var tracks = playerResponse.closedCaptionTrack.map((track) =>
        ClosedCaptionTrackInfo(Uri.parse(track.url),
            Language(track.languageCode, track.languageName)));
    return ClosedCaptionManifest(tracks);
  }

  Future<ClosedCaptionTrack> get(ClosedCaptionTrackInfo trackInfo) async {
    var response = await ClosedCaptionTrackResponse.get(
        _httpClient, trackInfo.url.toString());

    var captions = response.closedCaptions
        .where((e) => !e.text.isNullOrWhiteSpace)
        .map((e) => ClosedCaption(e.text, e.offset, e.duration,
            e.getParts().map((f) => ClosedCaptionPart(f.text, f.offset))));
    return ClosedCaptionTrack(captions);
  }
}
