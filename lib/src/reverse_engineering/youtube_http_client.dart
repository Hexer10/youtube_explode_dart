import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../exceptions/exceptions.dart';
import '../extensions/helpers_extension.dart';
import '../retry.dart';
import '../videos/streams/streams.dart';

/// HttpClient wrapper for YouTube
class YoutubeHttpClient extends http.BaseClient {
  final http.Client _httpClient;

  // Flag to interrupt receiving stream.
  bool _closed = false;

  bool get closed => _closed;

  static const Map<String, String> _defaultHeaders = {
    'user-agent':
        'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36',
    'cookie': 'CONSENT=YES+cb',
    'accept':
        'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9',
    'accept-language': 'en-US,en;q=0.9',
    'sec-fetch-dest': 'document',
    'sec-fetch-mode': 'navigate',
    'sec-fetch-site': 'none',
    'sec-fetch-user': '?1',
    'sec-gpc': '1',
    'upgrade-insecure-requests': '1'
  };

  /// Initialize an instance of [YoutubeHttpClient]
  YoutubeHttpClient([http.Client? httpClient])
      : _httpClient = httpClient ?? http.Client();

  /// Throws if something is wrong with the response.
  void _validateResponse(http.BaseResponse response, int statusCode) {
    if (_closed) return;

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
    var response =
        await _httpClient.get(url is String ? Uri.parse(url) : url, headers: headers);
    if (_closed) throw HttpClientClosedException();

    if (validate) {
      _validateResponse(response, response.statusCode);
    }

    return response.body;
  }

  @override
  Future<http.Response> get(Uri url,
      {Map<String, String>? headers = const {}, bool validate = false}) async {
    var response = await _httpClient.get(url, headers: headers);
    if (_closed) throw HttpClientClosedException();

    if (validate) {
      _validateResponse(response, response.statusCode);
    }

    //final now = DateTime.now();
    //_log(response.body,
    //    '${now.minute}.${now.second}.${now.millisecond}-${url.pathSegments.last}-GET');

    return response;
  }

  @override
  Future<http.Response> post(Uri url,
      {Map<String, String>? headers,
      Object? body,
      Encoding? encoding,
      bool validate = false}) async {
    final response =
        await _httpClient.post(url, headers: headers, body: body, encoding: encoding);
    if (_closed) throw HttpClientClosedException();

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
    assert(url is String || url is Uri);
    if (url is String) {
      url = Uri.parse(url);
    }
    var response = await _httpClient.post(url, headers: headers, body: body);
    if (_closed) throw HttpClientClosedException();

    if (validate) {
      _validateResponse(response, response.statusCode);
    }

    return response.body;
  }

  Stream<List<int>> getStream(StreamInfo streamInfo,
      {Map<String, String> headers = const {},
      bool validate = true,
      int start = 0,
      int errorCount = 0}) {
    if (streamInfo.fragments.isNotEmpty) {
      // DASH(fragmented) stream
      return _getFragmentedStream(streamInfo,
          headers: headers,
          validate: validate,
          start: start,
          errorCount: errorCount);
    }
    // Normal stream
    return _getStream(streamInfo,
        headers: headers,
        validate: validate,
        start: start,
        errorCount: errorCount);
  }

  Stream<List<int>> _getFragmentedStream(StreamInfo streamInfo,
      {Map<String, String> headers = const {},
      bool validate = true,
      int start = 0,
      int errorCount = 0}) async* {
    // This is the base url.
    final url = streamInfo.url;
    for (final fragment in streamInfo.fragments) {
      final req = await retry(
          this, () => get(Uri.parse(url.toString() + fragment.path)));
      yield req.bodyBytes;
    }
  }

  Stream<List<int>> _getStream(StreamInfo streamInfo,
      {Map<String, String> headers = const {},
      bool validate = true,
      int start = 0,
      int errorCount = 0}) async* {
    final url = streamInfo.url;
    var bytesCount = start;

    while (!_closed && bytesCount != streamInfo.size.totalBytes) {
      try {
        final response = await retry(this, () {
          final from = bytesCount;
          final to = (streamInfo.isThrottled
                  ? (bytesCount + 9898989)
                  : streamInfo.size.totalBytes) -
              1;
          final request =
              http.Request('get', url.setQueryParam('range', '$from-$to'));
          return send(request);
        });
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
      } on HttpClientClosedException {
        break;
      } on Exception {
        if (errorCount == 5) {
          rethrow;
        }
        await Future.delayed(const Duration(milliseconds: 500));
        yield* _getStream(streamInfo,
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
    var response = await _httpClient.head(url, headers: headers);
    if (_closed) throw HttpClientClosedException();

    if (validate) {
      _validateResponse(response, response.statusCode);
    }

    return int.tryParse(response.headers['content-length'] ?? '');
  }

  /// Sends a call to the youtube api endpoint.
  Future<JsonMap> sendPost(String action, String token) async {
    assert(action == 'next' || action == 'browse' || action == 'search');

    final body = {
      'context': const {
        'client': {
          'browserName': 'Chrome',
          'browserVersion': '105.0.0.0',
          'clientFormFactor': 'UNKNOWN_FORM_FACTOR',
          'clientName': "WEB",
          'clientVersion': "2.20220921.00.00"
        }
      },
      'continuation': token
    };

    final url = Uri.parse(
        'https://www.youtube.com/youtubei/v1/$action?key=AIzaSyAO_FJ2SlqU8Q4STEHLGCilw_Y9_11qcW8');

    return retry<JsonMap>(this, () async {
      final raw = await _httpClient.post(url, body: json.encode(body));
      if (_closed) throw HttpClientClosedException();

      //final now = DateTime.now();
      //_log(raw.body,
      //    '${now.minute}.${now.second}.${now.millisecond}-$action-POST');
      return json.decode(raw.body);
    });
  }

  @override
  void close() {
    _closed = true;
    _httpClient.close();
  }

  //void _log(String str, String filename) {
  //  Directory('requests').createSync();
  //  File('requests/$filename.json')
  //      .writeAsStringSync('${StackTrace.current}\n$str');
  //}

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_closed) throw HttpClientClosedException();

    // Apply default headers if they are not already present
    _defaultHeaders.forEach((key, value) {
      if (request.headers[key] == null) {
        request.headers[key] = _defaultHeaders[key]!;
      }
    });

    //print(request);
    //print(StackTrace.current);
    return _httpClient.send(request);
  }
}
