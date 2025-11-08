import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;
import 'package:logging/logging.dart';

import '../js_challenge.dart';
import 'ejs.dart';

class DenoEJSSolver extends BaseJSChallengeSolver {
  // static final _logger = Logger('YoutubeExplode.Deno');
  final _playerCache = <String, String>{};
  final _sigCache = <(String, String, JSChallengeType), String>{};
  final _preprocPlayer = <String, String>{};
  final _DenoProcess _deno;

  DenoEJSSolver._(this._deno);

  static Future<DenoEJSSolver> init() async {
    final modules = await EJSBuilder.getJSModules();
    final deno = await _DenoProcess.init(modules);
    return DenoEJSSolver._(deno);
  }

  @override
  Future<Map<String, String?>> solveBulk(
      String playerUrl, Map<JSChallengeType, List<String>> requests) async {
    // Filter out already cached challenges
    final uncachedRequests = <JSChallengeType, List<String>>{};
    final cachedResults = <String, String?>{};

    for (final entry in requests.entries) {
      final type = entry.key;
      final challenges = entry.value;
      final uncached = <String>[];

      for (final challenge in challenges) {
        final key = (playerUrl, challenge, type);
        if (_sigCache.containsKey(key)) {
          cachedResults[challenge] = _sigCache[key]!;
        } else {
          uncached.add(challenge);
        }
      }

      if (uncached.isNotEmpty) {
        uncachedRequests[type] = uncached;
      }
    }

    // If all challenges are cached, return early
    if (uncachedRequests.isEmpty) {
      return cachedResults;
    }

    late String playerScript;
    var isPreprocessed = false;
    if (_preprocPlayer.containsKey(playerUrl)) {
      playerScript = _preprocPlayer[playerUrl]!;
      isPreprocessed = true;
    } else if (_playerCache.containsKey(playerUrl)) {
      playerScript = _playerCache[playerUrl]!;
    } else {
      final resp = await http.get(Uri.parse(playerUrl));
      playerScript = _playerCache[playerUrl] = resp.body;
    }

    var jsCall = EJSBuilder.buildJSCall(playerScript, uncachedRequests,
        isPreprocessed: isPreprocessed);

    final filePath = path.join((_deno.tmpDir.path),
        'ejs_output_${DateTime.now().microsecondsSinceEpoch}.txt');

    // Wrap the call into a write to file
    jsCall = 'await Deno.writeTextFile("$filePath", $jsCall);';

    final result = await _deno.eval(jsCall);

    if (result != "undefined") {
      throw Exception('Expected undefined result from Deno eval, got: $result');
    }

    final file = File(filePath);
    final resultContent = await file.readAsString();
    final data = json.decode(resultContent) as Map<String, dynamic>;

    if (data['type'] != 'result') {
      throw Exception('Unexpected response type: ${data['type']}');
    }

    if (data['preprocessed_player'] != null) {
      _preprocPlayer[playerUrl] = data['preprocessed_player'];
    }

    // Process all responses
    final responses = data['responses'] as List;
    for (final response in responses) {
      if (response['type'] != 'result') {
        throw Exception('Unexpected item response type: ${response['type']}');
      }

      final responseData = response['data'] as Map<String, dynamic>;
      for (final entry in responseData.entries) {
        final challenge = entry.key;
        final decoded = entry.value as String?;

        // Find the type for this challenge
        JSChallengeType? challengeType;
        for (final typeEntry in uncachedRequests.entries) {
          if (typeEntry.value.contains(challenge)) {
            challengeType = typeEntry.key;
            break;
          }
        }

        if (challengeType != null) {
          final key = (playerUrl, challenge, challengeType);
          if (decoded != null) {
            _sigCache[key] = decoded;
            cachedResults[challenge] = decoded;
          } else {
            cachedResults[challenge] = null;
          }
        }
      }
    }

    return cachedResults;
  }

  @override
  Future<String> solve(
      String playerUrl, JSChallengeType type, String challenge) async {
    final key = (playerUrl, challenge, type);
    if (_sigCache.containsKey(key)) {
      return _sigCache[key]!;
    }

    final results = await solveBulk(playerUrl, {
      type: [challenge]
    });
    final decoded = results[challenge];
    if (decoded == null) {
      throw Exception('No data for challenge: $challenge');
    }
    return decoded;
  }

  @override
  void dispose() {
    _deno.dispose();
  }
}

class _DenoProcess {
  static final _logger = Logger('YoutubeExplode.Deno.Process');

  final Process _process;
  final StreamController<String> _stdoutController =
      StreamController.broadcast();
  final Directory tmpDir;

  // Queue for incoming eval requests
  final Queue<_EvalRequest> _evalQueue = Queue<_EvalRequest>();
  bool _isProcessing = false; // Flag to indicate if an eval is currently active

  _DenoProcess(this._process, this.tmpDir) {
    // Listen to Deno's stdout and add data to the stream controller
    _process.stdout
        .transform(SystemEncoding().decoder)
        .listen(_stdoutController.add, onDone: () {
      _logger.info('Deno process stdout closed.');
      _stdoutController.close();
    }, onError: (e) {
      _logger.info('Deno process stdout error occurred: $e');
    });
  }

  /// Disposes the Deno process.
  void dispose() {
    _process.kill();
    tmpDir.delete(recursive: true);
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
    final tmpDir = await Directory.systemTemp.createTemp('yt_deno_');
    final tmpFile = File(path.join(tmpDir.path, 'deno_init.js'));
    await tmpFile.writeAsString(initCode);
    final proc = await Process.start('deno', [
      'repl',
      '--quiet',
      '--no-lock',
      '--no-npm',
      '--no-remote',
      '--allow-write=${tmpDir.path}',
      '--eval-file=${tmpFile.path}',
    ], environment: {
      'NO_COLOR': '1',
    });
    _logger.info(
        'Deno process started with PID: ${proc.pid}, using tmpdir: ${tmpDir.path}');
    return _DenoProcess(proc, tmpDir);
  }
}

// Helper class for queue items
class _EvalRequest {
  final String code;
  final Completer<String> completer;

  _EvalRequest(this.code, this.completer);
}
