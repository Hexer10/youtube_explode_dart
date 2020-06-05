# YoutubeExplodeDart
This is a port of the [YoutubeExplode] library from C#, most of the API functions or doc comments come from YoutubeExplode's API.

---

This library provides a class to query metadata of Youtube videos, playlists and channels.
This doesn't require an API key and has no usage quotas.

## Features from YoutubeExplode

- Retrieve info about videos, playlists, channels, media streams, closed caption tracks.
- Handles all types of videos, including legacy, signed, restricted, non-embeddable and unlisted videos
- Downloads videos by exposing their media content as a stream
- Parses and downloads closed caption tracks
- All metadata properties are exposed using strong types and enums
- Provides static methods to validate IDs and to parse IDs from URLs
- No need for an API key and no usage quotas
- All model extend `Equatable` to easily perform equality checks 
- Download Stream


## Differences from YoutubeExplode

- The entry point is `YoutubeExplode`, not `YoutubeClient`.

## Install

Add the dependency to the pubspec.yaml (Check for the latest version)
```yaml
youtube_explode_dart: ^1.0.0-beta
```

Import the library
```dart
import 'package:youtube_explode_dart/youtube_explode_dart.dart';
```

# Usage

To start using the API you need to initialize the `YoutubeExplode` class (which will create a new http client), and get (for example) the video id of the video you'd want to retrieve information, which usually is the `v` parameter.
```dart
var yt = YoutubeExplode();
```

## Get video metadata
The [Video][Video] class contains info about the video such as the video title, the duration or the search keywords.
 
```dart
var video = yt.video.get(id); // Returns a Video instance.
```

## Get video mediaStream
The Manifest contains the audio, video and muxed streams of the video. Each of the streams provides an url which can be used to download a video with a get request (See [example][VidExample]).
```dart
var manifest = yt.videos.streamsClient.getManifest(videoId);

var muxed = manifest.muxed; // List of `MuxedStreamInfo` sorted by video quality.
var audio = manifest.audio; // List of `AudioStreamInfo` sorted by bitrate.
var video = manifest.video; // List of `VideoSteamInfo` sorted by video quality.
// There are available manifest.audioOnly and manifest.videoOnly as well.
```

Be aware, the muxed streams don't hold the best quality, to achieve so, you'd need to merge the audio and video streams. 

## Closed Captions - Not yet implemented
To get the video closed caption it is need to query before the caption track infos, which can be used to retrieve the closed caption.

```dart
  var trackInfos = await yt.getVideoClosedCaptionTrackInfos(id); // Get the caption track infos
  if (trackInfos.isEmpty) {
    // No caption is available.
    return;
  }

  var enTrack = trackInfos.firstWhere(
      (e) => e.language.code == 'en'); // Find the english caption track.

  if (enTrack == null) {
    // The english track doesn't exist.
    return;
  }

  var captionTrack = await yt.getClosedCaptionTrack(enTrack); // Get the english closed caption track 
  var captions = captionTrack.captions; // List of ClosedCaption

  captions.first; // Get the first displayed caption.
  captions.getByTime(7); // Get the caption displayed at the 7th second.
```

## Cleanup
You need to close `YoutubeExplode`'s http client when done otherwise this could halt the dart process.


```dart
yt.close();
```


# Examples:

Available on [GitHub][Examples]

---

Check the [api doc][API] for additional information.
More features are provided through extensions.

[YoutubeExplode]: https://github.com/Tyrrrz/YoutubeExplode/

[Video]: https://pub.dev/documentation/youtube_explode_dart/latest/youtube_explode/Video-class.html
[MediaStreamsInfoSet]: https://pub.dev/documentation/youtube_explode_dart/latest/youtube_explode/MediaStreamInfoSet-class.html
[VidExample]: https://github.com/Hexer10/youtube_explode_dart/blob/master/example/video_download.dart
[API]: https://pub.dev/documentation/youtube_explode_dart/latest/youtube_explode/youtube_explode-library.html
[Examples]: [https://github.com/Hexer10/youtube_explode_dart/tree/master/example]