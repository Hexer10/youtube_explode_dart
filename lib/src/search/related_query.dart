import 'package:freezed_annotation/freezed_annotation.dart';

import '../videos/video_id.dart';

part 'related_query.freezed.dart';

///
@freezed
class RelatedQuery with _$RelatedQuery {
  /// Initialize a [RelatedQuery] instance.
  const factory RelatedQuery(

      /// Query related to a search query.
      String query,

      /// Video related to a search query.
      VideoId videoId) = _RelatedQuery;
}
