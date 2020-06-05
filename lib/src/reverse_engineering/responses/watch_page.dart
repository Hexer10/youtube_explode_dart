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
  final RegExp _videoLikeExp = RegExp(r'"label"\s*:\s*"([\d,\.]+) likes"');
  final RegExp _videoDislikeExp = RegExp(r'"label"\s*:\s*"([\d,\.]+) dislikes');

  final Document _root;

  WatchPage(this._root);

  bool get isOk => _root.body.querySelector('#player') != null;

  bool get isVideoAvailable =>
      _root.querySelector('meta[property="og:url"]') != null;

  //TODO: Update this to the new "parsing method" w/ regex "label"\s*:\s*"([\d,\.]+) likes"
  int get videoLikeCount => int.parse(_root
          .querySelector('.like-button-renderer-like-button')
          ?.text
          ?.stripNonDigits()
          ?.nullIfWhitespace ??
      '0');

  //TODO: Update this to the new "parsing method" w/ regex "label"\s*:\s*"([\d,\.]+) dislikes"
  int get videoDislikeCount => int.parse(_root
          .querySelector('.like-button-renderer-dislike-button')
          ?.text
          ?.stripNonDigits()
          ?.nullIfWhitespace ??
      '0');

  _PlayerConfig get playerConfig => _PlayerConfig(json.decode(
      _matchJson(_extractJson(_root.getElementsByTagName('html').first.text))));

  final String configSep = 'ytplayer.config = ';

  String _extractJson(String html) {
    return _matchJson(
        html.substring(html.indexOf(configSep) + configSep.length));
  }

  String _matchJson(String str) {
    var bracketCount = 0;
    int lastI;
    for (var i = 0; i < str.length; i++) {
      lastI = i;
      if (str[i] == '{') {
        bracketCount++;
      } else if (str[i] == '}') {
        bracketCount--;
      } else if (str[i] == ';') {
        if (bracketCount == 0) {
          return str.substring(0, i);
        }
      }
    }
    return str.substring(0, lastI + 1);
  }

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
      _root
          .get('args')
          ?.getValue('url_encoded_fmt_stream_map')
          ?.split(',')
          ?.map((e) => _StreamInfo(Uri.splitQueryString(e))) ??
      const [];

  List<_StreamInfo> get adaptiveStreams =>
      _root
          .get('args')
          ?.getValue('adaptive_fmts')
          ?.split(',')
          ?.map((e) => _StreamInfo(Uri.splitQueryString(e))) ??
      const [];

  List<_StreamInfo> get streams => [...muxedStreams, ...adaptiveStreams];
}
