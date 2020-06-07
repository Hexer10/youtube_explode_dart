import 'package:test/test.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

void main() {
  group('Username', () {
    test('ValidUsername', () {
      var data = const {'TheTyrrr', 'KannibalenRecords', 'JClayton1994'};
      // ignore: avoid_function_literals_in_foreach_calls
      data.forEach((usernameStr) {
        var username = Username(usernameStr);
        expect(username.value, usernameStr);
      });
    });
    test('ValidUsernameUrl', () {
      var data = const {
        'youtube.com/user/ProZD': 'ProZD',
        'youtube.com/user/TheTyrrr': 'TheTyrrr',
      };
      data.forEach((url, usernameStr) {
        var username = Username(url);
        expect(username.value, usernameStr);
      });
    });
    test('InvalidUsername', () {
      expect(() => Username('The_Tyrrr'), throwsArgumentError);
      expect(() => Username('0123456789ABCDEFGHIJK'), throwsArgumentError);
      expect(() => Username('A1B2C3-'), throwsArgumentError);
      expect(() => Username('=0123456789ABCDEF'), throwsArgumentError);
    });
    test('InvalidUsernameUrl', () {
      expect(() => Username('youtube.com/user/P_roZD'), throwsArgumentError);
      expect(() => Username('youtube.com/user/P_roZD'), throwsArgumentError);
    });
  });
}
