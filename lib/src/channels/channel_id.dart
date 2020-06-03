import 'package:equatable/equatable.dart';

import '../extensions/helpers_extension.dart';

/// Encapsulates a valid YouTube channel ID.
class ChannelId extends Equatable {
  /// ID as a string.
  final String value;

  /// Initializes an instance of [ChannelId]
  ChannelId(String value)
      : value = parseChannelId(value) ??
            ArgumentError.value(value, 'value', 'Invalid channel id.');

  static bool validateChannelId(String id) {
    if (id.isNullOrWhiteSpace) {
      return false;
    }

    if (!id.startsWith('UC')) {
      return false;
    }

    if (id.length != 24) {
      return false;
    }

    return !RegExp('[^0-9a-zA-Z_\-]').hasMatch(id);
  }

  /// Parses a channel id from an url.
  /// Returns null if the username is not found.
  static String parseChannelId(String url) {
    if (url.isNullOrWhiteSpace) {
      return null;
    }

    if (validateChannelId(url)) {
      return url;
    }

    var regMatch = RegExp(r'youtube\..+?/channel/(.*?)(?:\?|&|/|$)')
        .firstMatch(url)
        ?.group(1);
    if (!regMatch.isNullOrWhiteSpace && validateChannelId(regMatch)) {
      return regMatch;
    }
    return null;
  }

  @override
  List<Object> get props => [value];
}
