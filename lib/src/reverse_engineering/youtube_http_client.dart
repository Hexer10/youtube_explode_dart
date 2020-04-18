import 'package:http/http.dart';

class YoutubeHttpClient {
  final Client _httpClient = Client();

  /// Throws if something is wrong with the response.
  void _validateResponse(Request request, int statusCode) {
    if (request.url.host.endsWith('.google.com') &&
        request.url.path.startsWith('/sorry/')) {
      //TODO: throw RequestLimitExceededException.FailedHttpRequest(response);
    }

    if (statusCode >= 500) {
      //TODO: TransientFailureException.FailedHttpRequest(response);
    }

    if (statusCode == 429) {
      //TODO: throw RequestLimitExceededException.FailedHttpRequest(response);
    }

    if (statusCode >= 400) {
      //TODO: throw FatalFailureException.FailedHttpRequest(response);
    }
  }

  Future<Response> get(dynamic url, {Map<String, String> headers}) {
    return _httpClient.get(url, headers: headers);
  }

  Future<Response> head(dynamic url, {Map<String, String> headers}) {
    return _httpClient.head(url, headers: headers);
  }

  Future<String> getString(dynamic url,
      {Map<String, String> headers, bool validate = true}) async {
    var response = await _httpClient.get(url, headers: headers);

    if (validate) {
      _validateResponse(response.request, response.statusCode);
    }

    return response.body;
  }

  Stream<List<int>> getStream(dynamic url,
      {Map<String, String> headers,
        int from,
        int to,
        bool validate = true}) async* {
    var request = Request('get', url);
    request.headers['range'] = 'bytes=$from-$to';
    var response = await request.send();
    if (validate) {
      _validateResponse(response.request, response.statusCode);
    }
    yield* response.stream;
  }

  Future<int> getContentLength(dynamic url,
      {Map<String, String> headers, bool validate = true}) async {
    var response = await head(url, headers: headers);

    if (validate) {
      _validateResponse(response.request, response.statusCode);
    }

    return int.parse(response.headers['content-length']);
  }
}
