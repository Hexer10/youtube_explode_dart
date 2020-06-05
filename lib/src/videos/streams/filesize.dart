import 'package:equatable/equatable.dart';

/// Encapsulates file size.
class FileSize extends Comparable<FileSize> with EquatableMixin {
  /// Total bytes.
  final int totalBytes;

  /// Total kilobytes.
  double get totalKiloBytes => totalBytes / 1024;

  /// Total megabytes.
  double get totalMegaBytes => totalKiloBytes / 1024;

  /// Total gigabytes.
  double get totalGigaBytes => totalMegaBytes / 1024;

  /// Initializes an instance of [FileSize]
  FileSize(this.totalBytes);

  @override
  int compareTo(FileSize other) => totalBytes.compareTo(other.totalBytes);

  String _getLargestSymbol() {
    if (totalGigaBytes.abs() >= 1) {
      return 'GB';
    }
    if (totalMegaBytes.abs() >= 1) {
      return 'MB';
    }
    if (totalKiloBytes.abs() >= 1) {
      return 'KB';
    }
    return 'B';
  }

  num _getLargestValue() {
    if (totalGigaBytes.abs() >= 1) {
      return totalGigaBytes;
    }
    if (totalMegaBytes.abs() >= 1) {
      return totalMegaBytes;
    }
    if (totalKiloBytes.abs() >= 1) {
      return totalKiloBytes;
    }
    return totalBytes;
  }

  @override
  String toString() => '${_getLargestValue()} ${_getLargestSymbol()}';

  @override
  List<Object> get props => [totalBytes];
}
