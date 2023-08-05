import 'dart:async';

import '../youtube_explode_dart.dart';

/// Run the [function] each time an exception is thrown until the retryCount
/// is 0.
Future<T> retry<T>(
  YoutubeHttpClient? client,
  FutureOr<T> Function() function,
) async {
  var retryCount = 5;

  // ignore: literal_only_boolean_expressions
  while (true) {
    try {
      return await function();
      // ignore: avoid_catches_without_on_clauses
    } on Exception catch (e) {
      if (client != null && client.closed) {
        throw HttpClientClosedException();
      }

      retryCount -= getExceptionCost(e);
      if (retryCount <= 0) {
        rethrow;
      }
      await Future.delayed(const Duration(milliseconds: 500));
    }
  }
}

/// Get "retry" cost of each YoutubeExplode exception.
int getExceptionCost(Exception e) {
  if (e is RequestLimitExceededException) {
    return 2;
  }
  if (e is FatalFailureException) {
    return 3;
  }
  return 1;
}
