import '../extensions/helpers_extension.dart';

/// Encapsulates a valid YouTube user name.
class Username {
  /// User name as string.
  final String value;

  /// Initializes an instance of [Username].
  Username(String urlOrUsername) : value = parseUsername(urlOrUsername) {
    if (value == null) {
      throw ArgumentError.value(
          urlOrUsername, 'urlOrUsername', 'Invalid username');
    }
  }

  /// Returns true if the given username is a valid username.
  static bool validateUsername(String name) {
    if (name.isNullOrWhiteSpace) {
      return false;
    }

    if (name.length > 20) {
      return false;
    }

    return !RegExp('[^0-9a-zA-Z]').hasMatch(name);
  }

  /// Parses a username from a url.
  static String parseUsername(String nameOrUrl) {
    if (nameOrUrl.isNullOrWhiteSpace) {
      return null;
    }

    if (validateUsername(nameOrUrl)) {
      return nameOrUrl;
    }

    var regMatch = RegExp(r'youtube\..+?/user/(.*?)(?:\?|&|/|$)')
        .firstMatch(nameOrUrl)
        ?.group(1);
    if (!regMatch.isNullOrWhiteSpace && validateUsername(regMatch)) {
      return regMatch;
    }
    return null;
  }

  ///  Converts [obj] to a [Username] by calling .toString on that object.
  /// If it is already a [Username], [obj] is returned
  factory Username.fromString(dynamic obj) {
    if (obj is Username) {
      return obj;
    }
    return Username(obj.toString());
  }
}
