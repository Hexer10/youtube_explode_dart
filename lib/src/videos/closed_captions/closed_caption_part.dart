/// Part of a closed caption (usually a single word).
class ClosedCaptionPart {
  /// Text displayed by this caption part.
  final String text;

  /// Time at which this caption part starts being displayed
  /// (relative to the caption's own offset).
  final Duration offset;

  /// Initializes an instance of [ClosedCaptionPart]
  ClosedCaptionPart(this.text, this.offset);

  @override
  String toString() => text;
}
