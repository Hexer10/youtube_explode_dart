import 'package:test/test.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

void main() {
  YoutubeExplode? yt;
  setUpAll(() {
    yt = YoutubeExplode();
  });

  tearDownAll(() {
    yt?.close();
  });

  test('Get metadata of a playlist', () async {
    var playlistUrl =
        'https://www.youtube.com/playlist?list=PLr-IftNTIujSF-8tlGbZBQyGIT6TCF6Yd';
    var playlist = await yt!.playlists.get(PlaylistId(playlistUrl));
    expect(playlist.id.value, 'PLr-IftNTIujSF-8tlGbZBQyGIT6TCF6Yd');
    expect(playlist.url, playlistUrl);
    expect(playlist.title, 'osu! Highlights');
    expect(playlist.author, 'Tyrrrz');
    expect(playlist.description, 'My best osu! plays');
    expect(playlist.engagement.viewCount, greaterThanOrEqualTo(133));
    expect(playlist.engagement.likeCount, isNull);
    expect(playlist.engagement.dislikeCount, isNull);
    expect(playlist.thumbnails.lowResUrl, isNotEmpty);
    expect(playlist.thumbnails.mediumResUrl, isNotEmpty);
    expect(playlist.thumbnails.highResUrl, isNotEmpty);
    expect(playlist.thumbnails.standardResUrl, isNotEmpty);
    expect(playlist.thumbnails.maxResUrl, isNotEmpty);
  });
  group('Get metadata of any playlist', () {
    for (final val in {
      PlaylistId('PLI5YfMzCfRtZ8eV576YoY3vIYrHjyVm_e'),
      PlaylistId('RD1hu8-y6fKg0'),
      PlaylistId('RDMMU-ty-2B02VY'),
      PlaylistId('RDCLAK5uy_lf8okgl2ygD075nhnJVjlfhwp8NsUgEbs'),
      PlaylistId('PL601B2E69B03FAB9D')
    }) {
      test('PlaylistID - ${val.value}', () async {
        var playlist = await yt!.playlists.get(val);
        expect(playlist.id.value, val.value);
      });
    }
  });

  test('Get videos in a playlist', () async {
    var videos = await yt!.playlists
        .getVideos(PlaylistId(
            'https://www.youtube.com/playlist?list=PLr-IftNTIujSF-8tlGbZBQyGIT6TCF6Yd'))
        .toList();
    expect(videos.length, greaterThanOrEqualTo(19));
    expect(
        videos.map((e) => e.id.value).toList(),
        containsAll([
          'B6N8-_rBTh8',
          'F1bvjgTckMc',
          'kMBzljXOb9g',
          'LsNPjFXIPT8',
          'fXYPMPglYTs',
          'AI7ULzgf8RU',
          'Qzu-fTdjeFY'
        ]));
  });

  test('Get more than 100 videos in a playlist', () async {
    var videos = await yt!.playlists
        .getVideos(PlaylistId(
            'https://www.youtube.com/playlist?list=PLCSusC_jlo14J0uBgFqfHsKu7gc5W2HyM'))
        .toList();
    expect(videos.length, greaterThan(100));
  });

  group('Get videos in any playlist', () {
    for (final val in {
      PlaylistId('PLI5YfMzCfRtZ8eV576YoY3vIYrHjyVm_e'),
      PlaylistId('PLWwAypAcFRgKFlxtLbn_u14zddtDJj3mk'),
      PlaylistId('OLAK5uy_mtOdjCW76nDvf5yOzgcAVMYpJ5gcW5uKU'),
      PlaylistId('RDCLAK5uy_lf8okgl2ygD075nhnJVjlfhwp8NsUgEbs'),
      PlaylistId('UUTMt7iMWa7jy0fNXIktwyLA'),
      PlaylistId('OLAK5uy_lLeonUugocG5J0EUAEDmbskX4emejKwcM'),
      PlaylistId('PL601B2E69B03FAB9D'),
    }) {
      test('PlaylistID - ${val.value}', () async {
        expect(yt!.playlists.getVideos(val), emits(isNotNull));
      });
    }
  });
}
