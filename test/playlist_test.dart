import 'package:test/test.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

void main() {
  group('Playlist', () {
    YoutubeExplode yt;
    setUp(() {
      yt = YoutubeExplode();
    });

    tearDown(() {
      yt.close();
    });

    test('GetMetadataOfPlaylist', () async {
      var playlistUrl =
          'https://www.youtube.com/playlist?list=PLr-IftNTIujSF-8tlGbZBQyGIT6TCF6Yd';
      var playlist = await yt.playlists.get(PlaylistId(playlistUrl));
      expect(playlist.id.value, 'PLr-IftNTIujSF-8tlGbZBQyGIT6TCF6Yd');
      expect(playlist.url, playlistUrl);
      expect(playlist.title, 'osu! Highlights');
      expect(playlist.author, 'Tyrrrz');
      expect(playlist.description, 'My best osu! plays');
      expect(playlist.engagement.viewCount, greaterThanOrEqualTo(133));
      expect(playlist.engagement.likeCount, greaterThanOrEqualTo(0));
      expect(playlist.engagement.dislikeCount, greaterThanOrEqualTo(0));
    });
    test('GetMetadataOfAnyPlaylist', () async {
      var data = {
        'PLI5YfMzCfRtZ8eV576YoY3vIYrHjyVm_e',
        'RD1hu8-y6fKg0',
        'RDMMU-ty-2B02VY',
        'RDCLAK5uy_lf8okgl2ygD075nhnJVjlfhwp8NsUgEbs',
        'OLAK5uy_lLeonUugocG5J0EUAEDmbskX4emejKwcM',
        'PL601B2E69B03FAB9D'
      };
      for (var playlistId in data) {
        var playlist = await yt.playlists.get(PlaylistId(playlistId));
        expect(playlist.id.value, playlistId);
      }
    });
    test('GetVideosInPlaylist', () async {
      var videos = await yt.playlists
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
            'VoGpvg3xXoE',
            'Qzu-fTdjeFY'
          ]));
    });
    var data = const {
      'PL601B2E69B03FAB9D',
      'PLI5YfMzCfRtZ8eV576YoY3vIYrHjyVm_e',
      'PLWwAypAcFRgKFlxtLbn_u14zddtDJj3mk',
      'OLAK5uy_mtOdjCW76nDvf5yOzgcAVMYpJ5gcW5uKU',
      'RD1hu8-y6fKg0',
      'RDMMU-ty-2B02VY',
      'RDCLAK5uy_lf8okgl2ygD075nhnJVjlfhwp8NsUgEbs',
      'ULl6WWX-BgIiE',
      'UUTMt7iMWa7jy0fNXIktwyLA',
      'OLAK5uy_lLeonUugocG5J0EUAEDmbskX4emejKwcM',
      'FLEnBXANsKmyj2r9xVyKoDiQ'
    };
    for (var playlistId in data) {
      test('GetVideosInAnyPlaylist - $playlistId', () async {
        var videos =
            await yt.playlists.getVideos(PlaylistId(playlistId)).toList();
        expect(videos, isNotEmpty);
      });
    }
  });
}
