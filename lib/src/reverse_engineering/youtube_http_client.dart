import 'package:http/http.dart';
import 'package:meta/meta.dart';
import 'package:youtube_explode_dart/src/videos/streams/streams.dart';

import '../exceptions/exceptions.dart';

class YoutubeHttpClient {
  final Client _httpClient = Client();

  final Map<String, String> _userAgent = const {
    'user-agent':
        'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36'
  };

  /// Throws if something is wrong with the response.
  void _validateResponse(BaseResponse response, int statusCode) {
    var request = response.request;
    if (request.url.host.endsWith('.google.com') &&
        request.url.path.startsWith('/sorry/')) {
      throw RequestLimitExceededException.httpRequest(response);
    }

    if (statusCode >= 500) {
      throw TransientFailureException.httpRequest(response);
    }

    if (statusCode == 429) {
      throw RequestLimitExceededException.httpRequest(response);
    }

    if (statusCode >= 400) {
      throw FatalFailureException.httpRequest(response);
    }
  }

  Future<Response> get(dynamic url, {Map<String, String> headers}) {
    return _httpClient.get(url, headers: {...?headers, ..._userAgent});
  }

  Future<Response> head(dynamic url, {Map<String, String> headers}) {
    return _httpClient.head(url, headers: {...?headers, ..._userAgent});
  }

  Future<String> getString(dynamic url,
      {Map<String, String> headers, bool validate = true}) async {
    var response =
        await _httpClient.get(url, headers: {...?headers, ..._userAgent});

    if (validate) {
      _validateResponse(response, response.statusCode);
    }

    return response.body;
  }

  Stream<List<int>> getStream(dynamic url,
      {Map<String, String> headers,
      @required StreamInfo streamInfo,
      bool validate = true}) async* {
    if (!streamInfo.isRateLimited()) {
      var request = Request('get', url);
      request.headers.addAll(_userAgent);
      var response = await request.send();
      if (validate) {
        _validateResponse(response, response.statusCode);
      }
      yield* response.stream;
      return;
    } else {
      for (var i = 0; i < streamInfo.size.totalBytes; i += 9898989) {
        var request = Request('get', url);
        request.headers['range'] = 'bytes=$i-${i + 9898989}';
        request.headers.addAll(_userAgent);
        var response = await request.send();
        if (validate) {
          _validateResponse(response, response.statusCode);
        }
        yield* response.stream;
      }
    }
  }

  Future<int> getContentLength(dynamic url,
      {Map<String, String> headers, bool validate = true}) async {
    var response = await head(url, headers: headers);

    if (validate) {
      _validateResponse(response, response.statusCode);
    }

    return int.tryParse(response.headers['content-length'] ?? '');
  }

  /// Closes the [Client] assigned to this [YoutubeHttpClient].
  /// Should be called after this is not used anymore.
  void close() => _httpClient.close();
}
