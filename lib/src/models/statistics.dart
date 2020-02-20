/// User activity statistics.
class Statistics {
  /// View count.
  final int viewCount;

  /// Like count.
  final int likeCount;

  /// Dislike count.
  final int dislikeCount;

  /// Initializes an instance of <see cref="Statistics"/>.
  const Statistics(this.viewCount, this.likeCount, this.dislikeCount);

  /// Average user rating in stars (1 star to 5 stars).
  num get avgRating {
    if (likeCount + dislikeCount == 0) {
      return 0;
    }
    return 1 + 4.0 * likeCount / (likeCount + dislikeCount);
  }
}
