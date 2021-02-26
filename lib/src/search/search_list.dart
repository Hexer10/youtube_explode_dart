import 'dart:async';

import 'package:collection/collection.dart';

import '../../youtube_explode_dart.dart';

/// This list contains search videos.
class SearchList extends DelegatingList<SearchVideo> {
  final Stream<SearchVideo> _stream;

  ///
  SearchList._(List<SearchVideo> base, this._stream) : super(base);

  ///
  static Future<SearchList> create(Stream<SearchVideo> stream) async {
    Stream<SearchVideo> broadcast;
    broadcast = stream.asBroadcastStream(onCancel: (subscription) {
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
}
