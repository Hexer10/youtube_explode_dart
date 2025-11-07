import 'dart:collection';
import 'dart:io';
import 'dart:async';
import 'dart:convert';

import 'package:logging/logging.dart';
import 'package:youtube_explode_dart/solvers.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart'; // For SystemEncoding, if needed. Assuming UTF-8 for Deno.

// --- Example Usage ---
void main() async {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen(print);

  final solver = await DenoEJSSolver.init();
  final yt = YoutubeExplode(jsSolver: solver);
  final manifest = await yt.videos.streams
      .getManifest('OI1a31QzwGo', ytClients: [YoutubeApiClient.tv]);
  print(manifest);
  yt.close();
}
