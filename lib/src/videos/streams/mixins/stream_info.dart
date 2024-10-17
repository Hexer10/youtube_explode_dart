import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_parser/http_parser.dart';

import '../../../reverse_engineering/models/fragment.dart';
import '../../videos.dart';
import '../models/audio_track.dart';

/// Generic YouTube media stream.
mixin StreamInfo {
  /// The video id of the video this stream belongs to.
  VideoId get videoId;

  /// Whether the stream is throttled or not.
  bool get isThrottled =>
      url.queryParameters['ratebypass']?.toLowerCase() != 'yes';

  /// Stream tag.
  /// Uniquely identifies a stream inside a manifest.
  int get tag;

  /// Stream URL.
  Uri get url;

  /// Stream container.
  StreamContainer get container;

  /// Stream size.
  FileSize get size;

  /// Stream bitrate.
  Bitrate get bitrate;

  /// DASH/HLS streams contain multiple stream fragments.
  List<Fragment> get fragments;

  /// Streams codec.
  MediaType get codec;

  /// Stream quality label.
  String get qualityLabel;

  /// Convert to a json-serialized type.
  Map<String, dynamic> toJson();
}

/// Extension for Iterables of StreamInfo.
extension StreamInfoIterableExt<T extends StreamInfo> on Iterable<T> {
  /// Gets the stream with highest bitrate.
  T withHighestBitrate({String? language}) {
    return where((stream) {
      if (stream is AudioStreamInfo) {
        if (language == null &&
            (stream.audioTrack == null || stream.audioTrack!.audioIsDefault)) {
          return true;
        }
        return stream.audioTrack?.id == language;
      }
      return true;
    }).sortByBitrate().first;
  }

  /// Gets the video streams sorted by bitrate in ascending order.
  /// This returns new list without editing the original list.
  List<T> sortByBitrate() =>
      toList()..sort((a, b) => b.bitrate.compareTo(a.bitrate));

  /// Print a formatted text of all the streams. Like youtube-dl -F option.
  String describe() {
    final column = _Column(['format code', 'extension', 'resolution', 'note']);
    // Sort the streams:
    // - First audio only streams.
    // - Then sort by resolution.
    // - Then sort by extension.
    final sorted = toList()
      ..sort((a, b) {
        final aIsOnlyAudio = (a is AudioOnlyStreamInfo) || (a is HlsAudioStreamInfo);
        final bIsOnlyAudio = (b is AudioOnlyStreamInfo) || (b is HlsAudioStreamInfo);
        if (aIsOnlyAudio && !bIsOnlyAudio) {
          return -1;
        } else if (!aIsOnlyAudio && bIsOnlyAudio) {
          return 1;
        }
        if (a is AudioStreamInfo && b is! AudioStreamInfo) {
          return -1;
        } else if (a is! AudioStreamInfo && b is AudioStreamInfo) {
          return 1;
        }
        if (a is VideoStreamInfo && b is VideoStreamInfo) {
          final resolution = a.videoResolution.compareTo(b.videoResolution);
          if (resolution != 0) {
            return resolution;
          }
        }
        return a.container.name.compareTo(b.container.name);
      });

    for (final e in sorted) {
      column.write([
        e.tag,
        e.container.name,
        if (e is VideoStreamInfo) e.videoResolution else 'audio only',
        e.qualityLabel,
        e.bitrate,
        e.codec.parameters['codecs'],
        if (e is VideoStreamInfo) e.framerate,
        if (e is VideoOnlyStreamInfo || e is HlsVideoStreamInfo ) 'video only',
        // if (e is AudioOnlyStreamInfo) 'audio only',
        if (e is MuxedStreamInfo || e is HlsMuxedStreamInfo) 'muxed',
        e.size,
        if (e case AudioStreamInfo(:AudioTrack audioTrack))
          audioTrack.displayName,
      ]);
    }
    return column.toString();
  }
}

/// Utility for [StreamInfoIterableExt.describe]
class _Column {
  final List<String> header;
  final List<List<String>> _values = [];

  _Column(this.header);

  void write(List<Object?> value) => _values
      .add(value.where((e) => e != null).map((e) => e.toString()).toList());

  @override
  String toString() {
    final headerLen = <int>[];
    final buffer = StringBuffer();
    for (final e in header) {
      headerLen.add(e.length + 2);
      buffer.write('$e  ');
    }
    buffer.writeln();

    for (final valueList in _values) {
      for (var i = 0; i < valueList.length; i++) {
        final v = valueList[i];
        if (headerLen.length <= i) {
          buffer.write(', $v');
          continue;
        }
        buffer.write(v.padRight(headerLen[i]));
      }
      buffer.writeln();
    }
    return buffer.toString();
  }
}

String mediaTypeToJson(MediaType value) => value.toString();
MediaType mediaTypeFromJson(String value) => MediaType.parse(value);
