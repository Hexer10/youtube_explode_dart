import 'dart:collection';

import 'closed_caption.dart';

/// Track that contains closed captions in a specific language.
class ClosedCaptionTrack {
  /// Closed captions.
  final UnmodifiableListView<ClosedCaption> captions;

  /// Initializes an instance of [ClosedCaptionTrack].
  ClosedCaptionTrack(Iterable<ClosedCaption> captions)
      : captions = UnmodifiableListView(captions);

  /// Gets the caption displayed at the specified point in time.
  /// Returns null if not found.
  ClosedCaption getByTime(Duration time) => captions
      .firstWhere((e) => time >= e.offset && time <= e.end, orElse: () => null);
}
