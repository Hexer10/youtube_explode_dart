import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../js_challenge.dart';
import 'ejs.dart';

class DenoEJSSolver extends BaseJSChallengeSolver {
  final _playerCache = <String, String>{};
  final _sigCache = <(String, String, JSChallengeType), String>{};
  final _DenoProcess _deno;

  DenoEJSSolver._(this._deno);

  static Future<DenoEJSSolver> init() async {
    final modules = await EJSBuilder.getJSModules();
    final deno = await _DenoProcess.init(modules);
    return DenoEJSSolver._(deno);
  }

  @override
  Future<String> solve(
      String playerUrl, JSChallengeType type, String challenge) async {
    final key = (playerUrl, challenge, type);
    if (_sigCache.containsKey(key)) {
      return _sigCache[key]!;
    }

    var playerScript = _playerCache[playerUrl];
    if (playerScript == null) {
      final resp = await http.get(Uri.parse(playerUrl));
      playerScript = _playerCache[playerUrl] = resp.body;
    }
    final jsCall = EJSBuilder.buildJSCall(playerScript, {
      type: [challenge],
    });

    final result = await _deno.eval(jsCall);
    // Trim the first and last characters (' delimiters of the JS string)
    final data = json.decode(result.substring(1, result.length - 1))
        as Map<String, dynamic>;

    if (data['type'] != 'result') {
      throw Exception('Unexpected response type: ${data['type']}');
    }
    final response = data['responses'][0];
    if (response['type'] != 'result') {
      throw Exception('Unexpected item response type: ${response['type']}');
    }
    final decoded = response['data'][challenge];
    if (decoded == null) {
      throw Exception('No data for challenge: $challenge');
    }

    _sigCache[key] = decoded;

    return decoded;
  }

  @override
  void dispose() {
    _deno.dispose();
  }
}

class _DenoProcess {
  final Process _process;
  final StreamController<String> _stdoutController =
      StreamController.broadcast();

  // Queue for incoming eval requests
  final Queue<_EvalRequest> _evalQueue = Queue<_EvalRequest>();
  bool _isProcessing = false; // Flag to indicate if an eval is currently active

  _DenoProcess(this._process) {
    // Listen to Deno's stdout and add data to the stream controller
    _process.stdout.transform(SystemEncoding().decoder).listen(
      _stdoutController.add,
      onDone: () {
        _stdoutController.close();
      },
    );
  }

  /// Disposes the Deno process.
  void dispose() {
    _process.kill();
  }

  /// Sends JavaScript code to Deno for evaluation.
  /// Assumes single-line input produces single-line output.
  Future<String> eval(String code) {
    final completer = Completer<String>();
    final request = _EvalRequest(code, completer);
    _evalQueue.addLast(request); // Add request to the end of the queue
    _processQueue(); // Attempt to process the queue

    return completer.future;
  }

  // Processes the eval queue.
  void _processQueue() {
    if (_isProcessing || _evalQueue.isEmpty) {
      return; // Already processing or nothing in queue
    }

    _isProcessing = true;
    final request =
        _evalQueue.first; // Get the next request without removing it yet

    StreamSubscription? currentOutputSubscription;
    Completer<void> lineReceived = Completer<void>();

    currentOutputSubscription = _stdoutController.stream.listen((data) {
      if (!lineReceived.isCompleted) {
        // Assuming single line output per eval.
        // This will capture the first full line or chunk received after sending the code.
        request.completer.complete(data.trim());
        lineReceived.complete();
        currentOutputSubscription
            ?.cancel(); // Cancel subscription for this request
        _evalQueue.removeFirst(); // Remove the processed request
        _isProcessing = false; // Mark as no longer processing
        _processQueue(); // Attempt to process next item in queue
      }
    }, onError: (e) {
      if (!request.completer.isCompleted) {
        request.completer.completeError(e);
        lineReceived.completeError(e);
        currentOutputSubscription?.cancel();
        _evalQueue.removeFirst();
        _isProcessing = false;
        _processQueue();
      }
    }, onDone: () {
      if (!request.completer.isCompleted) {
        request.completer.completeError(
            StateError('Deno process closed while awaiting eval result.'));
        lineReceived.completeError(
            StateError('Deno process closed while awaiting eval result.'));
        currentOutputSubscription?.cancel();
        _evalQueue.removeFirst();
        _isProcessing = false;
        _processQueue();
      }
    });

    _process.stdin.writeln(request.code); // Send the code to Deno
  }

  static Future<_DenoProcess> init(String initCode) async {
    final proc = await Process.start('deno', [
      'repl',
      '--quiet',
      '--no-lock',
      '--no-npm',
      '--no-remote',
      '--eval',
      initCode,
    ], environment: {
      'NO_COLOR': '1',
    });
    return _DenoProcess(proc);
  }
}

// Helper class for queue items
class _EvalRequest {
  final String code;
  final Completer<String> completer;

  _EvalRequest(this.code, this.completer);
}
