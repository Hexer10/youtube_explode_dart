import 'package:equatable/equatable.dart';

/// Stream container.
class StreamContainer with EquatableMixin {
  /// Container name.
  /// Can be used as file extension
  final String name;

  /// Initializes an instance of [StreamContainer]
  StreamContainer._(this.name);

  /// MPEG-4 Part 14 (.mp4).
  static final StreamContainer mp4 = StreamContainer._('mp4');

  /// Web Media (.webm).
  static final StreamContainer webM = StreamContainer._('webm');

  /// 3rd Generation Partnership Project (.3gpp).
  static final StreamContainer tgpp = StreamContainer._('3gpp');

  /// Parse a container from name.
  static StreamContainer parse(String name) {
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
  List<Object> get props => [name];

  @override
  String toString() => name;
}
