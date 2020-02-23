/// Text that gets displayed at specific time during video playback, as part of a <see cref="ClosedCaptionTrack"/>.
class ClosedCaption {
  /// Text displayed by this caption.
  final String text;

  /// Time at which this caption starts being displayed.
  final Duration offset;

  /// Duration this caption is displayed.
  /// Negative if not found.
  final Duration duration;

  /// Initializes an instance of [ClosedCaption]
  const ClosedCaption(this.text, this.offset, this.duration);

  /// Time at which this caption starts being displayed.
  Duration get start => offset;

  /// Time at which this caption ends being displayed.
  Duration get end => duration + offset;

  @override
  String toString() => 'Caption: $text ($offset - $end)';
}
