import 'package:http_parser/http_parser.dart';

import '../../exceptions/exceptions.dart';
import '../../retry.dart';
import '../youtube_http_client.dart';
import 'player_response.dart';
import 'stream_info_provider.dart';

///
class VideoInfoResponse {
  final Map<String, String> _root;

  String _status;
  bool _isVideoAvailable;
  PlayerResponse _playerResponse;
  Iterable<_StreamInfo> _muxedStreams;
  Iterable<_StreamInfo> _adaptiveStreams;
  Iterable<_StreamInfo> _streams;

  ///
  String get status => _status ??= _root['status'];

  ///
  bool get isVideoAvailable =>
      _isVideoAvailable ??= status.toLowerCase() != 'fail';

  ///
  PlayerResponse get playerResponse =>
      _playerResponse ??= PlayerResponse.parse(_root['player_response']);

  ///
  Iterable<_StreamInfo> get muxedStreams =>
      _muxedStreams ??= _root['url_encoded_fmt_stream_map']
              ?.split(',')
              ?.map(Uri.splitQueryString)
              ?.map((e) => _StreamInfo(e)) ??
          const [];

  ///
  Iterable<_StreamInfo> get adaptiveStreams =>
      _adaptiveStreams ??= _root['adaptive_fmts']
              ?.split(',')
              ?.map(Uri.splitQueryString)
              ?.map((e) => _StreamInfo(e)) ??
          const [];

  ///
  Iterable<_StreamInfo> get streams =>
      _streams ??= [...muxedStreams, ...adaptiveStreams];

  ///
  VideoInfoResponse(this._root);

  ///
  VideoInfoResponse.parse(String raw) : _root = Uri.splitQueryString(raw);

  ///
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

  int _tag;
  String _url;
  String _signature;
  String _signatureParameter;
  int _contentLength;
  int _bitrate;
  MediaType _mimeType;
  String _container;
  List<String> _codecs;
  String _audioCodec;
  String _videoCodec;
  bool _isAudioOnly;
  String _videoQualityLabel;
  List<int> __size;
  int _videoWidth;
  int _videoHeight;
  int _framerate;

  @override
  int get tag => _tag ??= int.parse(_root['itag']);

  @override
  String get url => _url ??= _root['url'];

  @override
  String get signature => _signature ??= _root['s'];

  @override
  String get signatureParameter => _signatureParameter ??= _root['sp'];

  @override
  int get contentLength => _contentLength ??= int.tryParse(_root['clen'] ??
      StreamInfoProvider.contentLenExp.firstMatch(url).group(1));

  @override
  int get bitrate => _bitrate ??= int.parse(_root['bitrate']);

  MediaType get mimeType => _mimeType ??= MediaType.parse(_root['type']);

  @override
  String get container => _container ??= mimeType.subtype;

  List<String> get codecs =>
      _codecs ??= mimeType.parameters['codecs'].split(',').map((e) => e.trim());

  @override
  String get audioCodec => _audioCodec ??= codecs.last;

  @override
  String get videoCodec => _videoCodec ??= isAudioOnly ? null : codecs.first;

  bool get isAudioOnly => _isAudioOnly ??= mimeType.type == 'audio';

  @override
  String get videoQualityLabel => _videoQualityLabel ??= _root['quality_label'];

  List<int> get _size =>
      __size ??= _root['size'].split(',').map((e) => int.tryParse(e ?? ''));

  @override
  int get videoWidth => _videoWidth ??= _size.first;

  @override
  int get videoHeight => _videoHeight ??= _size.last;

  @override
  int get framerate => _framerate ??= int.tryParse(_root['fps'] ?? '');

  _StreamInfo(this._root);
}
