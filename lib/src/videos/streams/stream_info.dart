import '../../reverse_engineering/models/fragment.dart';
import 'bitrate.dart';
import 'filesize.dart';
import 'stream_container.dart';

/// Generic YouTube media stream.
abstract class StreamInfo {
  /// Stream tag.
  /// Uniquely identifies a stream inside a manifest.
  final int tag;

  /// Stream URL.
  final Uri url;

  /// Stream container.
  final StreamContainer container;

  /// Stream size.
  final FileSize size;

  /// Stream bitrate.
  final Bitrate bitrate;

  /// DASH streams contain multiple stream fragments.
  final List<Fragment> fragments;

  /// Initialize an instance of [StreamInfo].
  StreamInfo(this.tag, this.url, this.container, this.size, this.bitrate,
      this.fragments);
}

/// Extension for Iterables of StreamInfo.
extension StreamInfoIterableExt<T extends StreamInfo> on Iterable<T> {
  /// Gets the stream with highest bitrate.
  T withHighestBitrate() => sortByBitrate().last;

  /// Gets the video streams sorted by bitrate in ascending order.
  /// This returns new list without editing the original list.
  List<T> sortByBitrate() =>
      toList()..sort((a, b) => a.bitrate.compareTo(b.bitrate));
}
