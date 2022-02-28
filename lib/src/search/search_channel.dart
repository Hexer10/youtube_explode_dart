import 'package:freezed_annotation/freezed_annotation.dart';

import '../channels/channel_id.dart';
import 'base_search_content.dart';

part 'search_channel.freezed.dart';

/// Metadata related to a search query result (channel)
@freezed
class SearchChannel with _$SearchChannel, BaseSearchContent {
  /// Initialize a [SearchChannel] instance.
  //@With<BaseSearchContent>()
  const factory SearchChannel(

      /// Channel id.
      ChannelId id,

      /// Channel name.
      String name,

      /// Description snippet.
      /// Can be empty.
      String description,

      /// Channel uploaded videos.
      int videoCount) = _SearchChannel;
}
