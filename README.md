# YoutubeExplodeDart
This is a port of the [YoutubeExplode] library from C#, most of the functions, doc comments, readme information, is taken from YoutubeExplode repository.

![Pub Version](https://img.shields.io/pub/v/youtube_explode_dart)
![License](https://img.shields.io/github/license/Hexer10/youtube_explode_dart)
![Lint](https://img.shields.io/badge/style-lint-4BC0F5.svg)

It used to build [Youtube Downloader Flutter](https://github.com/Hexer10/youtube_downloader_flutter) (A cross-platform application to download video streams from youtube using this library & flutter)

---

YoutubeExplode is a library that provides an interface to query metadata of YouTube videos, playlists and channels, as well as to resolve and download video streams and closed caption tracks. Behind a layer of abstraction, the library parses raw page content and uses reverse-engineered AJAX requests to retrieve information. As it doesn't use the official API, there's also no need for an API key and there are no usage quotas.

## Features from YoutubeExplode

- Retrieve metadata on videos, playlists, channels, streams, and closed captions
- Execute search queries and get resulting videos.
- Get or download video streams.
- Get closed captions.
- Get video comments.
- All model extend `Equatable` to easily perform equality checks 

## Differences from YoutubeExplode

- The entry point is `YoutubeExplode`, not `YoutubeClient`.
- Download closed captions as `srt` is not supported yet.
- Search queries can be fetched from the search page as well (thus fetch Videos, Channels and Playlists).
- More APIs implemented.

## Usage
- [Install](#install)
- [Downloading a video stream](#downloading-a-video-stream)
- [Working with playlists](#working-with-playlists)
- [Extracting closed captions](#extracting-closed-captions)
- [Getting comments](#getting-comments)
- [Cleanup](#cleanup)

### Install

Add the dependency to the pubspec.yaml (Check for the latest version)
```yaml
youtube_explode_dart: ^1.10.4
```

Import the library
```dart
import 'package:youtube_explode_dart/youtube_explode_dart.dart';
```

### Getting metadata of a video
 The following example shows how you can extract various metadata from a YouTube video:

```dart
// You can provide either a video ID or URL as String or an instance of `VideoId`.
var video = yt.videos.get('https://youtube.com/watch?v=Dpp1sIL1m5Q'); // Returns a Video instance.

var title = video.title; // "Scamazon Prime"
var author = video.author; // "Jim Browning"
var duration = video.duration; // Instance of Duration - 0:19:48.00000
```

#### Get a list of related videos
```dart
var video = yt.videos.get('https://youtube.com/watch?v=Dpp1sIL1m5Q');
var relatedVideos = await yt.videos.getRelatedVideos(video); // video must be a Video instance.
print(relatedVideos); //prints the list of related videos

// to get the next page of related videos
relatedVideos = await relatedVideos.nextPage();
```

If no related video is found `getRelatedVideos` or `nextPage` will return null.

### Downloading a video stream
Every YouTube video has a number of streams available. These streams may have different containers, video quality, bitrate, etc.

On top of that, depending on the content of the stream, the streams are further divided into 3 categories:
- Muxed streams -- contain both video and audio
- Audio-only streams -- contain only audio
-- Video-only streams -- contain only video

You can request the stream manifest to get available streams for a particular video:


```dart
var yt = YoutubeExplode();

var manifest = yt.videos.streams.getManifest('Dpp1sIL1m5Q');
```

Once you get the manifest, you can filter through the streams and choose the one you're interested in downloading:

```dart
// Get highest quality muxed stream
var streamInfo = streamManifest.muxed.withHigestVideoQuality();

// ...or highest bitrate audio-only stream
var streamInfo = streamManifest.audioOnly.withHigestBitrate()

// ...or highest quality MP4 video-only stream
var streamInfo.videoOnly.where((e) => e.container == Container)
```

Finally, you can get the actual `Stream` object represented by the metadata:

```dart
if (streamInfo != null) {
  // Get the actual stream
  var stream = yt.video.streams.get(streamInfo);
  
  // Open a file for writing.
  var file = File(filePath);
  var fileStream = file.openWrite();

  // Pipe all the content of the stream into the file.
  await stream.pipe(fileStream);

  // Close the file.
  await fileStream.flush();
  await fileStream.close();
}
```

While it may be tempting to just always use muxed streams, it's important to note that they are limited in quality. Muxed streams don't go beyond 720p30.

If you want to download the video in maximum quality, you need to download the audio-only and video-only streams separately and then mux them together on your own. There are tools like FFmpeg that let you do that.

### Working with playlists
Among other things, YoutubeExplode also supports playlists:
```dart
var yt = YoutubeExplode();

// Get playlist metadata.
var playlist = await yt.playlists.get('xxxxx');

var title = playlist.title;
var author = playlist.author;

  await for (var video in yt.playlists.getVideos(playlist.id)) {
    var videoTitle = video.title;
    var videoAuthor = video.author;
  }

var playlistVideos = await yt.playlists.getVideos(playlist.id);

// Get first 20 playlist videos.
var somePlaylistVideos = await yt.playlists.getVideos(playlist.id).take(20);
```

### Extracting closed captions
Similarly, to streams, you can extract closed captions by getting the manifest and choosing the track you're interested in:

```dart
  var yt = YoutubeExplode();

  var trackManifest = await yt.videos.closedCaptions.getManifest('_QdPW8JrYzQ')

  var trackInfo = manifest.getByLanguage('en'); // Get english caption.
  
  if (trackInfo != null)
  {
     // Get the actual closed caption track.
     var track = await youtube.videos.closedCaptions.get(trackInfo);
      
    // Get the caption displayed at 1:01
    var caption = track.getByTime(Duration(seconds: 61));
    var text = caption?.text; // "And the game was afoot."
  }
```

### Getting comments
You can easily get the video comments of a given video, the return value of `comments.getComments(video)` is a list-like object which behaves exactly like a `List` but has an additional method `nextPage()` which is used in order to get the next comments, it returns null when there are no comments to be fetched anymore.

```dart
var comments = await yt.videos.comments.getComments(video);

var replies = await yt.videos.comments.getReplies(comment); // Fetch the comment replies 
```


### Cleanup
You need to close `YoutubeExplode`'s http client, when done otherwise this could halt the dart process.


```dart
yt.close();
```

### Examples:

More examples available on [GitHub][Examples].

---


Check the [api documentation][API] for additional information.
You can find how most APIs can be used in the files inside the test/ folder. 

### Credits

- [Tyrrrz] for creating [YoutubeExplode] for C#
- [Hexer10] (Me) who ported the library over to Dart.
- [EnsembleUI] for the jsparser project.
- All the [Contributors] of this repository.

[YoutubeExplode]: https://github.com/Tyrrrz/YoutubeExplode/
[API]: https://pub.dev/documentation/youtube_explode_dart/latest/youtube_explode/youtube_explode-library.html
[Examples]: https://github.com/Hexer10/youtube_explode_dart/tree/master/example
[Tyrrrz]: https://github.com/Tyrrrz/
[Hexer10]: https://github.com/Hexer10/
[Contributors]: https://github.com/Hexer10/youtube_explode_dart/graphs/contributors
[EnsembleUI]: https://github.com/EnsembleUI
