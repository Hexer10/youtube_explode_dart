import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_parser/http_parser.dart';

import '../../../youtube_explode_dart.dart';
import '../../extensions/helpers_extension.dart';
import '../../retry.dart';
import '../models/stream_info_provider.dart';

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
          ?.map((e) => _StreamInfo(e, StreamSource.muxed)) ??
      const [];

  ///
  late final Iterable<_StreamInfo> adaptiveStreams = root
          .get('streamingData')
          ?.getList('adaptiveFormats')
          ?.map((e) => _StreamInfo(e, StreamSource.adaptive)) ??
      const [];

  ///
  late final List<_StreamInfo> streams = [...muxedStreams, ...adaptiveStreams];

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
          'clientName': 'ANDROID',
          'clientVersion': '16.46.37'
        }
      },
      'videoId': videoId
    };

    final url = Uri.parse('https://www.youtube.com/youtubei/v1/player');

    return retry(httpClient, () async {
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
  static final _contentLenExp = RegExp(r'[\?&]clen=(\d+)');

  /// Json parsed map
  final JsonMap root;

  @override
  late final int? bitrate = root.getT<int>('bitrate');

  @override
  late final String container = codec.subtype;

  @override
  late final int? contentLength = int.tryParse(
      root.getT<String>('contentLength') ??
          _contentLenExp.firstMatch(url)?.group(1) ??
          '');

  @override
  late final int? framerate = root.getT<int>('fps');

  @override
  late final String? signature =
      Uri.splitQueryString(root.getT<String>('signatureCipher') ?? '')['s'];

  @override
  late final String? signatureParameter = Uri.splitQueryString(
          root.getT<String>('cipher') ?? '')['sp'] ??
      Uri.splitQueryString(root.getT<String>('signatureCipher') ?? '')['sp'];

  @override
  late final int tag = root.getT<int>('itag')!;

  @override
  late final String url = root.getT<String>('url') ??
      Uri.splitQueryString(root.getT<String>('cipher') ?? '')['url'] ??
      Uri.splitQueryString(root.getT<String>('signatureCipher') ?? '')['url']!;

  @override
  late final String? videoCodec = isAudioOnly
      ? null
      : codecs?.split(',').firstOrNull?.trim().nullIfWhitespace;

  @override
  late final int? videoHeight = root.getT<int>('height');

  @override
  @Deprecated('Use qualityLabel')
  String get videoQualityLabel => qualityLabel;

  @override
  late final String qualityLabel = root.getT<String>('qualityLabel') ??
      'tiny'; // Not sure if 'tiny' is the correct placeholder.

  @override
  late final int? videoWidth = root.getT<int>('width');

  late final bool isAudioOnly = codec.type == 'audio';

  @override
  late final MediaType codec = _getMimeType()!;

  MediaType? _getMimeType() {
    var mime = root.getT<String>('mimeType');
    if (mime == null) {
      return null;
    }
    return MediaType.parse(mime);
  }

  late final String? codecs = codec.parameters['codecs']?.toLowerCase();

  @override
  late final String? audioCodec =
      isAudioOnly ? codecs : _getAudioCodec(codecs?.split(','))?.trim();

  String? _getAudioCodec(List<String>? codecs) {
    if (codecs == null) {
      return null;
    }
    if (codecs.length == 1) {
      return null;
    }
    return codecs.last;
  }

  @override
  final StreamSource source;

  _StreamInfo(this.root, this.source);
}
