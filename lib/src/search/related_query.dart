import 'package:equatable/equatable.dart';

import '../videos/video_id.dart';

///
class RelatedQuery with EquatableMixin {
  /// Query related to a search query.
  final String query;

  /// Video related to a search query.
  final VideoId videoId;

  /// Initialize a [RelatedQuery] instance.
  RelatedQuery(this.query, this.videoId);

  @override
  String toString() => 'RelatedQuery($videoId): $query';

  @override
  List<Object> get props => [query, videoId];
}
