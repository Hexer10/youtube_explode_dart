import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_parser/http_parser.dart';

import '../../../youtube_explode_dart.dart';
import '../../exceptions/exceptions.dart';
import '../../extensions/helpers_extension.dart';
import '../../retry.dart';
import '../models/stream_info_provider.dart';
import '../youtube_http_client.dart';

///
class EmbeddedPlayerClient {
  final JsonMap root;

  ///
  late final String status = root['playabilityStatus']!['status']!;

  late final String reason = root['playabilityStatus']!['reason'] ?? '';

  ///
  late final bool isVideoAvailable = status.toLowerCase() == 'ok';

  ///
  late final Iterable<_StreamInfo> muxedStreams = root
          .get('streamingData')
          ?.getList('formats')
          ?.map((e) => _StreamInfo(e)) ??
      const [];

  ///
  late final Iterable<_StreamInfo> adaptiveStreams = root
          .get('streamingData')
          ?.getList('adaptiveFormats')
          ?.map((e) => _StreamInfo(e)) ??
      const [];

  ///
  late final Iterable<_StreamInfo> streams = [
    ...muxedStreams,
    ...adaptiveStreams
  ];

  ///
  EmbeddedPlayerClient(this.root);

  ///
  EmbeddedPlayerClient.parse(String raw) : root = json.decode(raw);

  ///
  @alwaysThrows
  static Future<EmbeddedPlayerClient> get(
      YoutubeHttpClient httpClient, String videoId) {
    final body = {
      'context': const {
        'client': {
          'hl': 'en',
          'clientName': 'ANDROID_EMBEDDED_PLAYER',
          'clientVersion': '16.05'
        }
      },
      'videoId': videoId
    };

    final url = Uri.parse('https://www.youtube.com/youtubei/v1/player');

    return retry(() async {
      final raw = await httpClient.post(url,
          body: json.encode(body),
          headers: {
            'X-Goog-Api-Key': 'AIzaSyAO_FJ2SlqU8Q4STEHLGCilw_Y9_11qcW8'
          },
          validate: true);

      var result = EmbeddedPlayerClient.parse(raw.body);

      if (!result.isVideoAvailable) {
        throw VideoUnplayableException.unplayable(VideoId(videoId),
            reason: result.reason);
      }
      return result;
    });
  }
}

class _StreamInfo extends StreamInfoProvider {
  final JsonMap root;

  @override
  late final int tag = root['itag']!;

  @override
  late final String url = root['url']!;

  @override
  late final int? contentLength = int.tryParse(root['contentLength'] ??
      StreamInfoProvider.contentLenExp.firstMatch(url)?.group(1) ??
      '');

  @override
  late final int bitrate = root['bitrate']!;

  late final MediaType mimeType = MediaType.parse(root['mimeType']!);

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

  @override
  late final int? videoWidth = root['width'];

  @override
  late final int? videoHeight = root['height'];

  @override
  late final int? framerate = root['fps'] ?? 0;
  _StreamInfo(this.root);
}
