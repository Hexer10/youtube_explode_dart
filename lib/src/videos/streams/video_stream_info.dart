import 'streams.dart';

/// YouTube media stream that contains video.
abstract class VideoStreamInfo extends StreamInfo {
  /// Video codec.
  final String videoCodec;

  /// Video quality label, as seen on YouTube.
  final String videoQualityLabel;

  /// Video quality.
  final VideoQuality videoQuality;

  /// Video resolution.
  final VideoResolution videoResolution;

  /// Video framerate.
  final Framerate framerate;

  ///
  VideoStreamInfo(
      int tag,
      Uri url,
      Container container,
      FileSize size,
      Bitrate bitrate,
      this.videoCodec,
      this.videoQualityLabel,
      this.videoQuality,
      this.videoResolution,
      this.framerate)
      : super(tag, url, container, size, bitrate);
}

// TODO: Implement VideoStreamExtension
// https://github.com/Tyrrrz/YoutubeExplode/blob/136b72bf8ca00fea7d6a686694dd91a485ca2c83/YoutubeExplode/Videos/Streams/IVideoStreamInfo.cs#L37-L60
/*
/// Extensions for [VideoStreamInfo[
extension VideoStreamInfoExtension on VideoStreamInfo {

}*/
