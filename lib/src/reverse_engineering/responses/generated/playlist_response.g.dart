// To parse this JSON data, do
//
//     final playlistResponseJson = playlistResponseJsonFromJson(jsonString);

import 'dart:convert';

class PlaylistResponseJson {
  PlaylistResponseJson({
    this.title,
    this.views,
    this.description,
    this.video,
    this.author,
    this.likes,
    this.dislikes,
  });

  final String title;
  final int views;
  final String description;
  final List<Video> video;
  final String author;
  final int likes;
  final int dislikes;

  factory PlaylistResponseJson.fromRawJson(String str) =>
      PlaylistResponseJson.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlaylistResponseJson.fromJson(Map<String, dynamic> json) =>
      PlaylistResponseJson(
        title: json["title"] == null ? null : json["title"],
        views: json["views"] == null ? null : json["views"],
        description: json["description"] == null ? null : json["description"],
        video: json["video"] == null
            ? null
            : List<Video>.from(json["video"].map((x) => Video.fromJson(x))),
        author: json["author"] == null ? null : json["author"],
        likes: json["likes"] == null ? null : json["likes"],
        dislikes: json["dislikes"] == null ? null : json["dislikes"],
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title,
        "views": views == null ? null : views,
        "description": description == null ? null : description,
        "video": video == null
            ? null
            : List<dynamic>.from(video.map((x) => x.toJson())),
        "author": author == null ? null : author,
        "likes": likes == null ? null : likes,
        "dislikes": dislikes == null ? null : dislikes,
      };
}

class Video {
  Video({
    this.sessionData,
    this.timeCreated,
    this.ccLicense,
    this.title,
    this.rating,
    this.isHd,
    this.privacy,
    this.lengthSeconds,
    this.keywords,
    this.views,
    this.encryptedId,
    this.likes,
    this.isCc,
    this.description,
    this.thumbnail,
    this.userId,
    this.added,
    this.endscreenAutoplaySessionData,
    this.comments,
    this.dislikes,
    this.categoryId,
    this.duration,
    this.author,
  });

  final SessionData sessionData;
  final int timeCreated;
  final bool ccLicense;
  final String title;
  final num rating;
  final bool isHd;
  final Privacy privacy;
  final int lengthSeconds;
  final String keywords;
  final String views;
  final String encryptedId;
  final int likes;
  final bool isCc;
  final String description;
  final String thumbnail;
  final String userId;
  final String added;
  final EndscreenAutoplaySessionData endscreenAutoplaySessionData;
  final String comments;
  final int dislikes;
  final int categoryId;
  final String duration;
  final String author;

  factory Video.fromRawJson(String str) => Video.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Video.fromJson(Map<String, dynamic> json) => Video(
        sessionData: json["session_data"] == null
            ? null
            : sessionDataValues.map[json["session_data"]],
        timeCreated: json["time_created"] == null ? null : json["time_created"],
        ccLicense: json["cc_license"] == null ? null : json["cc_license"],
        title: json["title"] == null ? null : json["title"],
        rating: json["rating"] == null ? null : json["rating"],
        isHd: json["is_hd"] == null ? null : json["is_hd"],
        privacy:
            json["privacy"] == null ? null : privacyValues.map[json["privacy"]],
        lengthSeconds:
            json["length_seconds"] == null ? null : json["length_seconds"],
        keywords: json["keywords"] == null ? null : json["keywords"],
        views: json["views"] == null ? null : json["views"],
        encryptedId: json["encrypted_id"] == null ? null : json["encrypted_id"],
        likes: json["likes"] == null ? null : json["likes"],
        isCc: json["is_cc"] == null ? null : json["is_cc"],
        description: json["description"] == null ? null : json["description"],
        thumbnail: json["thumbnail"] == null ? null : json["thumbnail"],
        userId: json["user_id"] == null ? null : json["user_id"],
        added: json["added"] == null ? null : json["added"],
        endscreenAutoplaySessionData:
            json["endscreen_autoplay_session_data"] == null
                ? null
                : endscreenAutoplaySessionDataValues
                    .map[json["endscreen_autoplay_session_data"]],
        comments: json["comments"] == null ? null : json["comments"],
        dislikes: json["dislikes"] == null ? null : json["dislikes"],
        categoryId: json["category_id"] == null ? null : json["category_id"],
        duration: json["duration"] == null ? null : json["duration"],
        author: json["author"] == null ? null : json["author"],
      );

  Map<String, dynamic> toJson() => {
        "session_data":
            sessionData == null ? null : sessionDataValues.reverse[sessionData],
        "time_created": timeCreated == null ? null : timeCreated,
        "cc_license": ccLicense == null ? null : ccLicense,
        "title": title == null ? null : title,
        "rating": rating == null ? null : rating,
        "is_hd": isHd == null ? null : isHd,
        "privacy": privacy == null ? null : privacyValues.reverse[privacy],
        "length_seconds": lengthSeconds == null ? null : lengthSeconds,
        "keywords": keywords == null ? null : keywords,
        "views": views == null ? null : views,
        "encrypted_id": encryptedId == null ? null : encryptedId,
        "likes": likes == null ? null : likes,
        "is_cc": isCc == null ? null : isCc,
        "description": description == null ? null : description,
        "thumbnail": thumbnail == null ? null : thumbnail,
        "user_id": userId == null ? null : userId,
        "added": added == null ? null : added,
        "endscreen_autoplay_session_data": endscreenAutoplaySessionData == null
            ? null
            : endscreenAutoplaySessionDataValues
                .reverse[endscreenAutoplaySessionData],
        "comments": comments == null ? null : comments,
        "dislikes": dislikes == null ? null : dislikes,
        "category_id": categoryId == null ? null : categoryId,
        "duration": duration == null ? null : duration,
        "author": author == null ? null : author,
      };
}

enum EndscreenAutoplaySessionData { FEATURE_AUTOPLAY }

final endscreenAutoplaySessionDataValues = EnumValues(
    {"feature=autoplay": EndscreenAutoplaySessionData.FEATURE_AUTOPLAY});

enum Privacy { PUBLIC }

final privacyValues = EnumValues({"public": Privacy.PUBLIC});

enum SessionData { FEATURE_PLAYLIST }

final sessionDataValues =
    EnumValues({"feature=playlist": SessionData.FEATURE_PLAYLIST});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
