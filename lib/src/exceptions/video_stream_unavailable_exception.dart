

/// Thrown when a video stream is not available
/// and returns a status code not equal to 200 OK.
class VideoStreamUnavailableException implements Exception {

  /// The returned status code.
  final int statusCode;

  /// Url
  final Uri url;

  /// Initializes an instance of [VideoStreamUnavailableException]
  VideoStreamUnavailableException(this.statusCode, this.url);

  @override
  String toString() => 'VideoStreamUnavailableException: '
      'The video stream in not availble (status code: $statusCode).\n'
      'Url: $url';
}