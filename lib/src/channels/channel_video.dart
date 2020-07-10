import 'package:equatable/equatable.dart';
import 'package:youtube_explode_dart/src/videos/video_id.dart';

/// Metadata related to a search query result (playlist)
class ChannelVideo with EquatableMixin {
  /// Video ID.
  final VideoId videoId;

  /// Video title.
  final String videoTitle;

  /// Initialize an instance of [ChannelVideo]
  ChannelVideo(this.videoId, this.videoTitle);

  @override
  String toString() => '(ChannelVideo) $videoId ($videoTitle)';

  @override
  List<Object> get props => [videoId];
}
