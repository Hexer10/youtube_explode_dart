import 'bitrate.dart';
import 'container.dart';
import 'filesize.dart';

/// Generic YouTube media stream.
abstract class StreamInfo {
  /// Stream tag.
  /// Uniquely identifies a stream inside a manifest.
  final int tag;

  /// Stream URL.
  final Uri url;

  /// Stream container.
  final Container container;

  /// Stream size.
  final FileSize size;

  /// Stream bitrate.
  final Bitrate bitrate;

  /// Initialize an instance of [StreamInfo].
  StreamInfo(this.tag, this.url, this.container, this.size, this.bitrate);
}

/// Extensions for [StreamInfo]
extension StreamInfoExt on StreamInfo {
  static final _exp = RegExp('ratebypass[=/]yes');

  /// Returns true if this video is rate limited.
  bool isRateLimited() => _exp.hasMatch(url.toString());

  /// Gets the stream with highest bitrate.
  static StreamInfo getHighestBitrate(List<StreamInfo> streams) =>
      (streams..sort((a, b) => a.bitrate.compareTo(b.bitrate))).last;
}
