import 'package:equatable/equatable.dart';

/// User activity statistics.
class Engagement extends Equatable {
  /// View count.
  final int viewCount;

  /// Like count.
  final int? likeCount;

  /// Dislike count.
  final int? dislikeCount;

  /// Initializes an instance of [Engagement]
  const Engagement(this.viewCount, this.likeCount, this.dislikeCount);

  /// Average user rating in stars (1 star to 5 stars).
  /// Returns -1 if likeCount or dislikeCount is null.
  num get avgRating {
    if (likeCount == null || dislikeCount == null) {
      return -1;
    }
    if (likeCount! + dislikeCount! == 0) {
      return 0;
    }
    return 1 + 4.0 * likeCount! / (likeCount! + dislikeCount!);
  }

  @override
  String toString() =>
      '$viewCount views, $likeCount likes, $dislikeCount dislikes';

  @override
  List<Object?> get props => [viewCount, likeCount, dislikeCount];
}

/// User activity statistics.
/// No null types
class SafeEngagement extends Engagement {
  @override
  final int viewCount;

  @override
  final int likeCount;

  @override
  final int dislikeCount;

  /// Initializes an instance of [Engagement]
  const SafeEngagement(this.viewCount, this.likeCount, this.dislikeCount)
      : super(viewCount, likeCount, dislikeCount);

  @override
  List<Object> get props => [viewCount, likeCount, dislikeCount];
}
