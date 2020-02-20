import '../cipher/cipher_operations.dart';

/// Utility for Strings.
extension StringUtility on String {
  /// Returns true if the string is null or empty.
  bool get isNullOrWhiteSpace {
    if (this == null) {
      return true;
    }
    if (trim().isEmpty) {
      return true;
    }
    return false;
  }

  static final _exp = RegExp(r'\D');

  /// Strips out all non digit characters.
  String get stripNonDigits => replaceAll(_exp, '');
}

/// List decipher utility.
extension ListDecipher on List<CipherOperation> {
  /// Apply the every CipherOperation on the [signature]
  String decipher(String signature) {
    for (var operation in this) {
      signature = operation.decipher(signature);
    }

    return signature;
  }
}

/// List Utility.
extension ListFirst<E> on List<E> {
  /// Returns the first element of a list or null if empty.
  E get firstOrNull {
    if (length == 0) {
      return null;
    }
    return first;
  }
}
