import 'dart:async';

import '../../exceptions/exceptions.dart';
import '../../extensions/helpers_extension.dart';
import '../../retry.dart';
import '../cipher/cipher_operations.dart';
import '../youtube_http_client.dart';

///
class PlayerSource {
  static final RegExp _statIndexExp = RegExp(r'\(\w+,(\d+)\)');

  static final RegExp _funcBodyExp = RegExp(
      r'(\w+)=function\(\w+\){(\w+)=\2\.split\(\x22{2}\);.*?return\s+\2\.join\(\x22{2}\)}');

  static final RegExp _objNameExp = RegExp(r'([\$_\w]+).\w+\(\w+,\d+\);');

  static final RegExp _calledFuncNameExp =
      RegExp(r'\w+(?:.|\[)(\"?\w+(?:\")?)\]?\(');

  final String root;

  late final String sts = getSts();

  ///
  String getSts() {
    var val = RegExp(r'(?<=invalid namespace.*?;[\w\s]+=)\d+')
            .stringMatch(root)
            ?.nullIfWhitespace ??
        RegExp(r'(?<=signatureTimestamp[=\:])\d+')
            .stringMatch(root)
            ?.nullIfWhitespace;
    if (val == null) {
      throw FatalFailureException('Could not find sts in player source.', 0);
    }
    return val;
  }

  ///
  Iterable<CipherOperation> getCipherOperations() sync* {
    if (deciphererFuncBody == null) {
      throw FatalFailureException(
          'Could not find signature decipherer function body.', 0);
    }

    var definitionBody = _getDeciphererDefinitionBody(deciphererFuncBody!);
    if (definitionBody == null) {
      throw FatalFailureException(
          'Could not find signature decipherer definition body.', 0);
    }

    for (final statement in deciphererFuncBody!.split(';')) {
      var calledFuncName = _calledFuncNameExp.firstMatch(statement)?.group(1);
      if (calledFuncName.isNullOrWhiteSpace) {
        continue;
      }

      var escapedFuncName = RegExp.escape(calledFuncName!);
      // Slice
      var exp = RegExp('$escapedFuncName'
          r':\bfunction\b\([a],b\).(\breturn\b)?.?\w+\.');

      if (exp.hasMatch(definitionBody)) {
        var index = int.parse(_statIndexExp.firstMatch(statement)!.group(1)!);
        yield SliceCipherOperation(index);
      }

      // Swap
      exp = RegExp(
          '$escapedFuncName' r':\bfunction\b\(\w+\,\w\).\bvar\b.\bc=a\b');
      if (exp.hasMatch(definitionBody)) {
        var index = int.parse(_statIndexExp.firstMatch(statement)!.group(1)!);
        yield SwapCipherOperation(index);
      }

      // Reverse
      exp = RegExp('$escapedFuncName' r':\bfunction\b\(\w+\)');
      if (exp.hasMatch(definitionBody)) {
        yield const ReverseCipherOperation();
      }
    }
  }

  late final String? deciphererFuncBody =
      _funcBodyExp.firstMatch(root)?.group(0);

  String? _getDeciphererDefinitionBody(String deciphererFuncBody) {
    final objName = _objNameExp.firstMatch(deciphererFuncBody)?.group(1);
    if (objName == null) {
      return null;
    }

    final exp = RegExp(
        r'var\s+'
        '${RegExp.escape(objName)}'
        r'=\{(\w+:function\(\w+(,\w+)?\)\{(.*?)\}),?\};',
        dotAll: true);
    return exp.firstMatch(root)?.group(0)?.nullIfWhitespace;
  }

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
      throw StateError('Value $value is expired!');
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
