import 'dart:convert';

import 'package:crypto/crypto.dart';

import '../js_challenge.dart';
import 'ejs_modules.g.dart' as ejs;
import 'package:http/http.dart' as http;

String? _libCache;
String? _coreCache;

abstract class EJSBuilder {
  static String _buildScript(String lib, String core) {
    return '''
    $lib
    Object.assign(globalThis, lib);
    $core
    
    ''';
  }

  static String buildJSCall(
      String playerScript, Map<JSChallengeType, List<String>> requests) {
    final input = {
      'type': 'player',
      'player': playerScript,
      'requests': [
        for (final entry in requests.entries)
          {
            'type': entry.key.name,
            'challenges': entry.value,
          }
      ],
      'output_preprocessed': false,
    };

    return 'JSON.stringify(jsc(${json.encode(input)}))';
  }

  static Future<String> getJSModules() async {
    if (_libCache != null && _coreCache != null) {
      return _buildScript(_libCache!, _coreCache!);
    }

    final lib = ejs.modules['lib']!;
    final core = ejs.modules['core']!;

    final libReq = (await http.get(Uri.parse(lib['url']!)));
    final libHash = sha256.convert(libReq.bodyBytes).toString();
    if (libHash != lib['hash']) {
      throw Exception('Lib module hash mismatch');
    }

    final coreReq = (await http.get(Uri.parse(core['url']!)));
    final coreHash = sha256.convert(coreReq.bodyBytes).toString();
    if (coreHash != core['hash']) {
      throw Exception('Core module hash mismatch');
    }

    _libCache = libReq.body;
    _coreCache = coreReq.body;

    return _buildScript(_libCache!, _coreCache!);
  }
}
