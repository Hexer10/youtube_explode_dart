import 'package:freezed_annotation/freezed_annotation.dart';

import '../extensions/helpers_extension.dart';

part 'video_id.freezed.dart';

/// Encapsulates a valid YouTube video ID.
@freezed
class VideoId with _$VideoId {
  static final _regMatchExp = RegExp(r'youtube\..+?/watch.*?v=(.*?)(?:&|/|$)');
  static final _shortMatchExp = RegExp(r'youtu\.be/(.*?)(?:\?|&|/|$)');
  static final _embedMatchExp = RegExp(r'youtube\..+?/embed/(.*?)(?:\?|&|/|$)');
  static final _shortsMatchExp =
      RegExp(r'youtube\..+/shorts/([A-Za-z0-9-_]+$)');

  /// Initializes an instance of [VideoId] with a url or video id.
  factory VideoId(String idOrUrl) {
    final id = parseVideoId(idOrUrl);

    if (id == null) {
      throw ArgumentError.value(
        idOrUrl,
        'urlOrUrl',
        'Invalid YouTube video ID or URL',
      );
    }
    return VideoId._internal(id);
  }

  const VideoId._();

  const factory VideoId._internal(
    /// ID as string.
    String value,
  ) = _VideoId;

  ///  Converts [obj] to a [VideoId] by calling .toString on that object.
  /// If it is already a [VideoId], [obj] is returned
  factory VideoId.fromString(dynamic obj) {
    if (obj is VideoId) {
      return obj;
    }
    return VideoId(obj.toString());
  }

  @override
  String toString() => value;

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
  static String? parseVideoId(String url) {
    if (url.isNullOrWhiteSpace) {
      return null;
    }

    if (validateVideoId(url)) {
      return url;
    }

    // https://www.youtube.com/watch?v=yIVRs6YSbOM
    final regMatch = _regMatchExp.firstMatch(url)?.group(1);
    if (!regMatch.isNullOrWhiteSpace && validateVideoId(regMatch!)) {
      return regMatch;
    }

    // https://youtu.be/yIVRs6YSbOM
    final shortMatch = _shortMatchExp.firstMatch(url)?.group(1);
    if (!shortMatch.isNullOrWhiteSpace && validateVideoId(shortMatch!)) {
      return shortMatch;
    }

    // https://www.youtube.com/embed/yIVRs6YSbOM
    final embedMatch = _embedMatchExp.firstMatch(url)?.group(1);
    if (!embedMatch.isNullOrWhiteSpace && validateVideoId(embedMatch!)) {
      return embedMatch;
    }

    // https://www.youtube.com/shorts/yIVRs6YSbOM
    final shortsMatch = _shortsMatchExp.firstMatch(url)?.group(1);
    if (!shortsMatch.isNullOrWhiteSpace && validateVideoId(shortsMatch!)) {
      return shortsMatch;
    }
    return null;
  }
}
