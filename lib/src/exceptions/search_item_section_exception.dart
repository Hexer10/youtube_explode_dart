//

import '../../youtube_explode_dart.dart';

/// Exception thrown when the Item Section is missing from a search request.
class SearchItemSectionException implements YoutubeExplodeException {
  @override
  // TODO: implement message
  String get message => 'Failed to find the item section.';
}
