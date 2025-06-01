import '../channels/channel_id.dart';
import '../common/common.dart';
import '../extensions/helpers_extension.dart';
import '../reverse_engineering/pages/playlist_page.dart' as playlist_page;
import '../reverse_engineering/youtube_http_client.dart';
import '../videos/video.dart';
import '../videos/video_id.dart';
import 'playlist.dart';
import 'playlist_id.dart';

class PlaylistClient {
  final YoutubeHttpClient _httpClient;

  PlaylistClient(this._httpClient);

  Future<Playlist> get(dynamic id) async {
    id = PlaylistId.fromString(id);

    final response = await playlist_page.PlaylistPage.get(
      _httpClient,
      (id as PlaylistId).value,
    );
    return Playlist(
      id,
      response.title ?? '',
      response.author ?? '',
      response.description ?? '',
      ThumbnailSet(id.value),
      Engagement(response.viewCount ?? 0, null, null),
      response.videoCount,
    );
  }

  Stream<Video> getVideos(dynamic id) async* {
    id = PlaylistId.fromString(id);
    final encounteredVideoIds = <String>{};
    final playlistId = (id as PlaylistId).value;

    final url =
        'https://www.youtube.com/playlist?list=$playlistId&hl=en&persist_hl=1';
    final html = await _httpClient.getString(url);

    final apiKeyExp = RegExp(r'"INNERTUBE_API_KEY":"(.*?)"');
    final clientVersionExp = RegExp(r'"INNERTUBE_CLIENT_VERSION":"(.*?)"');
    final visitorExp = RegExp(r'"VISITOR_DATA":"(.*?)"');
    
    final apiKey = apiKeyExp.firstMatch(html)?.group(1);
    final clientVersion = clientVersionExp.firstMatch(html)?.group(1);
    final visitorData = visitorExp.firstMatch(html)?.group(1) ?? '';

    if (apiKey == null || clientVersion == null) {
      throw Exception('Could not extract API info from HTML');
    }

    final ytInitialDataExp = RegExp(
      r'var ytInitialData = (\{.*?\});</script>',
      dotAll: true,
    );
    final ytInitialDataMatch = ytInitialDataExp.firstMatch(html);
    
    playlist_page.PlaylistPage? page;
    
    if (ytInitialDataMatch != null) {
      page = playlist_page.PlaylistPage.parse(html, playlistId);
      print('[✓] Playlist exists in initial HTML data.');
    } else {
      final browseIdExp = RegExp(r'"browseId":"(VL.*?)"');
      final browseId = browseIdExp.firstMatch(html)?.group(1);
      
      if (browseId == null) {
        throw Exception('Could not find browseId in HTML');
      }

      final apiUrl = 'https://www.youtube.com/youtubei/v1/browse?key=$apiKey';
      final headers = {
        'Content-Type': 'application/json',
        'x-youtube-client-name': '1',
        'x-goog-visitor-id': visitorData,
      };
      final body = {
        'context': {
          'client': {'clientName': 'WEB', 'clientVersion': clientVersion},
        },
        'browseId': browseId,
      };
      
      final resp = await _httpClient.postString(
        apiUrl,
        body: body,
        headers: headers,
      );
      page = playlist_page.PlaylistPage.parse(resp, playlistId);
      print('[✓] Fallback browse API successful.');
    }

    if (page == null) {
      throw Exception('Could not extract playlist page');
    }

    int videoCount = 0;
    for (final video in page.videos) {
      final videoId = video.id;
      if (!encounteredVideoIds.add(videoId)) continue;
      if (video.channelId.isEmpty) continue;
      
      videoCount++;
      yield Video(
        VideoId(videoId),
        video.title,
        video.author,
        ChannelId(video.channelId),
        video.uploadDateRaw.toDateTime(),
        video.uploadDateRaw,
        null,
        video.description,
        video.duration,
        ThumbnailSet(videoId),
        null,
        Engagement(video.viewCount, null, null),
        false,
      );
    }
    
    print('Found $videoCount videos in initial data');

    String? continuationToken = page.initialData.continuationToken;
    
    if (continuationToken == null || continuationToken.isEmpty) {
      print('❌ Could not find continuation token. Returning initial data only.');
      return;
    }

    final apiUrl = 'https://www.youtube.com/youtubei/v1/browse?key=$apiKey';
    final headers = {
      'Content-Type': 'application/json',
      'x-youtube-client-name': '1',
      'x-goog-visitor-id': visitorData,
    };

    int requestCount = 0;
    const maxRequests = 30;
    
    while (continuationToken != null && 
           continuationToken.isNotEmpty && 
           requestCount < maxRequests) {
      
      requestCount++;
      print('Fetching additional data, request #$requestCount...');
      
      try {
        await Future.delayed(const Duration(milliseconds: 500));
        
        final body = {
          'context': {
            'client': {'clientName': 'WEB', 'clientVersion': clientVersion},
          },
          'continuation': continuationToken,
        };
        
        final resp = await _httpClient.postString(
          apiUrl,
          body: body,
          headers: headers,
        );
        
        final nextPage = playlist_page.PlaylistPage.parse(resp, playlistId);
        
        int newVideoCount = 0;
        for (final video in nextPage.videos) {
          final videoId = video.id;
          if (!encounteredVideoIds.add(videoId)) continue;
          if (video.channelId.isEmpty) continue;
          
          newVideoCount++;
          yield Video(
            VideoId(videoId),
            video.title,
            video.author,
            ChannelId(video.channelId),
            video.uploadDateRaw.toDateTime(),
            video.uploadDateRaw,
            null,
            video.description,
            video.duration,
            ThumbnailSet(videoId),
            null,
            Engagement(video.viewCount, null, null),
            false,
          );
        }
        
        if (newVideoCount > 0) {
          print('+ $newVideoCount videos added (total: ${encounteredVideoIds.length})');
        } else {
          print('No more videos found.');
          break;
        }
        
        final nextContinuationToken = nextPage.initialData.continuationToken;
        
        if (nextContinuationToken == null || 
            nextContinuationToken.isEmpty || 
            nextContinuationToken == continuationToken) {
          print('[✓] All videos fetched (no more continuation tokens)');
          break;
        }
        
        continuationToken = nextContinuationToken;
        
      } catch (e) {
        print('Continuation request failed: $e');
        break;
      }
    }
    
    if (requestCount >= maxRequests) {
      print('Reached maximum request limit ($maxRequests). There might be more videos.');
    }
    
    print('Final total: ${encounteredVideoIds.length} unique videos');
  }
}
