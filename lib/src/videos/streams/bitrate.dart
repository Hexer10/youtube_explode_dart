import 'package:equatable/equatable.dart';

/// Encapsulates bitrate.
class Bitrate extends Comparable<Bitrate> with EquatableMixin {
  /// Bits per second.
  final int bitsPerSecond;

  /// Kilobits per second.
  double get kiloBitsPerSecond => bitsPerSecond / 1024;

  /// Megabits per second.
  double get megaBitsPerSecond => kiloBitsPerSecond / 1024;

  /// Gigabits per second.
  double get gigaBitsPerSecond => megaBitsPerSecond / 1024;

  /// Initializes an instance of [Bitrate]
  Bitrate(this.bitsPerSecond);

  @override
  int compareTo(Bitrate other) => bitsPerSecond.compareTo(other.bitsPerSecond);

  @override
  List<Object> get props => [bitsPerSecond];

  String _getLargestSymbol() {
    if (gigaBitsPerSecond.abs() >= 1) {
      return 'Gbit/s';
    }
    if (megaBitsPerSecond.abs() >= 1) {
      return 'Mbit/s';
    }
    if (kiloBitsPerSecond.abs() >= 1) {
      return 'Kbit/s';
    }
    return 'Bit/s';
  }

  num _getLargestValue() {
    if (gigaBitsPerSecond.abs() >= 1) {
      return gigaBitsPerSecond;
    }
    if (megaBitsPerSecond.abs() >= 1) {
      return megaBitsPerSecond;
    }
    if (kiloBitsPerSecond.abs() >= 1) {
      return kiloBitsPerSecond;
    }
    return bitsPerSecond;
  }

  @override
  String toString() => '${_getLargestValue()} ${_getLargestSymbol()}';
}
