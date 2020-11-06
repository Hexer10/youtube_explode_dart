/// SubTiles format.
class ClosedCaptionFormat {
  /// .srv format(1).
  static const ClosedCaptionFormat srv1 = ClosedCaptionFormat._('srv1');

  /// .srv format(2).
  static const ClosedCaptionFormat srv2 = ClosedCaptionFormat._('srv2');

  /// .srv format(3).
  static const ClosedCaptionFormat srv3 = ClosedCaptionFormat._('srv3');

  /// .ttml format.
  static const ClosedCaptionFormat ttml = ClosedCaptionFormat._('ttml');

  /// .vtt format.
  static const ClosedCaptionFormat vtt = ClosedCaptionFormat._('vtt');

  /// List of all sub titles format.
  static const List<ClosedCaptionFormat> values = [srv1, srv2, srv3, ttml, vtt];

  /// Format code as string.
  final String formatCode;

  const ClosedCaptionFormat._(this.formatCode);
}