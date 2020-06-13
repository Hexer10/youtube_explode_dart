library _youtube_explode.extensions;

import '../reverse_engineering/cipher/cipher_operations.dart';

/// Utility for Strings.
extension StringUtility on String {
  /// Returns null if this string is whitespace.
  String get nullIfWhitespace => trim().isEmpty ? null : this;

  /// Returns true if the string is null or empty.
  bool get isNullOrWhiteSpace {
    if (this == null) {
      return true;
    }
    if (trim().isEmpty) {
      return true;
    }
    return false;
  }

  /// Returns null if this string is a whitespace.
  String substringUntil(String separator) => substring(0, indexOf(separator));

  ///
  String substringAfter(String separator) =>
      substring(indexOf(separator) + separator.length);

  static final _exp = RegExp(r'\D');

  /// Strips out all non digit characters.
  String stripNonDigits() => replaceAll(_exp, '');
}

/// List decipher utility.
extension ListDecipher on Iterable<CipherOperation> {
  /// Apply every CipherOperation on the [signature]
  String decipher(String signature) {
    for (var operation in this) {
      signature = operation.decipher(signature);
    }

    return signature;
  }
}

/// List Utility.
extension ListFirst<E> on Iterable<E> {
  /// Returns the first element of a list or null if empty.
  E get firstOrNull {
    if (length == 0) {
      return null;
    }
    return first;
  }
}

/// Uri utility
extension UriUtility on Uri {
  /// Returns a new Uri with the new query parameters set.
  Uri setQueryParam(String key, String value) {
    var query = Map<String, String>.from(queryParameters);

    query[key] = value;

    return replace(queryParameters: query);
  }
}

///
extension GetOrNull<K, V> on Map<K, V> {
  /// Get a value from a map
  V getValue(K key) {
    var v = this[key];
    if (v == null) {
      return null;
    }
    return v;
  }
}

///
extension GetOrNullMap on Map {
  /// Get a map inside a map
  Map<String, dynamic> get(String key) {
    var v = this[key];
    if (v == null) {
      return null;
    }
    return v;
  }
}
