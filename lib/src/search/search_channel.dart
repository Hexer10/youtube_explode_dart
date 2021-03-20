import 'package:equatable/equatable.dart';

import '../channels/channel_id.dart';
import 'base_search_content.dart';

/// Metadata related to a search query result (channel)
class SearchChannel extends BaseSearchContent with EquatableMixin {
  /// Channel id.
  final ChannelId id;

  /// Channel name.
  final String name;

  /// Description snippet.
  /// Can be empty.
  final String description;

  /// Channel uploaded videos.
  final int videoCount;

  /// Initialize a [SearchChannel] instance.
  SearchChannel(this.id, this.name, this.description, this.videoCount);

  @override
  String toString() => '(Channel) $name ($id)';

  @override
  List<Object?> get props => [id, name, description, videoCount];
}
