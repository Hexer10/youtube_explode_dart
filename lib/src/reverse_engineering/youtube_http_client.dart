import 'dart:async';

import 'package:http/http.dart' as http;

import '../exceptions/exceptions.dart';
import '../videos/streams/streams.dart';

/// HttpClient wrapper for YouTube
class YoutubeHttpClient extends http.BaseClient {
  final http.Client _httpClient;

  final Map<String, String> _defaultHeaders = const {
    'user-agent':
        'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36',
    'accept-language': 'en-US,en;q=1.0',
    'x-youtube-client-name': '1',
    'x-youtube-client-version': '2.20200609.04.02',
    'x-spf-previous': 'https://www.youtube.com/',
    'x-spf-referer': 'https://www.youtube.com/',
    'x-youtube-device':
        'cbr=Chrome&cbrver=81.0.4044.138&ceng=WebKit&cengver=537.36'
            '&cos=Windows&cosver=10.0',
    'x-youtube-page-label': 'youtube.ytfe.desktop_20200617_1_RC1'
  };

  /// Initialize an instance of [YoutubeHttpClient]
  YoutubeHttpClient([http.Client? httpClient])
      : _httpClient = httpClient ?? http.Client();

  /// Throws if something is wrong with the response.
  void _validateResponse(http.BaseResponse response, int statusCode) {
    var request = response.request!;
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

  ///
  Future<String> getString(dynamic url,
      {Map<String, String> headers = const {}, bool validate = true}) async {
    var response = await get(url, headers: headers);

    if (validate) {
      _validateResponse(response, response.statusCode);
    }

    return response.body;
  }

  @override
  Future<http.Response> get(dynamic url,
      {Map<String, String>? headers = const {}, bool validate = false}) async {
    assert(url is String || url is Uri);
    if (url is String) {
      url = Uri.parse(url);
    }
    var response = await super.get(url, headers: headers);
    if (validate) {
      _validateResponse(response, response.statusCode);
    }
    return response;
  }

  ///
  Future<String> postString(dynamic url,
      {Map<String, String>? body,
      Map<String, String> headers = const {},
      bool validate = true}) async {
    var response = await post(url, headers: headers, body: body);

    if (validate) {
      _validateResponse(response, response.statusCode);
    }

    return response.body;
  }

  Stream<List<int>> getStream(StreamInfo streamInfo,
      {Map<String, String> headers = const {},
      bool validate = true,
      int start = 0,
      int errorCount = 0}) async* {
    var url = streamInfo.url;
    var bytesCount = start;
    for (var i = start; i < streamInfo.size.totalBytes; i += 9898989) {
      try {
        final request = http.Request('get', url);
        request.headers['range'] = 'bytes=$i-${i + 9898989 - 1}';
        final response = await send(request);
        if (validate) {
          _validateResponse(response, response.statusCode);
        }
        final stream = StreamController<List<int>>();
        response.stream.listen((data) {
          bytesCount += data.length;
          stream.add(data);
        }, onError: (_) => null, onDone: stream.close, cancelOnError: false);
        errorCount = 0;
        yield* stream.stream;
      } on Exception {
        if (errorCount == 5) {
          rethrow;
        }
        await Future.delayed(const Duration(milliseconds: 500));
        yield* getStream(streamInfo,
            headers: headers,
            validate: validate,
            start: bytesCount,
            errorCount: errorCount + 1);
        break;
      }
    }
  }

  ///
  Future<int?> getContentLength(dynamic url,
      {Map<String, String> headers = const {}, bool validate = true}) async {
    var response = await head(url, headers: headers);

    if (validate) {
      _validateResponse(response, response.statusCode);
    }

    return int.tryParse(response.headers['content-length'] ?? '');
  }

  @override
  void close() => _httpClient.close();

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    _defaultHeaders.forEach((key, value) {
      if (request.headers[key] == null) {
        request.headers[key] = _defaultHeaders[key]!;
      }
    });
    // print('Request: $request');
//    print('Stack:\n${StackTrace.current}');
    return _httpClient.send(request);
  }
}
