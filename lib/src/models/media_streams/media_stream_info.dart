import 'package:equatable/equatable.dart';

import '../models.dart';

/// Metadata associated with a certain [MediaStream]
class MediaStreamInfo extends Equatable {
  /// Unique tag that identifies the properties of the associated stream.
  final int itag;

  /// URL of the endpoint that serves the associated stream.
  final Uri url;

  /// Container of the associated stream.
  final Container container;

  /// Content length (bytes) of the associated stream.
  final int size;

  /// Initializes an instance of [MediaStreamInfo]
  const MediaStreamInfo(this.itag, this.url, this.container, this.size);

  @override
  String toString() => '$itag ($container)';

  @override
  List<Object> get props => [itag, url, container, size];
}
