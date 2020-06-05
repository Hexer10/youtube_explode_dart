import 'dart:async';
import 'dart:io';

import 'package:dart_console/dart_console.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

// Initialize the YoutubeExplode instance.
final yt = YoutubeExplode();

final console = Console();

Future<void> main() async {
  console.writeLine('Type the video id or url: ');

  var url = stdin.readLineSync().trim();

  // Save the video to the download directory.
  Directory('downloads').createSync();
  console.hideCursor();

  // Download the video.
  await download(url);

  yt.close();
  console.showCursor();
  exit(0);
}

Future<void> download(String id) async {
  // Get video metadata.
  var video = await yt.videos.get(id);

  // Get the video manifest.
  var manifest = await yt.videos.streamsClient.getManifest(id);
  var streams = manifest.getAudioOnly();

  // Get the last audio track (the one with the highest bitrate).
  var audio = streams.last;
  var audioStream = yt.videos.streamsClient.get(audio);

  // Compose the file name removing the unallowed characters in windows.
  var fileName = '${video.title}.${audio.container.name.toString()}'
      .replaceAll('Container.', '')
      .replaceAll(r'\', '')
      .replaceAll('/', '')
      .replaceAll('*', '')
      .replaceAll('?', '')
      .replaceAll('"', '')
      .replaceAll('<', '')
      .replaceAll('>', '')
      .replaceAll('|', '');
  var file = File('downloads/$fileName');

  // Create the StreamedRequest to track the download status.

  // Open the file in appendMode.
  var output = file.openWrite(mode: FileMode.writeOnlyAppend);

  // Track the file download status.
  var len = audio.size.totalBytes;
  var count = 0;
  var oldProgress = -1;

  // Create the message and set the cursor position.
  var msg = 'Downloading `${video.title}`(.${audio.container.name}):  \n';
  print(msg);
  //  var row = console.cursorPosition.row;
//  var col = msg.length - 2;
//  console.cursorPosition = Coordinate(row, 0);
//  console.write(msg);


  // Listen for data received.
  await for (var data in audioStream) {
    count += data.length;
    var progress = ((count / len) * 100).round();
    if (progress != oldProgress) {
//      console.cursorPosition = Coordinate(row, col);
      print('$progress%');
      oldProgress = progress;
    }
    output.add(data);
  }
  console.writeLine();
  await output.close();
}
