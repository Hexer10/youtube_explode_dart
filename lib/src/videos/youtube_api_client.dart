class YoutubeApiClient {
  final Map<String, dynamic> payload;
  final String apiUrl;
  final Map<String, dynamic> headers;

  const YoutubeApiClient(this.payload, this.apiUrl, {this.headers = const {}});

  /// Has limited streams but doesn't require signature deciphering.
  static const iosClient = YoutubeApiClient({
    'context': {
      'client': {
        'clientName': 'IOS',
        'clientVersion': '19.29.1',
        'deviceMake': 'Apple',
        'deviceModel': 'iPhone16,2',
        'hl': 'en',
        'osName': 'iPhone',
        'osVersion': '17.5.1.21F90',
        'timeZone': 'UTC',
        'userAgent':
            'com.google.ios.youtube/19.29.1 (iPhone16,2; U; CPU iOS 17_5_1 like Mac OS X;)',
        'gl': 'US',
        'utcOffsetMinutes': 0
      }
    },
  }, 'https://www.youtube.com/youtubei/v1/player?key=AIzaSyB-63vPrdThhKuerbB2N_l7Kwwcxj6yUAc');

/*  static const tvSimply = YoutubeApiClient({
    'context': {
      'client': {
        'clientName': 'TVHTML5_SIMPLY',
        'clientVersion': '1.1',

        'hl': 'en',
        'timeZone': 'UTC',
        'gl': 'US',
        'utcOffsetMinutes': 0
      }
    },
  }, 'https://www.youtube.com/youtubei/v1/player?key=AIzaSyBAETezhkwP0ZWA02RsqT1zu78Fpt0bC_s');
  */

  /// Has limited streams but doesn't require signature deciphering.
  /// As opposed to [iosClient], this works only for music videos but supports muxed streams.
  static const androidMusic = YoutubeApiClient({
    'context': {
      'client': {
        'clientName': 'ANDROID_MUSIC',
        'clientVersion': '2.16.032',
        'androidSdkVersion': 31,
        'userAgent':
            'com.google.android.youtube/19.29.1  (Linux; U; Android 11) gzip',
        'hl': 'en',
        'timeZone': 'UTC',
        'utcOffsetMinutes': 0,
      },
    },
  }, 'https://music.youtube.com/youtubei/v1/player?key=AIzaSyAOghZGza2MQSZkY_zfZ370N-PUdXEo8AI');

  /// Used to to fetch all the video streams (but has signature deciphering).
  /// Currently not working due to YouTube update.
/*
  static const androidClient = {
    'context': {
      'client': {
        'clientName': 'ANDROID',
        'clientVersion': '19.09.37',
        'androidSdkVersion': 30,
        'userAgent':
            'com.google.android.youtube/19.09.37 (Linux; U; Android 11) gzip',
        'hl': 'en',
        'timeZone': 'UTC',
        'utcOffsetMinutes': 0,
      },
    },
  };*/
}
