//TODO: Fixing the console printing.

import 'dart:async';
import 'dart:io';

import 'package:console/console.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

// Initialize the YoutubeExplode instance.
final yt = YoutubeExplode();

Future<void> main() async {
  stdout.writeln('Type the video id or url: ');

  var url = stdin.readLineSync().trim();

  // Save the video to the download directory.
  Directory('downloads').createSync();

  // Download the video.
  await download(url);

  yt.close();
  exit(0);
}

Future<void> download(String id) async {
  // Get video metadata.
  var video = await yt.videos.get(id);

  // Get the video manifest.
  var manifest = await yt.videos.streamsClient.getManifest(id);
  var streams = manifest.audioOnly;

  // Get the audio track with the highest bitrate.
  var audio = streams.withHighestBitrate();
  var audioStream = yt.videos.streamsClient.get(audio);

  // Compose the file name removing the unallowed characters in windows.
  var fileName = '${video.title}.${audio.container.name.toString()}'
      .replaceAll(r'\', '')
      .replaceAll('/', '')
      .replaceAll('*', '')
      .replaceAll('?', '')
      .replaceAll('"', '')
      .replaceAll('<', '')
      .replaceAll('>', '')
      .replaceAll('|', '');
  var file = File('downloads/$fileName');

  // Delete the file if exists.
  if (file.existsSync()) {
    file.deleteSync();
  }

  // Open the file in writeAppend.
  var output = file.openWrite(mode: FileMode.writeOnlyAppend);

  // Track the file download status.
  var len = audio.size.totalBytes;
  var count = 0;
  var oldProgress = -1;

  // Create the message and set the cursor position.
  var msg = 'Downloading ${video.title}.${audio.container.name}';
  stdout.writeln(msg);

  // Listen for data received.
  var progressBar = ProgressBar();
  await for (var data in audioStream) {
    // Keep track of the current downloaded data.
    count += data.length;

    // Calculate the current progress.
    var progress = ((count / len) * 100).ceil();

    // Update the progressbar.
    progressBar.update(progress);

    // Write to file.
    output.add(data);
  }
  await output.close();
}
