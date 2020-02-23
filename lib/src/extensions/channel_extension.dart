import 'package:html/dom.dart';
import 'package:html/parser.dart' as html;

import '../models/models.dart';
import '../youtube_explode_base.dart';
import 'helpers_extension.dart';
import 'playlist_extension.dart';

/// Channel extension for [YoutubeExplode]
extension ChannelExtension on YoutubeExplode {
  static final _usernameRegMatchExp =
      RegExp(r'youtube\..+?/user/(.*?)(?:\?|&|/|$)');

  static final _idRegMatchExp =
      RegExp(r'youtube\..+?/channel/(.*?)(?:\?|&|/|$)');

  /// Returns the [Channel] associated with the given channelId.
  /// Throws an [ArgumentError] if the channel id is not valid.
  Future<Channel> getChannel(String channelId) async {
    if (!validateChannelId(channelId)) {
      throw ArgumentError.value(
          channelId, 'channelId', 'Invalid YouTube channel id.');
    }

    var channelPageHtml = await _getChannelPageHtml(channelId);
    var channelTitle = channelPageHtml
        .querySelector('meta[property="og:title"]')
        .attributes['content'];
    var channelImage = channelPageHtml
        .querySelector('meta[property="og:image"]')
        .attributes['content'];

    return Channel(channelId, channelTitle, Uri.parse(channelImage));
  }

  /// Get a channel id from a username.
  /// Might not work properly.
  Future<String> getChannelId(String username) async {
    if (!validateUsername(username)) {
      throw ArgumentError.value(
          username, 'username', 'Invalid YouTube username.');
    }

    var userPageHtml = await _getUserPageHtml(username);

    var channelUrl = userPageHtml
        .querySelector('meta[property="og:url"]')
        .attributes['content'];

    return channelUrl.replaceFirst('/channel/', '');
  }

  /// Returns all the videos uploaded by a channel up to [maxPages] count.
  Future<List<Video>> getChannelUploads(String channelId,
      [int maxPages = 5]) async {
    if (!validateChannelId(channelId)) {
      throw ArgumentError.value(
          channelId, 'channelId', 'Invalid YouTube channel id.');
    }

    var playlistId = 'UU${channelId.replaceFirst('UC', '')}';
    var playlist = await getPlaylist(playlistId, maxPages);

    return playlist.videos;
  }

  Future<Document> _getChannelPageHtml(String channelId) async {
    var url = 'https://www.youtube.com/channel/$channelId?hl=en';
    var raw = (await client.get(url)).body;

    return html.parse(raw);
  }

  Future<Document> _getUserPageHtml(String username) async {
    var url = 'https://www.youtube.com/user/$username?hl=en';
    var raw = (await client.get(url)).body;

    return html.parse(raw);
  }

  /// Returns true if [username] is a valid Youtube username.
  static bool validateUsername(String username) {
    if (username.isNullOrWhiteSpace) {
      return false;
    }

    if (username.length > 20) {
      return false;
    }

    return !RegExp(r'[^0-9a-zA-Z]').hasMatch(username);
  }

  /// Parses a username from an url.
  /// Returns null if the username is not found.
  static String parseUsername(String url) {
    if (url.isNullOrWhiteSpace) {
      return null;
    }

    var regMatch = _usernameRegMatchExp.firstMatch(url)?.group(1);
    if (!regMatch.isNullOrWhiteSpace && validateUsername(regMatch)) {
      return regMatch;
    }
    return null;
  }

  /// Returns true if [channelId] is a valid Youtube channel id.
  static bool validateChannelId(String channelId) {
    if (channelId.isNullOrWhiteSpace) {
      return false;
    }

    channelId = channelId.toLowerCase();

    if (!channelId.startsWith('uc')) {
      return false;
    }

    if (channelId.length != 24) {
      return false;
    }

    return !RegExp(r'[^0-9a-zA-Z]').hasMatch(channelId);
  }

  /// Parses a channel id from an url.
  /// Returns null if the username is not found.
  static String parseChannelId(String url) {
    if (url.isNullOrWhiteSpace) {
      return null;
    }

    var regMatch = _idRegMatchExp.firstMatch(url)?.group(1);
    if (!regMatch.isNullOrWhiteSpace && validateChannelId(regMatch)) {
      return regMatch;
    }
    return null;
  }
}
