import 'package:equatable/equatable.dart';

/// Encapsulates framerate.
class Framerate extends Comparable<Framerate> with EquatableMixin {
  /// Framerate as frames per second
  final num framesPerSecond;

  /// Initialize an instance of [Framerate]
  Framerate(this.framesPerSecond);

  ///
  bool operator >(Framerate other) => framesPerSecond > other.framesPerSecond;

  ///
  bool operator <(Framerate other) => framesPerSecond < other.framesPerSecond;

  @override
  String toString() => '$framesPerSecond FPS';

  @override
  List<Object> get props => [framesPerSecond];

  @override
  int compareTo(Framerate other) =>
      framesPerSecond.compareTo(other.framesPerSecond);
}
