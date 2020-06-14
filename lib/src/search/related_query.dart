import '../videos/video_id.dart';

///
class RelatedQuery {
  /// Query related to a search query.
  final String query;

  /// Video related to a search query.
  final VideoId videoId;

  /// Initialize a [RelatedQuery] instance.
  RelatedQuery(this.query, this.videoId);
}
