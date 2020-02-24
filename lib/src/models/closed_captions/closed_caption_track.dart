import 'package:equatable/equatable.dart';

import '../models.dart';

/// Set of captions that get displayed during video playback.
class ClosedCaptionTrack extends Equatable {
  /// Metadata associated with this track.
  final ClosedCaptionTrackInfo info;

  /// Collection of closed captions that belong to this track.
  final List<ClosedCaption> captions;

  /// Initializes an instance of [ClosedCaptionTrack]
  const ClosedCaptionTrack(this.info, this.captions);

  @override
  List<Object> get props => [info, captions];
}
