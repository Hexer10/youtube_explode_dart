import 'dart:math';

import 'package:test/test.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

final rnd = Random();
const letters = r'abcdefghilmnopqrstuvzjkwy1234567890!@#$%^&*()_+{}|"?><|~`|';

void main() {
  YoutubeExplode? yt;
  setUp(() {
    yt = YoutubeExplode();
  });

  tearDown(() {
    yt?.close();
  });

  test('Search a youtube video from the search page', () async {
    var videos = await yt!.search.search('undead corporation megalomania');
    expect(videos, isNotEmpty);
  });

  test('Search with no results', () async {
    var videos = await yt!.search.search(
        List.generate(1300, (_) => letters[rnd.nextInt(letters.length)])
            .join());
    expect(videos, isEmpty);
    var nextPage = await videos.nextPage();
    expect(nextPage, isNull);
  });

  test('Search only channels', () async {
    var channels = await yt!.search
        .searchContent('PewDiePie', filter: TypeFilters.channel);
    expect(channels.every((e) => e is SearchChannel), isTrue);
  });

  test('Search only playlists', () async {
    var channels =
        await yt!.search.searchContent('Banana', filter: TypeFilters.playlist);
    expect(channels.every((e) => e is SearchPlaylist), isTrue);
  });

  test('Search only movies', () async {
    var channels =
        await yt!.search.searchContent('Banana', filter: TypeFilters.playlist);
    expect(channels.every((e) => e is SearchPlaylist), isTrue);
  });

  test('Search test search filters', () async {
    var featureSearch =
        await yt!.search.searchContent('hello', filter: FeatureFilters.hd);
    expect(featureSearch, isNotEmpty);

    var uploadSearch = await yt!.search
        .searchContent('hello', filter: UploadDateFilter.lastHour);
    expect(uploadSearch, isNotEmpty);

    var durationSearch =
        await yt!.search.searchContent('hello', filter: DurationFilters.long);
    expect(durationSearch, isNotEmpty);

    var sortSearch =
        await yt!.search.searchContent('hello', filter: SortFilters.viewCount);
    expect(sortSearch, isNotEmpty);
  });

  test('Search raw', () async {
    var search = await yt!.search.searchRaw('hello');
    expect(search.content, isNotEmpty);
    expect(search.relatedVideos, isNotEmpty);
    expect(search.estimatedResults, greaterThan(1));
  });

  test('Get youtube search suggestions', () async {
    var suggestions = await yt!.search.getQuerySuggestions('hello');
    expect(suggestions, isNotEmpty);
  });
}
