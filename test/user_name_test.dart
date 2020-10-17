import 'package:test/test.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

void main() {
  group('These are valid usernames', () {
    for (var val in {'TheTyrrr', 'KannibalenRecords', 'JClayton1994'}) {
      test('Username - $val', () {
        expect(Username(val).value, val);
      });
    }
  });
  group('These are valid username urls', () {
    for (var val in {
      ['youtube.com/user/ProZD', 'ProZD'],
      ['youtube.com/user/TheTyrrr', 'TheTyrrr'],
    }) {
      test('UsernameURL - $val', () {
        expect(Username(val[0]).value, val[1]);
      });
    }
  });
  group('These are invalid usernames', () {
    for (var val in {
      'The_Tyrrr',
      '0123456789ABCDEFGHIJK',
      'A1B2C3-',
      '=0123456789ABCDEF'
    }) {
      test('Username - $val', () {
        expect(() => Username(val), throwsArgumentError);
      });
    }
  });

  group('These are not valid username urls', () {
    for (var val in {
      'youtube.com/user/P_roZD',
      'example.com/user/ProZD',
    }) {
      test('UsernameURL - $val', () {
        expect(() => Username(val), throwsArgumentError);
      });
    }
  });
}
