import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:http_parser/http_parser.dart';

import '../../../youtube_explode_dart.dart';
import '../../extensions/helpers_extension.dart';
import '../../retry.dart';
import '../models/stream_info_provider.dart';

///
class PlayerResponse {
  final JsonMap root;

  ///
  late final String status = root['playabilityStatus']!['status']!;

  late final String reason = root['playabilityStatus']!['reason'] ?? '';

  ///
  late final bool isVideoPlayable = status.toLowerCase() == 'ok';

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
  PlayerResponse(this.root);

  ///
  PlayerResponse.parse(String raw) : root = json.decode(raw);

  static const androidContext = {
    'hl': 'en',
    'clientName': 'ANDROID',
    'clientVersion': '17.31.35',
    'androidSdkVersion': 30,
    'userAgent':
        'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36,gzip(gfe)',
    'timeZone': 'UTC',
    'utcOffsetMinutes': 0,
  };
  static const webEmbeddedContext = {
    'hl': 'en',
    'clientName': 'WEB_EMBEDDED_PLAYER',
    'clientVersion': '1.20230523.01.00',
    'androidSdkVersion': 30,
    'userAgent':
        'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36,gzip(gfe)',
    'timeZone': 'UTC',
    'utcOffsetMinutes': 0,
  };

  ///
  static Future<PlayerResponse> get(
      YoutubeHttpClient httpClient, String videoId,
      {required Map<String, dynamic> context}) {
    final body = {
      'context': {
        'client': {...context}
      },
      'videoId': videoId,
      'playbackContext': const {
        'contentPlaybackContext': {'html5Preference': 'HTML5_PREF_WANTS'},
      },
      'contentCheckOk': true,
      'racyCheckOk': true,
    };

    final url = Uri.parse(
        'https://www.youtube.com/youtubei/v1/player?key=AIzaSyA8eiZmM1FaDVjRy-df2KTyQ_vz_yYM39w&prettyPrint=false');

    return retry(httpClient, () async {
      final raw =
          await httpClient.post(url, body: json.encode(body), validate: true);

      var result = PlayerResponse.parse(raw.body);

      if (!result.isVideoPlayable) {
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
