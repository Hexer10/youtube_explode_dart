import 'package:equatable/equatable.dart';

/// Stream container.
class Container with EquatableMixin {
  /// Container name.
  /// Can be used as file extension
  final String name;

  /// Initializes an instance of [Container]
  Container._(this.name);

  /// MPEG-4 Part 14 (.mp4).
  static final Container mp4 = Container._('mp4');

  /// Web Media (.webm).
  static final Container webM = Container._('webm');

  /// 3rd Generation Partnership Project (.3gpp).
  static final Container tgpp = Container._('3gpp');

  /// Parse a container from name.
  static Container parse(String name) {
    if (name.toLowerCase() == 'mp4') {
      return Container.mp4;
    }
    if (name.toLowerCase() == 'webm') {
      return Container.webM;
    }
    if (name.toLowerCase() == '3gpp') {
      return Container.tgpp;
    }

    throw ArgumentError.value(name, 'name', 'Valid values: mp4, webm, 3gpp');
  }

  @override
  List<Object> get props => [name];

  @override
  String toString() => name;
}
