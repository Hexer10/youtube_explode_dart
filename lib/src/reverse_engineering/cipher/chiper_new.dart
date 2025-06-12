import 'package:freezed_annotation/freezed_annotation.dart';

import '../../js/js_engine.dart';

final _decFuncExp = RegExp(
    r'\b([a-zA-Z0-9_$]+)&&\(\1=([a-zA-Z0-9_$]{2,})\(decodeURIComponent\(\1\)\)',
    dotAll: true);

RegExp _funcExp(String funcName) => RegExp(
      '$funcName=(function.+?return.+?;)',
      dotAll: true,
    );

final _varsExp = RegExp(r'(?<!\()\b([a-zA-Z][a-zA-Z0-9_$]*)\b');

typedef DeciphererFunc = String Function(
  String sig,
);

/// New implementation of the decipher due to the new YouTube cipher.
@internal
DeciphererFunc? getDecipherSignatureFunc(String? globalVar, String jscode) {
  final globalVarName =
      globalVar?.split('=')[0].trim().replaceFirst('var ', '');

  final match = _decFuncExp.firstMatch(jscode);
  final funcName = match?.group(2);
  if (funcName == null) {
    return null;
  }

  final decFunc = _funcExp(funcName)
      .firstMatch(jscode)
      ?.group(1)
      ?.replaceFirst('function', 'function $funcName');

  if (decFunc == null) {
    return null;
  }

  // Find all the vars used
  final vars = _varsExp.allMatches(decFunc).map((e) => e.group(1)).toSet();
  final keywords = ['function', 'return'];
  final varsList = vars
      .where(
          (e) => !keywords.contains(e) && e != funcName && e != globalVarName)
      .skip(1)
      .toList(); // Skip the first one, which is the function parameter

  final varDecls = [];
  for (final varName in varsList) {
    final exp =
        RegExp(r'(var ' + varName! + r'=\{(?:.|\n)+?)(;var)', dotAll: true);
    final varMatch = exp.firstMatch(jscode);
    if (varMatch == null) {
      continue;
    }
    varDecls.add(varMatch.group(1)!);
  }

  // Construct the final code
  var finalFunc = decFunc
      .replaceFirst('{', '{\n${varDecls.join('\n;')}\n')
      .replaceFirst('{', '{$globalVar');

  return (String sig) => JSEngine.run(finalFunc, [sig]) as String;
}
