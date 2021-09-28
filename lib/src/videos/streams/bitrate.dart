import 'package:freezed_annotation/freezed_annotation.dart';

part 'bitrate.freezed.dart';

/// Encapsulates bitrate.
@freezed
class Bitrate with Comparable<Bitrate>, _$Bitrate {
  /// Kilobits per second.
  double get kiloBitsPerSecond => bitsPerSecond / 1024;

  /// Megabits per second.
  double get megaBitsPerSecond => kiloBitsPerSecond / 1024;

  /// Gigabits per second.
  double get gigaBitsPerSecond => megaBitsPerSecond / 1024;

  /// Initializes an instance of [Bitrate]
  @With.fromString('Comparable<Bitrate>')
  const factory Bitrate(

      /// Bits per second.
      int bitsPerSecond) = _Bitrate;

  const Bitrate._();

  static const Bitrate unknown = Bitrate(0);

  @override
  int compareTo(Bitrate other) => bitsPerSecond.compareTo(other.bitsPerSecond);

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
  String toString() =>
      '${_getLargestValue().toStringAsFixed(2)} ${_getLargestSymbol()}';
}
