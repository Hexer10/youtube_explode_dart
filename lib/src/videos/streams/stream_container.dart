import 'package:freezed_annotation/freezed_annotation.dart';

part 'stream_container.freezed.dart';

/// Stream container.
@freezed
class StreamContainer with _$StreamContainer {
  /// Initializes an instance of [StreamContainer]
  const factory StreamContainer._internal(

      /// Container name.
      /// Can be used as file extension
      String name) = _StreamContainer;

  const StreamContainer._();

  /// MPEG-4 Part 14 (.mp4).
  static const StreamContainer mp4 = StreamContainer._internal('mp4');

  /// Web Media (.webm).
  static const StreamContainer webM = StreamContainer._internal('webm');

  /// 3rd Generation Partnership Project (.3gpp).
  static const StreamContainer tgpp = StreamContainer._internal('3gpp');

  /// Parse a container from name.
  factory StreamContainer.parse(String name) {
    if (name.toLowerCase() == 'mp4') {
      return StreamContainer.mp4;
    }
    if (name.toLowerCase() == 'webm') {
      return StreamContainer.webM;
    }
    if (name.toLowerCase() == '3gpp') {
      return StreamContainer.tgpp;
    }

    throw ArgumentError.value(name, 'name', 'Valid values: mp4, webm, 3gpp');
  }

  @override
  String toString() => name;
}
