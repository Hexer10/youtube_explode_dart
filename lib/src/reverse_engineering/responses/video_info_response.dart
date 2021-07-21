import 'package:http_parser/http_parser.dart';

import '../../exceptions/exceptions.dart';
import '../../extensions/helpers_extension.dart';
import '../../retry.dart';
import '../youtube_http_client.dart';
import '../player/player_response.dart';
import '../models/stream_info_provider.dart';

///
class VideoInfoResponse {
  final Map<String, String> root;

  ///
  late final String status = root['status']!;

  ///
  late final bool isVideoAvailable = status.toLowerCase() != 'fail';

  ///
  late final PlayerResponse playerResponse =
      PlayerResponse.parse(root['player_response']!);

  ///
  late final Iterable<_StreamInfo> muxedStreams =
      root['url_encoded_fmt_stream_map']
              ?.split(',')
              .map(Uri.splitQueryString)
              .map((e) => _StreamInfo(e)) ??
          const [];

  ///
  late final Iterable<_StreamInfo> adaptiveStreams = root['adaptive_fmts']
          ?.split(',')
          .map(Uri.splitQueryString)
          .map((e) => _StreamInfo(e)) ??
      const [];

  ///
  late final Iterable<_StreamInfo> streams = [
    ...muxedStreams,
    ...adaptiveStreams
  ];

  ///
  VideoInfoResponse(this.root);

  ///
  VideoInfoResponse.parse(String raw) : root = Uri.splitQueryString(raw);

  ///
  static Future<VideoInfoResponse> get(
      YoutubeHttpClient httpClient, String videoId,
      [String? sts]) {
    var eurl = Uri.encodeFull('https://youtube.googleapis.com/v/$videoId');

    final url = Uri(
        scheme: 'https',
        host: 'youtube.com',
        path: '/get_video_info',
        queryParameters: {
          'video_id': videoId,
          'el': 'embedded',
          'eurl': eurl,
          'hl': 'en',
          if (sts != null) 'sts': sts,
          'html5': '1',
          'c': 'TVHTML5',
          'cver': '6.20180913'
        });

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
  final Map<String, String> root;

  @override
  late final int tag = int.parse(root['itag']!);

  @override
  late final String url = root['url']!;

  @override
  late final String? signature = root['s'];

  @override
  late final String? signatureParameter = root['sp'];

  @override
  late final int? contentLength = int.tryParse(root['clen'] ??
      StreamInfoProvider.contentLenExp.firstMatch(url)?.group(1) ??
      '');

  @override
  late final int? bitrate = int.tryParse(root['bitrate'] ?? '');

  late final MediaType mimeType = MediaType.parse(root['type']!);

  @override
  late final String container = mimeType.subtype;

  late final List<String> codecs = mimeType.parameters['codecs']!
      .split(',')
      .map((e) => e.trim())
      .toList()
      .cast<String>();

  @override
  late final String audioCodec = codecs.last;

  @override
  late final String? videoCodec = isAudioOnly ? null : codecs.first;

  late final bool isAudioOnly = mimeType.type == 'audio';

  @override
  late final String? videoQualityLabel = root['quality_label'];

  late final List<int>? _size = root
      .getT<String>('size')
      ?.split(',')
      .map((e) => int.tryParse(e))
      .toList()
      .cast<int>();

  @override
  late final int? videoWidth = _size?.first;

  @override
  late final int? videoHeight = _size?.last;

  @override
  late final int? framerate = int.tryParse(root['fps'] ?? '');

  _StreamInfo(this.root);
}
