enum JSChallengeType { n, sig }

class JSChallengeRequest {
  final JSChallengeType type;
  final List<String> challenges;

  JSChallengeRequest({required this.type, required this.challenges});
}

abstract class BaseJSChallengeSolver {
  // /// Solves JavaScript challenges.
  // /// The [requests] parameter is a map where the key is the type of challenge
  // /// and the value is a list of challenge strings to be solved.
  // ///
  // /// Returns a map where each key is a [JSChallengeRequest] and the value
  // /// is another map containing the solved challenges with their corresponding
  // /// results or null if unsolved.
  // Future<Map<JSChallengeRequest, Map<String, String?>>> solveBulk(
  //     String playerUrl, Map<JSChallengeType, List<String>> requests);

  /// Solves a single JavaScript challenge of the specified [type].
  /// Returns the solved challenge as a string.
  ///
  /// See [solveBulk] for bulk solving.
  Future<String> solve(
      String playerUrl, JSChallengeType type, String challenge);

  void dispose() {}
}
