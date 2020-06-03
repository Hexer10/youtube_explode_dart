import 'package:equatable/equatable.dart';

/// Encapsulates framerate.
class Framerate extends Comparable<Framerate> with EquatableMixin {
  /// Framerate as frames per second
  final double framesPerSecond;

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

void t() {
  var t = Framerate(1.1) > Framerate(2.2);
}
