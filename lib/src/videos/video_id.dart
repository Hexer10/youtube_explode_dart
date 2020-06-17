import 'package:equatable/equatable.dart';

import '../extensions/helpers_extension.dart';

/// Encapsulates a valid YouTube video ID.
class VideoId with EquatableMixin {
  static final _regMatchExp = RegExp(r'youtube\..+?/watch.*?v=(.*?)(?:&|/|$)');
  static final _shortMatchExp = RegExp(r'youtu\.be/(.*?)(?:\?|&|/|$)');
  static final _embedMatchExp = RegExp(r'youtube\..+?/embed/(.*?)(?:\?|&|/|$)');

  /// ID as string.
  final String value;

  /// Initializes an instance of [VideoId] with a url or video id.
  VideoId(String idOrUrl) : value = parseVideoId(idOrUrl) {
    if (value == null) {
      throw ArgumentError.value(
          idOrUrl, 'urlOrUrl', 'Invalid YouTube video ID or URL');
    }
  }

  @override
  String toString() => value;

  @override
  List<Object> get props => [value];

  /// Returns true if the given [videoId] is valid.
  static bool validateVideoId(String videoId) {
    if (videoId.isNullOrWhiteSpace) {
      return false;
    }

    if (videoId.length != 11) {
      return false;
    }

    return !RegExp(r'[^0-9a-zA-Z_\-]').hasMatch(videoId);
  }

  /// Parses a video id from url or if given a valid id as url returns itself.
  /// Returns null if the id couldn't be extracted.
  static String parseVideoId(String url) {
    if (url.isNullOrWhiteSpace) {
      return null;
    }

    if (validateVideoId(url)) {
      return url;
    }

    // https://www.youtube.com/watch?v=yIVRs6YSbOM
    var regMatch = _regMatchExp.firstMatch(url)?.group(1);
    if (!regMatch.isNullOrWhiteSpace && validateVideoId(regMatch)) {
      return regMatch;
    }

    // https://youtu.be/yIVRs6YSbOM
    var shortMatch = _shortMatchExp.firstMatch(url)?.group(1);
    if (!shortMatch.isNullOrWhiteSpace && validateVideoId(shortMatch)) {
      return shortMatch;
    }

    // https://www.youtube.com/embed/yIVRs6YSbOM
    var embedMatch = _embedMatchExp.firstMatch(url)?.group(1);
    if (!embedMatch.isNullOrWhiteSpace && validateVideoId(embedMatch)) {
      return embedMatch;
    }
    return null;
  }

  ///  Converts [obj] to a [VideoId] by calling .toString on that object.
  /// If it is already a [VideoId], [obj] is returned
  factory VideoId.fromString(dynamic obj) {
    if (obj is VideoId) {
      return obj;
    }
    return VideoId(obj.toString());
  }
}
