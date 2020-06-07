import 'package:http/http.dart';

import 'youtube_explode_exception.dart';

/// Exception thrown when a fatal failure occurs.
class TransientFailureException implements YoutubeExplodeException {
  @override
  final String message;

  /// Initializes an instance of [TransientFailureException]
  TransientFailureException(this.message);

  /// Initializes an instance of [TransientFailureException] with a [Response]
  TransientFailureException.httpRequest(BaseResponse response)
      : message = '''
Failed to perform an HTTP request to YouTube due to a transient failure.
In most cases, this error indicates that the problem is on YouTube's side and this is not a bug in the library.
To resolve this error, please wait some time and try again.
If this issue persists, please report it on the project's GitHub page.
Request: ${response.request}
Response: $response
''';

  @override
  String toString() => 'TransientFailureException: $message';
}
