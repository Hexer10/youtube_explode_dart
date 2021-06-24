library _youtube_explode.extensions;

import 'dart:convert';
import 'package:collection/collection.dart';

import '../reverse_engineering/cipher/cipher_operations.dart';

/// Utility for Strings.
extension StringUtility on String {
  /// Returns null if this string is whitespace.
  String? get nullIfWhitespace => trim().isEmpty ? null : this;

  /// Returns null if this string is a whitespace.
  String substringUntil(String separator) => substring(0, indexOf(separator));

  ///
  String substringAfter(String separator) =>
      substring(indexOf(separator) + separator.length);

  static final _exp = RegExp(r'\D');

  /// Strips out all non digit characters.
  String stripNonDigits() => replaceAll(_exp, '');

  /// Extract and decode json from a string
  Map<String, dynamic>? extractJson([String separator = '']) {
    final index = indexOf(separator) + separator.length;
    if (index > length) {
      return null;
    }

    final str = substring(index);

    final startIdx = str.indexOf('{');
    var endIdx = str.lastIndexOf('}');

    while (true) {
      try {
        return json.decode(str.substring(startIdx, endIdx + 1))
            as Map<String, dynamic>;
      } on FormatException {
        endIdx = str.lastIndexOf(str.substring(0, endIdx));
        if (endIdx == 0) {
          return null;
        }
      }
    }
  }

  /// Format: HH:MM:SS
  Duration? toDuration() {
    if (/*string == null ||*/ trim().isEmpty) {
      return null;
    }

    var parts = split(':');
    assert(parts.length <= 3);

    if (parts.length == 1) {
      return Duration(seconds: int.parse(parts.first));
    }
    if (parts.length == 2) {
      return Duration(
          minutes: int.parse(parts[0]), seconds: int.parse(parts[1]));
    }
    if (parts.length == 3) {
      return Duration(
          hours: int.parse(parts[0]),
          minutes: int.parse(parts[1]),
          seconds: int.parse(parts[2]));
    }
    // Shouldn't reach here.
    throw Error();
  }

  DateTime parseDateTime() => DateTime.parse(this);
}

/// Utility for Strings.
extension StringUtility2 on String? {
  /// Parses this value as int stripping the non digit characters,
  /// returns null if this fails.
  int? parseInt() => int.tryParse(this?.stripNonDigits() ?? '');

  /// Returns true if the string is null or empty.
  bool get isNullOrWhiteSpace {
    if (this == null) {
      return true;
    }
    if (this!.trim().isEmpty) {
      return true;
    }
    return false;
  }

  /// Format: <quantity> <unit> ago (5 years ago)
  DateTime? toDateTime() {
    if (this == null) {
      return null;
    }

    var parts = this!.split(' ');
    if (parts.length == 4) {
      // Streamed x y ago
      parts = parts.skip(1).toList();
    }
    assert(parts.length == 3);

    var qty = int.parse(parts.first);

    // Try to get the unit
    var unit = parts[1];
    Duration time;
    if (unit.startsWith('second')) {
      time = Duration(seconds: qty);
    } else if (unit.startsWith('minute')) {
      time = Duration(minutes: qty);
    } else if (unit.startsWith('hour')) {
      time = Duration(hours: qty);
    } else if (unit.startsWith('day')) {
      time = Duration(days: qty);
    } else if (unit.startsWith('week')) {
      time = Duration(days: qty * 7);
    } else if (unit.startsWith('month')) {
      time = Duration(days: qty * 30);
    } else if (unit.startsWith('year')) {
      time = Duration(days: qty * 365);
    } else {
      throw StateError('Couldn\'t parse $unit unit of time. '
          'Please report this to the project page!');
    }

    return DateTime.now().subtract(time);
  }
}

/// List decipher utility.
extension ListDecipher on Iterable<CipherOperation> {
  /// Apply every CipherOperation on the [signature]
  String decipher(String signature) {
    for (final operation in this) {
      signature = operation.decipher(signature);
    }

    return signature;
  }
}

/// List Utility.
extension ListUtil<E> on Iterable<E> {
  /// Same as [elementAt] but if the index is higher than the length returns
  /// null
  E? elementAtSafe(int index) {
    if (index >= length) {
      return null;
    }
    return elementAt(index);
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
extension GetOrNullMap on Map {
  /// Get a map inside a map
  Map<String, dynamic>? get(String key) {
    var v = this[key];
    if (v == null) {
      return null;
    }
    return v;
  }

  /// Get a value inside a map.
  /// If it is null this returns null, if of another type this throws.
  T? getT<T>(String key) {
    var v = this[key];
    if (v == null) {
      return null;
    }
    if (v is! T) {
      throw Exception('Invalid type: ${v.runtimeType} should be $T');
    }
    return v;
  }

  /// Get a List<Map<String, dynamic>>> from a map.
  List<Map<String, dynamic>>? getList(String key) {
    var v = this[key];
    if (v == null) {
      return null;
    }
    if (v is! List<dynamic>) {
      throw Exception('Invalid type: ${v.runtimeType} should be of type List');
    }

    return (v.toList()).cast<Map<String, dynamic>>();
  }
}

///
extension UriUtils on Uri {
  ///
  Uri replaceQueryParameters(Map<String, String> parameters) {
    var query = Map<String, String>.from(queryParameters);
    query.addAll(parameters);

    return replace(queryParameters: query);
  }
}

/// Parse properties with `text` method.
extension RunsParser on List<dynamic> {
  ///
  String parseRuns() => map((e) => e['text']).join();
}

extension GenericExtract on List<String> {
  /// Used to extract initial data that start with `var ytInitialData = ` or 'window["ytInitialData"] ='.
  T extractGenericData<T>(
      T Function(Map<String, dynamic>) builder, Exception Function() orThrow) {
    var initialData =
        firstWhereOrNull((e) => e.contains('var ytInitialData = '))
            ?.extractJson('var ytInitialData = ');
    initialData ??=
        firstWhereOrNull((e) => e.contains('window["ytInitialData"] ='))
            ?.extractJson('window["ytInitialData"] =');

    if (initialData != null) {
      return builder(initialData);
    }
    throw orThrow();
  }
}
