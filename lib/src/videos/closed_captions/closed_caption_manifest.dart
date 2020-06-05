import 'dart:collection';

import 'closed_caption_track_info.dart';

/// Manifest that contains information about available closed caption tracks
/// in a specific video.
class ClosedCaptionManifest {
  /// Available closed caption tracks.
  final UnmodifiableListView<ClosedCaptionTrackInfo> tracks;

  /// Initializes an instance of [ClosedCaptionManifest]
  ClosedCaptionManifest(Iterable<ClosedCaptionTrackInfo> tracks)
      : tracks = UnmodifiableListView(tracks);

  /// Gets the closed caption track in the specified language.
  /// Returns null if not found.
  ClosedCaptionTrackInfo getByLanguage(String language) {
    language = language.toLowerCase();
    return tracks.firstWhere(
        (e) =>
            e.language.code.toLowerCase() == language ||
            e.language.name.toLowerCase() == language,
        orElse: () => null);
  }
}
