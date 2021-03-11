import 'dart:async';

import 'package:collection/collection.dart';

import '../../youtube_explode_dart.dart';

/// This list contains search videos.
class SearchList extends DelegatingList<Video> {
  final Stream<Video> _stream;

  ///
  SearchList._(List<Video> base, this._stream) : super(base);

  ///
  static Future<SearchList> create(Stream<SearchVideo> stream) async {
    Stream<Video> broadcast;
    broadcast = stream
        .map((e) => Video(
            e.id,
            e.title,
            e.author,
            null,
            _stringToDateTime(e.uploadDate),
            e.description,
            _stringToDuration(e.duration),
            ThumbnailSet(e.id.value),
            null,
            Engagement(e.viewCount, null, null),
            e.isLive))
        .asBroadcastStream(onCancel: (subscription) {
      subscription.pause();
    }, onListen: (subscription) {
      subscription.resume();
    });
    final base = await broadcast.take(20).toList();
    return SearchList._(base, broadcast);
  }

  ///
  Future<SearchList> nextPage() async {
    final base = await _stream.take(20).toList();
    return SearchList._(base, _stream);
  }

  /// Format: <quantity> <unit> ago (5 years ago)
  static DateTime? _stringToDateTime(String? string) {
    if (string == null) {
      return null;
    }

    var parts = string.split(' ');
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

  /// Format: HH:MM:SS
  static Duration? _stringToDuration(String string) {
    if (/*string == null ||*/ string.trim().isEmpty) {
      return null;
    }

    var parts = string.split(':');
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
}
