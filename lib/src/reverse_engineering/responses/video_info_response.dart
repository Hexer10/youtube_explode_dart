import 'package:http_parser/http_parser.dart';

import '../../exceptions/exceptions.dart';
import '../../retry.dart';
import '../youtube_http_client.dart';
import 'player_response.dart';
import 'stream_info_provider.dart';

class VideoInfoResponse {
  final Map<String, String> _root;

  VideoInfoResponse(this._root);

  String get status => _root['status'];

  bool get isVideoAvailable => status.toLowerCase() != 'fail';

  PlayerResponse get playerResponse =>
      PlayerResponse.parse(_root['player_response']);

  Iterable<_StreamInfo> get muxedStreams =>
      _root['url_encoded_fmt_stream_map']
          ?.split(',')
          ?.map(Uri.splitQueryString)
          ?.map((e) => _StreamInfo(e)) ??
      const [];

  Iterable<_StreamInfo> get adaptiveStreams =>
      _root['adaptive_fmts']
          ?.split(',')
          ?.map(Uri.splitQueryString)
          ?.map((e) => _StreamInfo(e)) ??
      const [];

  Iterable<_StreamInfo> get streams => [...muxedStreams, ...adaptiveStreams];

  VideoInfoResponse.parse(String raw) : _root = Uri.splitQueryString(raw);

  static Future<VideoInfoResponse> get(
      YoutubeHttpClient httpClient, String videoId,
      [String sts]) {
    var eurl = Uri.encodeFull('https://youtube.googleapis.com/v/$videoId');
    var url =
        'https://youtube.com/get_video_info?video_id=$videoId&el=embedded&eurl=$eurl&hl=en${sts != null ? '&sts=$sts' : ''}';
    return retry(() async {
      var raw = await httpClient.getString(url);
      var result = VideoInfoResponse.parse(raw);

      if (!result.isVideoAvailable || !result.playerResponse.isVideoAvailable) {
        throw VideoUnplayableException(videoId);
      }
      return result;
    });
  }
}

class _StreamInfo extends StreamInfoProvider {
  final Map<String, String> _root;

  _StreamInfo(this._root);

  @override
  int get tag => int.parse(_root['itag']);

  @override
  String get url => _root['url'];

  @override
  String get signature => _root['s'];

  @override
  String get signatureParameter => _root['sp'];

  @override
  int get contentLength => int.tryParse(_root['clen'] ??
      StreamInfoProvider.contentLenExp.firstMatch(url).group(1));

  @override
  int get bitrate => int.parse(_root['bitrate']);

  MediaType get mimeType => MediaType.parse(_root["type"]);

  @override
  String get container => mimeType.subtype;

  List<String> get codecs =>
      mimeType.parameters['codecs'].split(',').map((e) => e.trim());

  @override
  String get audioCodec => codecs.last;

  @override
  String get videoCodec => isAudioOnly ? null : codecs.first;

  bool get isAudioOnly => mimeType.type == 'audio';

  @override
  String get videoQualityLabel => _root['quality_label'];

  List<int> get _size =>
      _root['size'].split(',').map((e) => int.tryParse(e ?? ''));

  @override
  int get videoWidth => _size.first;

  @override
  int get videoHeight => _size.last;

  @override
  int get framerate => int.tryParse(_root['fps'] ?? '');
}
