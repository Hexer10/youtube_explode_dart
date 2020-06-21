import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../channels/channel_id.dart';

/// YouTube comment metadata.
class Comment with EquatableMixin {
  /// Comment id.
  final String commentId;

  /// Comment author name.
  final String author;

  /// Comment author channel id.
  final ChannelId channelId;

  /// Comment text.
  final String text;

  /// Comment likes count.
  final int likeCount;

  /// Published time as string. (For example: "2 years ago")
  final String publishedTime;

  /// Comment reply count.
  final int replyCount;

  /// Used internally.
  @protected
  final String continuation;

  /// Used internally.
  @protected
  final String clicktrackingParams;

  /// Initializes an instance of [Comment]
  Comment(
      this.commentId,
      this.author,
      this.channelId,
      this.text,
      this.likeCount,
      this.publishedTime,
      this.replyCount,
      this.continuation,
      this.clicktrackingParams);

  @override
  String toString() => 'Comment($author): $text';

  @override
  List<Object> get props => [commentId];
}
