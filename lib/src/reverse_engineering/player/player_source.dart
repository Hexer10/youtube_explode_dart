import 'dart:async';

import 'package:youtube_explode_dart/src/reverse_engineering/player/cipher_manifest.dart';

import '../../retry.dart';
import '../youtube_http_client.dart';

///
class PlayerSource {
  final String root;
  late final ChiperManifest? cipherManifest = ChiperManifest.decode(root);

  ///
  PlayerSource(this.root);

  /// Same as default constructor
  PlayerSource.parse(this.root);

  ///
  static Future<PlayerSource> get(
      YoutubeHttpClient httpClient, String url) async {
    if (_cache[url]?.expired ?? true) {
      var val = await retry(httpClient, () async {
        var raw = await httpClient.getString(url);
        return PlayerSource.parse(raw);
      });
      if (_cache[url] == null) {
        _cache[url] = _CachedValue(val);
      } else {
        _cache[url]!.update(val);
      }
    }
    return _cache[url]!.value;
  }

  static final Map<String, _CachedValue<PlayerSource>> _cache = {};
}

class _CachedValue<T> {
  T _value;
  int expireTime;
  final int cacheTime;

  T get value {
    if (expired) {
      throw StateError('Value $_value is expired!');
    }
    return _value;
  }

  bool get expired {
    final now = DateTime.now().millisecondsSinceEpoch;
    return now > expireTime;
  }

  set value(T other) => _value = other;

  _CachedValue(this._value, [this.cacheTime = 600000])
      : expireTime = DateTime.now().millisecondsSinceEpoch + cacheTime;

  void update(T newValue) {
    var now = DateTime.now().millisecondsSinceEpoch;
    expireTime = now + cacheTime;
    value = newValue;
  }
}
