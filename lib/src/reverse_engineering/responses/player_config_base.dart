/// Base class for PlayerConfig.
abstract class PlayerConfigBase<T> {
  /// Root node.
  final T root;

  ///
  PlayerConfigBase(this.root);

  /// Player source url.
  String get sourceUrl;
}
