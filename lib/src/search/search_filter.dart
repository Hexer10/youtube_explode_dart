import 'search_client.dart';

class SearchFilter {
  /// The value fo the 'sp' argument.
  final String value;

  const SearchFilter(this.value);
}

/// Video filters to be used with [SearchClient.getVideos]
class Filters {
  const Filters._();

  /// Features filters.
  FeatureFilters get features => const FeatureFilters._();

  /// Upload date filters.
  UploadDateFilter get uploadDate => const UploadDateFilter._();

  /// Types filters.
  TypeFilters get types => const TypeFilters._();

  /// Duration filters.
  DurationFilters get duration => const DurationFilters._();

  /// Videos sorting.
  SortFilters get sort => const SortFilters._();
}

/// Video filters to be used with [SearchClient.getVideos]
const filters = Filters._();

class FeatureFilters {
  const FeatureFilters._();

  /// Live video.
  SearchFilter get live => const SearchFilter('EgJAAQ%253D%253D');

  /// 4K video.
  SearchFilter get v4k => const SearchFilter('EgJwAQ%253D%253D');

  /// HD video.
  SearchFilter get hd => const SearchFilter('EgIgAQ%253D%253D');

  /// Subtitled video.
  SearchFilter get subTitles => const SearchFilter('EgIoAQ%253D%253D');

  /// Creative comments video.
  SearchFilter get creativeCommons => const SearchFilter('EgIwAQ%253D%253D');

  /// 360° video.
  SearchFilter get v360 => const SearchFilter('EgJ4AQ%253D%253D');

  /// VR 180° video.
  SearchFilter get vr180 => const SearchFilter('EgPQAQE%253D');

  /// 3D video.
  SearchFilter get v3D => const SearchFilter('EgI4AQ%253D%253D');

  /// HDR video.
  SearchFilter get hdr => const SearchFilter('EgPIAQE%253D');

  /// Video with location.
  SearchFilter get location => const SearchFilter('EgO4AQE%253D');

  /// Purchased video.
  SearchFilter get purchased => const SearchFilter('EgJIAQ%253D%253D');
}

class UploadDateFilter {
  const UploadDateFilter._();

  /// Videos uploaded in the last hour.
  SearchFilter get lastHour => const SearchFilter('EgIIAQ%253D%253D');

  /// Videos uploaded today.
  SearchFilter get today => const SearchFilter('EgIIAg%253D%253D');

  /// Videos uploaded in the last week.
  SearchFilter get lastWeek => const SearchFilter('EgIIAw%253D%253D');

  /// Videos uploaded in the last month.
  SearchFilter get lastMonth => const SearchFilter('EgIIBA%253D%253D');

  /// Videos uploaded in the last year.
  SearchFilter get lastYear => const SearchFilter('EgIIBQ%253D%253D');
}

class TypeFilters {
  const TypeFilters._();

  /// Videos.
  SearchFilter get video => const SearchFilter('EgIQAQ%253D%253D');

  /// Channels.
  SearchFilter get channel => const SearchFilter('EgIQAg%253D%253D');

  /// Playlists.
  SearchFilter get playlist => const SearchFilter('EgIQAw%253D%253D');

  /// Movies.
  SearchFilter get movie => const SearchFilter('EgIQBA%253D%253D');

  /// Shows.
  SearchFilter get show => const SearchFilter('EgIQBQ%253D%253D');
}

class DurationFilters {
  const DurationFilters._();

  /// Short videos, < 4 minutes.
  SearchFilter get short => const SearchFilter('EgIYAQ%253D%253D');

  /// Long videos, > 20 minutes.
  SearchFilter get long => const SearchFilter('EgIYAg%253D%253D');
}

class SortFilters {
  const SortFilters._();

  /// Sort by relevance (default).
  SearchFilter get relevance => const SearchFilter('CAASAhAB');

  /// Sort by upload date (default).
  SearchFilter get uploadDate => const SearchFilter('CAI%253D');

  /// Sort by view count (default).
  SearchFilter get viewCount => const SearchFilter('CAM%253D');

  /// Sort by rating (default).
  SearchFilter get rating => const SearchFilter('CAE%253D');
}
