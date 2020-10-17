import 'package:test/test.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

void main() {
  YoutubeExplode yt;
  setUp(() {
    yt = YoutubeExplode();
  });

  tearDown(() {
    yt.close();
  });

  test('Search a youtube video from the api', () async {
    var videos =
        await yt.search.getVideos('undead corporation megalomania').toList();
    expect(videos, isNotEmpty);
  });

  test('Search a youtube videos from the search page', () async {
    var searchQuery = await yt.search.queryFromPage('hello');
    expect(searchQuery.content, isNotEmpty);
    expect(searchQuery.relatedVideos, isNotEmpty);
    expect(searchQuery.relatedQueries, isNotEmpty);
  });

  test('Search with no results', () async {
    var query =
        await yt.search.queryFromPage('g;jghEOGHJeguEPOUIhjegoUEHGOGHPSASG');
    expect(query.content, isEmpty);
    expect(query.relatedQueries, isEmpty);
    expect(query.relatedVideos, isEmpty);
    var nextPage = await query.nextPage();
    expect(nextPage, isNull);
  });

  test('Search youtube videos from search page (stream)', () async {
    var query = await yt.search.getVideosFromPage('hello').take(30).toList();
    expect(query, hasLength(30));
  });
}
