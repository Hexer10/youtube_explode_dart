import 'dart:async';

import 'package:http/http.dart' as http;

import '../exceptions/exceptions.dart';
import '../models/models.dart';

/// Download extension for [MediaStreamInfo]
extension DownloadExtension on MediaStreamInfo {
  static final _rateBypassExp = RegExp('ratebypass[=/]yes');

  /// Returns the stream of this media stream object.
  /// The download is split in multiple requests using the `range` parameter.
  ///
  Stream<List<int>> downloadStream() async* {
    var req = await http.head(url);
    if (req.statusCode != 200) {
      throw VideoStreamUnavailableException(req.statusCode, url);
    }

    var maxSize = _rateBypassExp.hasMatch(url.toString()) ? 9898989 : size + 1;
    var total = 0;

    for (var i = 1; total < size; i++) {
      var req = http.Request('get', url);
      req.headers['range'] = 'bytes=$total-${total + maxSize}';
      var resp = await req.send();
      yield* resp.stream;
      total += maxSize + 1;
    }
  }
}
