import 'package:test/test.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

void main() {
  group('PlaylistId', () {
    test('ValidPlaylistId', () {
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
      // ignore: avoid_function_literals_in_foreach_calls
      data.forEach((playlistId) {
        var playlist = PlaylistId(playlistId);
        expect(playlist.value, playlistId);
      });
    });
    test('ValidPlaylistUrl', () {
      var data = const {
        'youtube.com/playlist?list=PLOU2XLYxmsIJGErt5rrCqaSGTMyyqNt2H':
            'PLOU2XLYxmsIJGErt5rrCqaSGTMyyqNt2H',
        'youtube.com/watch?v=b8m9zhNAgKs&list=PL9tY0BWXOZFuFEG_GtOBZ8-8wbkH-NVAr':
            'PL9tY0BWXOZFuFEG_GtOBZ8-8wbkH-NVAr',
        'youtu.be/b8m9zhNAgKs/?list=PL9tY0BWXOZFuFEG_GtOBZ8-8wbkH-NVAr':
            'PL9tY0BWXOZFuFEG_GtOBZ8-8wbkH-NVAr',
        'youtube.com/embed/b8m9zhNAgKs/?list=PL9tY0BWXOZFuFEG_GtOBZ8-8wbkH-NVAr':
            'PL9tY0BWXOZFuFEG_GtOBZ8-8wbkH-NVAr',
        'youtube.com/watch?v=x2ZRoWQ0grU&list=RDEMNJhLy4rECJ_fG8NL-joqsg':
            'RDEMNJhLy4rECJ_fG8NL-joqsg'
      };
      data.forEach((url, playlistId) {
        var playlist = PlaylistId(playlistId);
        expect(playlist.value, playlistId);
      });
    });
    test('InvalidPlaylistId', () {
      expect(() => PlaylistId('PLm_3vnTS-pvmZFuF L1Pyhqf8kTTYVKjW'),
          throwsArgumentError);
      expect(() => PlaylistId('PLm_3vnTS-pvmZFuF3L=Pyhqf8kTTYVKjW'),
          throwsArgumentError);
    });
    test('InvalidPlaylistUrl', () {
      expect(() => PlaylistId('youtube.com/playlist?lisp=PLOU2XLYxmsIJGErt5rrCqaSGTMyyqNt2H'),
          throwsArgumentError);
      expect(() => PlaylistId('youtube.com/playlist?list=asd'),
          throwsArgumentError);
      expect(() => PlaylistId('youtube.com/'),
          throwsArgumentError);
    });
  });
}
