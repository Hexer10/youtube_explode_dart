import 'dart:convert';

import 'package:html/dom.dart';
import 'package:html/parser.dart' as parser;
import 'package:http_parser/http_parser.dart';

import '../../../youtube_explode_dart.dart';
import '../../extensions/helpers_extension.dart';
import '../../retry.dart';
import '../../videos/video_id.dart';
import '../youtube_http_client.dart';
import 'player_response.dart';
import 'stream_info_provider.dart';

class WatchPage {
  final RegExp _videoLikeExp = RegExp(r'label""\s*:\s*""([\d,\.]+) likes');
  final RegExp _videoDislikeExp =
      RegExp(r'label""\s*:\s*""([\d,\.]+) dislikes');

  final Document _root;

  WatchPage(this._root);

  bool get isOk => _root.body.querySelector('#player') != null;

  bool get isVideoAvailable =>
      _root.querySelector('meta[property="og:url"]') != null;

  //TODO: This does not work.
  int get videoLikeCount => int.tryParse(_videoLikeExp
          .firstMatch(_root.outerHtml)
          ?.group(1)
          ?.nullIfWhitespace
          ?.stripNonDigits() ??
      '');

  //TODO: This does not work.
  int get videoDislikeCount => int.tryParse(_videoDislikeExp
          .firstMatch(_root.outerHtml)
          ?.group(1)
          ?.nullIfWhitespace
          ?.stripNonDigits() ??
      '');

  _PlayerConfig get playerConfig => _PlayerConfig(json.decode(_root
      .getElementsByTagName('script')
      .map((e) => e.text)
      .map(_extractJson)
      .firstWhere((e) => e != null)));

  WatchPage.parse(String raw) : _root = parser.parse(raw);

  static Future<WatchPage> get(YoutubeHttpClient httpClient, String videoId) {
    final url = 'https://youtube.com/watch?v=$videoId&bpctr=9999999999&hl=en';
    return retry(() async {
      var raw = await httpClient.getString(url);

      var result = WatchPage.parse(raw);

      if (!result.isOk) {
        throw TransientFailureException("Video watch page is broken.");
      }

      if (!result.isVideoAvailable) {
        throw VideoUnavailableException.unavailable(VideoId(videoId));
      }
      return result;
    });
  }

  String _extractJson(String str) {
    var startIndex = str.indexOf('ytplayer.config =');
    var endIndex = str.indexOf(';ytplayer.load =');
    if (startIndex == -1 || endIndex == -1) return null;

    return str.substring(startIndex + 17, endIndex);
  }
}

class _StreamInfo extends StreamInfoProvider {
  final Map<String, String> _root;

  _StreamInfo(this._root);

  @override
  int get bitrate => int.parse(_root['bitrate']);

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
      StreamInfoProvider.contentLenExp
          .firstMatch(url)
          .group(1)
          .nullIfWhitespace ??
      '');

  MediaType get mimeType => MediaType.parse(_root['mimeType']);

  @override
  String get container => mimeType.subtype;

  bool get isAudioOnly => mimeType.type == 'audio';

  @override
  String get audioCodec => codecs.last;

  @override
  String get videoCodec => isAudioOnly ? null : codecs.first;

  List<String> get codecs =>
      mimeType.parameters['codecs'].split(',').map((e) => e.trim());

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

class _PlayerConfig {
  // Json parsed map
  final Map<String, dynamic> _root;

  _PlayerConfig(this._root);

  String get sourceUrl => 'https://youtube.com${_root['assets']['js']}';

  PlayerResponse get playerResponse =>
      PlayerResponse.parse(_root['args']['player_response']);

  List<_StreamInfo> get muxedStreams =>
      _root['args']
          .get('url_encoded_fmt_stream_map')
          ?.split(',')
          ?.map((e) => _StreamInfo(Uri.splitQueryString(e))) ??
      const [];

  List<_StreamInfo> get adaptiveStreams =>
      _root['args']
          .get('adaptive_fmts')
          ?.split(',')
          ?.map((e) => _StreamInfo(Uri.splitQueryString(e))) ??
      const [];

  List<_StreamInfo> get streams => [...muxedStreams, ...adaptiveStreams];
}

extension _GetOrNull<K, V> on Map<K, V> {
  V get(K key) {
    var v = this[key];
    if (v == null) {
      return null;
    }
    return v;
  }
}
