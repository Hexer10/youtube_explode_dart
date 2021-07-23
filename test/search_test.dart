import 'package:test/test.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

void main() {
  YoutubeExplode? yt;
  setUp(() {
    yt = YoutubeExplode();
  });

  tearDown(() {
    yt?.close();
  });

  test('Search a youtube video from the search page', () async {
    var videos = await yt!.search.getVideos('undead corporation megalomania');
    expect(videos, isNotEmpty);
  });

  test('Search a youtube video from the search page-2', () async {
    var videos = await yt!.search
        // ignore: deprecated_member_use_from_same_package
        .getVideosFromPage('hello')
        .where((e) => e is SearchVideo) // Take only the videos.
        .cast<SearchVideo>()
        .take(10) // Take on 10 results.
        .toList();
    expect(videos, hasLength(10));
    var video = videos.first;
    expect(video.id, isNotNull);

    expect(video.title, isNotEmpty);
    expect(video.author, isNotEmpty);
    expect(video.description, isNotEmpty);
    expect(video.duration, isNotEmpty);
    expect(video.viewCount, greaterThan(0));
    expect(video.thumbnails, isNotEmpty);
  });

  test('Search with no results - old', () async {
    var query =
        // ignore: deprecated_member_use_from_same_package
        await yt!.search.queryFromPage('g;jghEOGHJeguEPOUIhjegoUEHGOGHPSASG');
    expect(query.content, isEmpty);
    expect(query.relatedVideos, isEmpty);
    var nextPage = await query.nextPage();
    expect(nextPage, isNull);
  });

  test('Search youtube videos have thumbnails - old', () async {
    // ignore: deprecated_member_use_from_same_package
    var searchQuery = await yt!.search.queryFromPage('hello');
    expect(searchQuery.content.first, isA<SearchVideo>());

    var video = searchQuery.content.first as SearchVideo;
    expect(video.thumbnails, isNotEmpty);
  });
}
