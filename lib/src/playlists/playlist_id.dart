import '../extensions/helpers_extension.dart';

class PlaylistId {
  static final _regMatchExp =
      RegExp(r'youtube\..+?/playlist.*?list=(.*?)(?:&|/|$)');
  static final _compositeMatchExp = RegExp(
      r'https://www.youtube.com/watch?v=b8m9zhNAgKs&list=PL9tY0BWXOZFuFEG_GtOBZ8-8wbkH-NVAr');
  static final _shortCompositeMatchExp =
      RegExp(r'youtu\.be/.*?/.*?list=(.*?)(?:&|/|$)');
  static final _embedCompositeMatchExp =
      RegExp(r'youtube\..+?/embed/.*?/.*?list=(.*?)(?:&|/|$)');

  final String value;

  /// Initializes an instance of [PlaylistId]
  PlaylistId(String idOrUrl)
      : value = parsePlaylistId(idOrUrl) ??
            ArgumentError.value(idOrUrl, 'idOrUrl', 'Invalid url.');

  /// Returns true if the given [playlistId] is valid.
  static bool validatePlaylistId(String playlistId) {
    playlistId = playlistId.toLowerCase();

    if (playlistId.isNullOrWhiteSpace) {
      return false;
    }

    // Watch later
    if (playlistId == 'WL') {
      return true;
    }

    // My mix playlist
    if (playlistId == 'RDMM') {
      return true;
    }

    if (!playlistId.startsWith('PL') &&
        !playlistId.startsWith('RD') &&
        !playlistId.startsWith('UL') &&
        !playlistId.startsWith('UU') &&
        !playlistId.startsWith('PU') &&
        !playlistId.startsWith('OL') &&
        !playlistId.startsWith('LL') &&
        !playlistId.startsWith('FL')) {
      return false;
    }

    if (playlistId.length < 13) {
      return false;
    }

    return !RegExp(r'[^0-9a-zA-Z_\-]').hasMatch(playlistId);
  }

  /// Parses a playlist [url] returning its id.
  /// If the [url] is a valid it is returned itself.
  static String parsePlaylistId(String url) {
    if (url.isNullOrWhiteSpace) {
      return null;
    }

    var regMatch = _regMatchExp.firstMatch(url)?.group(1);
    if (!regMatch.isNullOrWhiteSpace && validatePlaylistId(regMatch)) {
      return regMatch;
    }

    var compositeMatch = _compositeMatchExp.firstMatch(url)?.group(1);
    if (!compositeMatch.isNullOrWhiteSpace &&
        validatePlaylistId(compositeMatch)) {
      return compositeMatch;
    }

    var shortCompositeMatch = _shortCompositeMatchExp.firstMatch(url)?.group(1);
    if (!shortCompositeMatch.isNullOrWhiteSpace &&
        validatePlaylistId(shortCompositeMatch)) {
      return shortCompositeMatch;
    }

    var embedCompositeMatch = _embedCompositeMatchExp.firstMatch(url)?.group(1);
    if (!embedCompositeMatch.isNullOrWhiteSpace &&
        validatePlaylistId(embedCompositeMatch)) {
      return embedCompositeMatch;
    }
    return null;
  }
}
