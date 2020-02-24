library youtube_explode.cipher;

import 'package:http/http.dart' as http;

import '../exceptions/exceptions.dart';
import '../extensions/helpers_extension.dart';
import 'cipher_operations.dart';

final _deciphererFuncNameExp = RegExp(
    r'(\w+)=function\(\w+\){(\w+)=\2\.split\(\x22{2}\);.*?return\s+\2\.join\(\x22{2}\)}');

final _deciphererDefNameExp = RegExp(r'(\w+).\w+\(\w+,\d+\);');

final _calledFuncNameExp = RegExp(r'\w+(?:.|\[)(\"?\w+(?:\")?)\]?\(');

final _indexExp = RegExp(r'\(\w+,(\d+)\)');

final _cipherCache = <String, List<CipherOperation>>{};

/// Returns a [Future] that completes with a [List] of [CipherOperation]
Future<List<CipherOperation>> getCipherOperations(
    String playerSourceUrl, http.Client client) async {
  if (_cipherCache.containsKey(playerSourceUrl)) {
    return _cipherCache[playerSourceUrl];
  }

  var raw = (await client.get(playerSourceUrl)).body;

  var deciphererFuncName = _deciphererFuncNameExp.firstMatch(raw)?.group(1);

  if (deciphererFuncName.isNullOrWhiteSpace) {
    throw UnrecognizedStructureException(
        'Could not find decipherer name. Please report this issue on GitHub.',
        raw);
  }

  var exp = RegExp(r'(?!h\.)'
      '${RegExp.escape(deciphererFuncName)}'
      r'=function\(\w+\)\{(.*?)\}');
  var decipherFuncBody = exp.firstMatch(raw)?.group(1);
  if (decipherFuncBody.isNullOrWhiteSpace) {
    throw UnrecognizedStructureException(
        'Could not find decipherer body. Please report this issue on GitHub.',
        raw);
  }

  var deciphererFuncBodyStatements = decipherFuncBody.split(';');
  var deciphererDefName =
      _deciphererDefNameExp.firstMatch(decipherFuncBody)?.group(1);

  exp = RegExp(
      r'var\s+'
      '${RegExp.escape(deciphererDefName)}'
      r'=\{(\w+:function\(\w+(,\w+)?\)\{(.*?)\}),?\};',
      dotAll: true);
  var deciphererDefBody = exp.firstMatch(raw)?.group(0);

  var operations = <CipherOperation>[];

  for (var statement in deciphererFuncBodyStatements) {
    var calledFuncName = _calledFuncNameExp.firstMatch(statement)?.group(1);
    if (calledFuncName.isNullOrWhiteSpace) {
      continue;
    }

    final funcNameEsc = RegExp.escape(calledFuncName);

    var exp =
        RegExp('$funcNameEsc' r':\bfunction\b\([a],b\).(\breturn\b)?.?\w+\.');

    // Slice
    if (exp.hasMatch(deciphererDefBody)) {
      var index = int.parse(_indexExp.firstMatch(statement).group(1));
      operations.add(SliceCipherOperation(index));
      continue;
    }

    // Swap
    exp = RegExp('$funcNameEsc' r':\bfunction\b\(\w+\,\w\).\bvar\b.\bc=a\b');
    if (exp.hasMatch(deciphererDefBody)) {
      var index = int.parse(_indexExp.firstMatch(statement).group(1));
      operations.add(SwapCipherOperation(index));
      continue;
    }

    // Reverse
    exp = RegExp('$funcNameEsc' r':\bfunction\b\(\w+\)');
    if (exp.hasMatch(deciphererDefBody)) {
      operations.add(const ReverseCipherOperation());
    }
  }

  return _cipherCache[playerSourceUrl] = operations;
}

/// Returns a Uri with a signature.
/// The result is cached for the [playerSourceUrl]
Future<Uri> decipherUrl(
    String playerSourceUrl, String cipher, http.Client client) async {
  var cipherDic = Uri.splitQueryString(cipher);

  var url = Uri.parse(cipherDic['url']);
  var signature = cipherDic['s'];

  var cipherOperations = await getCipherOperations(playerSourceUrl, client);

  var query = Map<String, dynamic>.from(url.queryParameters);

  signature = cipherOperations.decipher(signature);
  query[cipherDic['sp']] = signature;

  return url.replace(queryParameters: query);
}
