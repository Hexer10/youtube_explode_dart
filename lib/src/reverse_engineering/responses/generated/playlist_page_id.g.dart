// To parse this JSON data, do
//
//     final playlistPageId = playlistPageIdFromJson(jsonString);

import 'dart:convert';

class PlaylistPageId {
  PlaylistPageId({
    this.responseContext,
    this.trackingParams,
    this.contents,
    this.metadata,
    this.microformat,
    this.onResponseReceivedActions,
    this.sidebar,
    this.estimatedResults,
    this.topbar,
    this.adSafetyReason,
    this.onResponseReceivedCommands,
    this.refinements,
  });

  final ResponseContext responseContext;
  final String trackingParams;
  final Contents contents;
  final Metadata metadata;
  final Microformat microformat;
  final List<OnResponseReceivedAction> onResponseReceivedActions;
  final Sidebar sidebar;
  final String estimatedResults;
  final Topbar topbar;
  final AdSafetyReason adSafetyReason;
  final List<OnResponseReceivedCommand> onResponseReceivedCommands;
  final List<String> refinements;

  factory PlaylistPageId.fromRawJson(String str) =>
      PlaylistPageId.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlaylistPageId.fromJson(Map<String, dynamic> json) => PlaylistPageId(
        responseContext: json["responseContext"] == null
            ? null
            : ResponseContext.fromJson(json["responseContext"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        contents: json["contents"] == null
            ? null
            : Contents.fromJson(json["contents"]),
        metadata: json["metadata"] == null
            ? null
            : Metadata.fromJson(json["metadata"]),
        microformat: json["microformat"] == null
            ? null
            : Microformat.fromJson(json["microformat"]),
        onResponseReceivedActions: json["onResponseReceivedActions"] == null
            ? null
            : List<OnResponseReceivedAction>.from(
                json["onResponseReceivedActions"]
                    .map((x) => OnResponseReceivedAction.fromJson(x))),
        sidebar:
            json["sidebar"] == null ? null : Sidebar.fromJson(json["sidebar"]),
        estimatedResults:
            json["estimatedResults"] == null ? null : json["estimatedResults"],
        topbar: json["topbar"] == null ? null : Topbar.fromJson(json["topbar"]),
        adSafetyReason: json["adSafetyReason"] == null
            ? null
            : AdSafetyReason.fromJson(json["adSafetyReason"]),
        onResponseReceivedCommands: json["onResponseReceivedCommands"] == null
            ? null
            : List<OnResponseReceivedCommand>.from(
                json["onResponseReceivedCommands"]
                    .map((x) => OnResponseReceivedCommand.fromJson(x))),
        refinements: json["refinements"] == null
            ? null
            : List<String>.from(json["refinements"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "responseContext":
            responseContext == null ? null : responseContext.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "contents": contents == null ? null : contents.toJson(),
        "metadata": metadata == null ? null : metadata.toJson(),
        "microformat": microformat == null ? null : microformat.toJson(),
        "onResponseReceivedActions": onResponseReceivedActions == null
            ? null
            : List<dynamic>.from(
                onResponseReceivedActions.map((x) => x.toJson())),
        "sidebar": sidebar == null ? null : sidebar.toJson(),
        "estimatedResults": estimatedResults == null ? null : estimatedResults,
        "topbar": topbar == null ? null : topbar.toJson(),
        "adSafetyReason":
            adSafetyReason == null ? null : adSafetyReason.toJson(),
        "onResponseReceivedCommands": onResponseReceivedCommands == null
            ? null
            : List<dynamic>.from(
                onResponseReceivedCommands.map((x) => x.toJson())),
        "refinements": refinements == null
            ? null
            : List<dynamic>.from(refinements.map((x) => x)),
      };
}

class AdSafetyReason {
  AdSafetyReason();

  factory AdSafetyReason.fromRawJson(String str) =>
      AdSafetyReason.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AdSafetyReason.fromJson(Map<String, dynamic> json) =>
      AdSafetyReason();

  Map<String, dynamic> toJson() => {};
}

class Contents {
  Contents({
    this.twoColumnBrowseResultsRenderer,
    this.twoColumnSearchResultsRenderer,
  });

  final TwoColumnBrowseResultsRenderer twoColumnBrowseResultsRenderer;
  final TwoColumnSearchResultsRenderer twoColumnSearchResultsRenderer;

  factory Contents.fromRawJson(String str) =>
      Contents.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Contents.fromJson(Map<String, dynamic> json) => Contents(
        twoColumnBrowseResultsRenderer:
            json["twoColumnBrowseResultsRenderer"] == null
                ? null
                : TwoColumnBrowseResultsRenderer.fromJson(
                    json["twoColumnBrowseResultsRenderer"]),
        twoColumnSearchResultsRenderer:
            json["twoColumnSearchResultsRenderer"] == null
                ? null
                : TwoColumnSearchResultsRenderer.fromJson(
                    json["twoColumnSearchResultsRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "twoColumnBrowseResultsRenderer": twoColumnBrowseResultsRenderer == null
            ? null
            : twoColumnBrowseResultsRenderer.toJson(),
        "twoColumnSearchResultsRenderer": twoColumnSearchResultsRenderer == null
            ? null
            : twoColumnSearchResultsRenderer.toJson(),
      };
}

class TwoColumnBrowseResultsRenderer {
  TwoColumnBrowseResultsRenderer({
    this.tabs,
  });

  final List<Tab> tabs;

  factory TwoColumnBrowseResultsRenderer.fromRawJson(String str) =>
      TwoColumnBrowseResultsRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TwoColumnBrowseResultsRenderer.fromJson(Map<String, dynamic> json) =>
      TwoColumnBrowseResultsRenderer(
        tabs: json["tabs"] == null
            ? null
            : List<Tab>.from(json["tabs"].map((x) => Tab.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "tabs": tabs == null
            ? null
            : List<dynamic>.from(tabs.map((x) => x.toJson())),
      };
}

class Tab {
  Tab({
    this.tabRenderer,
  });

  final TabRenderer tabRenderer;

  factory Tab.fromRawJson(String str) => Tab.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Tab.fromJson(Map<String, dynamic> json) => Tab(
        tabRenderer: json["tabRenderer"] == null
            ? null
            : TabRenderer.fromJson(json["tabRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "tabRenderer": tabRenderer == null ? null : tabRenderer.toJson(),
      };
}

class TabRenderer {
  TabRenderer({
    this.selected,
    this.trackingParams,
    this.content,
  });

  final dynamic selected;
  final String trackingParams;
  final TabRendererContent content;

  factory TabRenderer.fromRawJson(String str) =>
      TabRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TabRenderer.fromJson(Map<String, dynamic> json) => TabRenderer(
        selected: json["selected"] == null ? null : json["selected"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        content: json["content"] == null
            ? null
            : TabRendererContent.fromJson(json["content"]),
      );

  Map<String, dynamic> toJson() => {
        "selected": selected == null ? null : selected,
        "trackingParams": trackingParams == null ? null : trackingParams,
        "content": content == null ? null : content.toJson(),
      };
}

class TabRendererContent {
  TabRendererContent({
    this.sectionListRenderer,
  });

  final ContentSectionListRenderer sectionListRenderer;

  factory TabRendererContent.fromRawJson(String str) =>
      TabRendererContent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TabRendererContent.fromJson(Map<String, dynamic> json) =>
      TabRendererContent(
        sectionListRenderer: json["sectionListRenderer"] == null
            ? null
            : ContentSectionListRenderer.fromJson(json["sectionListRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "sectionListRenderer":
            sectionListRenderer == null ? null : sectionListRenderer.toJson(),
      };
}

class ContentSectionListRenderer {
  ContentSectionListRenderer({
    this.contents,
    this.trackingParams,
  });

  final List<PurpleContent> contents;
  final String trackingParams;

  factory ContentSectionListRenderer.fromRawJson(String str) =>
      ContentSectionListRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ContentSectionListRenderer.fromJson(Map<String, dynamic> json) =>
      ContentSectionListRenderer(
        contents: json["contents"] == null
            ? null
            : List<PurpleContent>.from(
                json["contents"].map((x) => PurpleContent.fromJson(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "contents": contents == null
            ? null
            : List<dynamic>.from(contents.map((x) => x.toJson())),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class PurpleContent {
  PurpleContent({
    this.itemSectionRenderer,
  });

  final PurpleItemSectionRenderer itemSectionRenderer;

  factory PurpleContent.fromRawJson(String str) =>
      PurpleContent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleContent.fromJson(Map<String, dynamic> json) => PurpleContent(
        itemSectionRenderer: json["itemSectionRenderer"] == null
            ? null
            : PurpleItemSectionRenderer.fromJson(json["itemSectionRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "itemSectionRenderer":
            itemSectionRenderer == null ? null : itemSectionRenderer.toJson(),
      };
}

class PurpleItemSectionRenderer {
  PurpleItemSectionRenderer({
    this.contents,
    this.trackingParams,
  });

  final List<FluffyContent> contents;
  final String trackingParams;

  factory PurpleItemSectionRenderer.fromRawJson(String str) =>
      PurpleItemSectionRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleItemSectionRenderer.fromJson(Map<String, dynamic> json) =>
      PurpleItemSectionRenderer(
        contents: json["contents"] == null
            ? null
            : List<FluffyContent>.from(
                json["contents"].map((x) => FluffyContent.fromJson(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "contents": contents == null
            ? null
            : List<dynamic>.from(contents.map((x) => x.toJson())),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class FluffyContent {
  FluffyContent({
    this.playlistVideoListRenderer,
  });

  final PlaylistVideoListRenderer playlistVideoListRenderer;

  factory FluffyContent.fromRawJson(String str) =>
      FluffyContent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyContent.fromJson(Map<String, dynamic> json) => FluffyContent(
        playlistVideoListRenderer: json["playlistVideoListRenderer"] == null
            ? null
            : PlaylistVideoListRenderer.fromJson(
                json["playlistVideoListRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "playlistVideoListRenderer": playlistVideoListRenderer == null
            ? null
            : playlistVideoListRenderer.toJson(),
      };
}

class PlaylistVideoListRenderer {
  PlaylistVideoListRenderer({
    this.contents,
    this.playlistId,
    this.isEditable,
    this.canReorder,
    this.trackingParams,
    this.targetId,
  });

  final List<PlaylistVideoListRendererContent> contents;
  final TId playlistId;
  final dynamic isEditable;
  final dynamic canReorder;
  final String trackingParams;
  final TId targetId;

  factory PlaylistVideoListRenderer.fromRawJson(String str) =>
      PlaylistVideoListRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlaylistVideoListRenderer.fromJson(Map<String, dynamic> json) =>
      PlaylistVideoListRenderer(
        contents: json["contents"] == null
            ? null
            : List<PlaylistVideoListRendererContent>.from(json["contents"]
                .map((x) => PlaylistVideoListRendererContent.fromJson(x))),
        playlistId: json["playlistId"] == null
            ? null
            : tIdValues.map[json["playlistId"]],
        isEditable: json["isEditable"] == null ? null : json["isEditable"],
        canReorder: json["canReorder"] == null ? null : json["canReorder"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        targetId:
            json["targetId"] == null ? null : tIdValues.map[json["targetId"]],
      );

  Map<String, dynamic> toJson() => {
        "contents": contents == null
            ? null
            : List<dynamic>.from(contents.map((x) => x.toJson())),
        "playlistId": playlistId == null ? null : tIdValues.reverse[playlistId],
        "isEditable": isEditable == null ? null : isEditable,
        "canReorder": canReorder == null ? null : canReorder,
        "trackingParams": trackingParams == null ? null : trackingParams,
        "targetId": targetId == null ? null : tIdValues.reverse[targetId],
      };
}

class PlaylistVideoListRendererContent {
  PlaylistVideoListRendererContent({
    this.playlistVideoRenderer,
    this.continuationItemRenderer,
  });

  final ContentPlaylistVideoRenderer playlistVideoRenderer;
  final ContinuationItemRenderer continuationItemRenderer;

  factory PlaylistVideoListRendererContent.fromRawJson(String str) =>
      PlaylistVideoListRendererContent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlaylistVideoListRendererContent.fromJson(
          Map<String, dynamic> json) =>
      PlaylistVideoListRendererContent(
        playlistVideoRenderer: json["playlistVideoRenderer"] == null
            ? null
            : ContentPlaylistVideoRenderer.fromJson(
                json["playlistVideoRenderer"]),
        continuationItemRenderer: json["continuationItemRenderer"] == null
            ? null
            : ContinuationItemRenderer.fromJson(
                json["continuationItemRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "playlistVideoRenderer": playlistVideoRenderer == null
            ? null
            : playlistVideoRenderer.toJson(),
        "continuationItemRenderer": continuationItemRenderer == null
            ? null
            : continuationItemRenderer.toJson(),
      };
}

class ContinuationItemRenderer {
  ContinuationItemRenderer({
    this.trigger,
    this.continuationEndpoint,
  });

  final String trigger;
  final ContinuationEndpoint continuationEndpoint;

  factory ContinuationItemRenderer.fromRawJson(String str) =>
      ContinuationItemRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ContinuationItemRenderer.fromJson(Map<String, dynamic> json) =>
      ContinuationItemRenderer(
        trigger: json["trigger"] == null ? null : json["trigger"],
        continuationEndpoint: json["continuationEndpoint"] == null
            ? null
            : ContinuationEndpoint.fromJson(json["continuationEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "trigger": trigger == null ? null : trigger,
        "continuationEndpoint":
            continuationEndpoint == null ? null : continuationEndpoint.toJson(),
      };
}

class ContinuationEndpoint {
  ContinuationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.continuationCommand,
  });

  final String clickTrackingParams;
  final ContinuationEndpointCommandMetadata commandMetadata;
  final ContinuationCommand continuationCommand;

  factory ContinuationEndpoint.fromRawJson(String str) =>
      ContinuationEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ContinuationEndpoint.fromJson(Map<String, dynamic> json) =>
      ContinuationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : ContinuationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        continuationCommand: json["continuationCommand"] == null
            ? null
            : ContinuationCommand.fromJson(json["continuationCommand"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "continuationCommand":
            continuationCommand == null ? null : continuationCommand.toJson(),
      };
}

class ContinuationEndpointCommandMetadata {
  ContinuationEndpointCommandMetadata({
    this.webCommandMetadata,
  });

  final PurpleWebCommandMetadata webCommandMetadata;

  factory ContinuationEndpointCommandMetadata.fromRawJson(String str) =>
      ContinuationEndpointCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ContinuationEndpointCommandMetadata.fromJson(
          Map<String, dynamic> json) =>
      ContinuationEndpointCommandMetadata(
        webCommandMetadata: json["webCommandMetadata"] == null
            ? null
            : PurpleWebCommandMetadata.fromJson(json["webCommandMetadata"]),
      );

  Map<String, dynamic> toJson() => {
        "webCommandMetadata":
            webCommandMetadata == null ? null : webCommandMetadata.toJson(),
      };
}

class PurpleWebCommandMetadata {
  PurpleWebCommandMetadata({
    this.sendPost,
    this.apiUrl,
  });

  final bool sendPost;
  final ApiUrl apiUrl;

  factory PurpleWebCommandMetadata.fromRawJson(String str) =>
      PurpleWebCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleWebCommandMetadata.fromJson(Map<String, dynamic> json) =>
      PurpleWebCommandMetadata(
        sendPost: json["sendPost"] == null ? null : json["sendPost"],
        apiUrl:
            json["apiUrl"] == null ? null : apiUrlValues.map[json["apiUrl"]],
      );

  Map<String, dynamic> toJson() => {
        "sendPost": sendPost == null ? null : sendPost,
        "apiUrl": apiUrl == null ? null : apiUrlValues.reverse[apiUrl],
      };
}

enum ApiUrl {
  YOUTUBEI_V1_BROWSE,
  YOUTUBEI_V1_SEARCH,
  YOUTUBEI_V1_PLAYLIST_CREATE,
  YOUTUBEI_V1_BROWSE_EDIT_PLAYLIST,
  YOUTUBEI_V1_ACCOUNT_ACCOUNT_MENU
}

final apiUrlValues = EnumValues({
  "/youtubei/v1/account/account_menu": ApiUrl.YOUTUBEI_V1_ACCOUNT_ACCOUNT_MENU,
  "/youtubei/v1/browse": ApiUrl.YOUTUBEI_V1_BROWSE,
  "/youtubei/v1/browse/edit_playlist": ApiUrl.YOUTUBEI_V1_BROWSE_EDIT_PLAYLIST,
  "/youtubei/v1/playlist/create": ApiUrl.YOUTUBEI_V1_PLAYLIST_CREATE,
  "/youtubei/v1/search": ApiUrl.YOUTUBEI_V1_SEARCH
});

class ContinuationCommand {
  ContinuationCommand({
    this.token,
    this.request,
  });

  final String token;
  final String request;

  factory ContinuationCommand.fromRawJson(String str) =>
      ContinuationCommand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ContinuationCommand.fromJson(Map<String, dynamic> json) =>
      ContinuationCommand(
        token: json["token"] == null ? null : json["token"],
        request: json["request"] == null ? null : json["request"],
      );

  Map<String, dynamic> toJson() => {
        "token": token == null ? null : token,
        "request": request == null ? null : request,
      };
}

class ContentPlaylistVideoRenderer {
  ContentPlaylistVideoRenderer({
    this.videoId,
    this.thumbnail,
    this.title,
    this.index,
    this.shortBylineText,
    this.lengthText,
    this.navigationEndpoint,
    this.lengthSeconds,
    this.trackingParams,
    this.isPlayable,
    this.menu,
    this.thumbnailOverlays,
  });

  final String videoId;
  final PurpleThumbnail thumbnail;
  final CollapsedStateButtonTextClass title;
  final IndexClass index;
  final ShortBylineText shortBylineText;
  final LengthTextClass lengthText;
  final PurpleNavigationEndpoint navigationEndpoint;
  final String lengthSeconds;
  final String trackingParams;
  final dynamic isPlayable;
  final PurpleMenu menu;
  final List<PlaylistVideoRendererThumbnailOverlay> thumbnailOverlays;

  factory ContentPlaylistVideoRenderer.fromRawJson(String str) =>
      ContentPlaylistVideoRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ContentPlaylistVideoRenderer.fromJson(Map<String, dynamic> json) =>
      ContentPlaylistVideoRenderer(
        videoId: json["videoId"] == null ? null : json["videoId"],
        thumbnail: json["thumbnail"] == null
            ? null
            : PurpleThumbnail.fromJson(json["thumbnail"]),
        title: json["title"] == null
            ? null
            : CollapsedStateButtonTextClass.fromJson(json["title"]),
        index:
            json["index"] == null ? null : IndexClass.fromJson(json["index"]),
        shortBylineText: json["shortBylineText"] == null
            ? null
            : ShortBylineText.fromJson(json["shortBylineText"]),
        lengthText: json["lengthText"] == null
            ? null
            : LengthTextClass.fromJson(json["lengthText"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : PurpleNavigationEndpoint.fromJson(json["navigationEndpoint"]),
        lengthSeconds:
            json["lengthSeconds"] == null ? null : json["lengthSeconds"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        isPlayable: json["isPlayable"],
        menu: json["menu"] == null ? null : PurpleMenu.fromJson(json["menu"]),
        thumbnailOverlays: json["thumbnailOverlays"] == null
            ? null
            : List<PlaylistVideoRendererThumbnailOverlay>.from(
                json["thumbnailOverlays"].map(
                    (x) => PlaylistVideoRendererThumbnailOverlay.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId == null ? null : videoId,
        "thumbnail": thumbnail == null ? null : thumbnail.toJson(),
        "title": title == null ? null : title.toJson(),
        "index": index == null ? null : index.toJson(),
        "shortBylineText":
            shortBylineText == null ? null : shortBylineText.toJson(),
        "lengthText": lengthText == null ? null : lengthText.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "lengthSeconds": lengthSeconds == null ? null : lengthSeconds,
        "trackingParams": trackingParams == null ? null : trackingParams,
        "isPlayable": isPlayable,
        "menu": menu == null ? null : menu.toJson(),
        "thumbnailOverlays": thumbnailOverlays == null
            ? null
            : List<dynamic>.from(thumbnailOverlays.map((x) => x.toJson())),
      };
}

class IndexClass {
  IndexClass({
    this.simpleText,
  });

  final String simpleText;

  factory IndexClass.fromRawJson(String str) =>
      IndexClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IndexClass.fromJson(Map<String, dynamic> json) => IndexClass(
        simpleText: json["simpleText"] == null ? null : json["simpleText"],
      );

  Map<String, dynamic> toJson() => {
        "simpleText": simpleText == null ? null : simpleText,
      };
}

class LengthTextClass {
  LengthTextClass({
    this.accessibility,
    this.simpleText,
  });

  final AccessibilityData accessibility;
  final String simpleText;

  factory LengthTextClass.fromRawJson(String str) =>
      LengthTextClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LengthTextClass.fromJson(Map<String, dynamic> json) =>
      LengthTextClass(
        accessibility: json["accessibility"] == null
            ? null
            : AccessibilityData.fromJson(json["accessibility"]),
        simpleText: json["simpleText"] == null ? null : json["simpleText"],
      );

  Map<String, dynamic> toJson() => {
        "accessibility": accessibility == null ? null : accessibility.toJson(),
        "simpleText": simpleText == null ? null : simpleText,
      };
}

class AccessibilityData {
  AccessibilityData({
    this.accessibilityData,
  });

  final Accessibility accessibilityData;

  factory AccessibilityData.fromRawJson(String str) =>
      AccessibilityData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AccessibilityData.fromJson(Map<String, dynamic> json) =>
      AccessibilityData(
        accessibilityData: json["accessibilityData"] == null
            ? null
            : Accessibility.fromJson(json["accessibilityData"]),
      );

  Map<String, dynamic> toJson() => {
        "accessibilityData":
            accessibilityData == null ? null : accessibilityData.toJson(),
      };
}

class Accessibility {
  Accessibility({
    this.label,
  });

  final String label;

  factory Accessibility.fromRawJson(String str) =>
      Accessibility.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Accessibility.fromJson(Map<String, dynamic> json) => Accessibility(
        label: json["label"] == null ? null : json["label"],
      );

  Map<String, dynamic> toJson() => {
        "label": label == null ? null : label,
      };
}

class PurpleMenu {
  PurpleMenu({
    this.menuRenderer,
  });

  final PurpleMenuRenderer menuRenderer;

  factory PurpleMenu.fromRawJson(String str) =>
      PurpleMenu.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleMenu.fromJson(Map<String, dynamic> json) => PurpleMenu(
        menuRenderer: json["menuRenderer"] == null
            ? null
            : PurpleMenuRenderer.fromJson(json["menuRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "menuRenderer": menuRenderer == null ? null : menuRenderer.toJson(),
      };
}

class PurpleMenuRenderer {
  PurpleMenuRenderer({
    this.items,
    this.trackingParams,
    this.accessibility,
  });

  final List<PurpleItem> items;
  final String trackingParams;
  final AccessibilityData accessibility;

  factory PurpleMenuRenderer.fromRawJson(String str) =>
      PurpleMenuRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleMenuRenderer.fromJson(Map<String, dynamic> json) =>
      PurpleMenuRenderer(
        items: json["items"] == null
            ? null
            : List<PurpleItem>.from(
                json["items"].map((x) => PurpleItem.fromJson(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        accessibility: json["accessibility"] == null
            ? null
            : AccessibilityData.fromJson(json["accessibility"]),
      );

  Map<String, dynamic> toJson() => {
        "items": items == null
            ? null
            : List<dynamic>.from(items.map((x) => x.toJson())),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "accessibility": accessibility == null ? null : accessibility.toJson(),
      };
}

class PurpleItem {
  PurpleItem({
    this.menuServiceItemRenderer,
  });

  final PurpleMenuServiceItemRenderer menuServiceItemRenderer;

  factory PurpleItem.fromRawJson(String str) =>
      PurpleItem.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleItem.fromJson(Map<String, dynamic> json) => PurpleItem(
        menuServiceItemRenderer: json["menuServiceItemRenderer"] == null
            ? null
            : PurpleMenuServiceItemRenderer.fromJson(
                json["menuServiceItemRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "menuServiceItemRenderer": menuServiceItemRenderer == null
            ? null
            : menuServiceItemRenderer.toJson(),
      };
}

class PurpleMenuServiceItemRenderer {
  PurpleMenuServiceItemRenderer({
    this.text,
    this.icon,
    this.serviceEndpoint,
    this.trackingParams,
  });

  final TextElement text;
  final IconImage icon;
  final PurpleServiceEndpoint serviceEndpoint;
  final String trackingParams;

  factory PurpleMenuServiceItemRenderer.fromRawJson(String str) =>
      PurpleMenuServiceItemRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleMenuServiceItemRenderer.fromJson(Map<String, dynamic> json) =>
      PurpleMenuServiceItemRenderer(
        text: json["text"] == null ? null : TextElement.fromJson(json["text"]),
        icon: json["icon"] == null ? null : IconImage.fromJson(json["icon"]),
        serviceEndpoint: json["serviceEndpoint"] == null
            ? null
            : PurpleServiceEndpoint.fromJson(json["serviceEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text.toJson(),
        "icon": icon == null ? null : icon.toJson(),
        "serviceEndpoint":
            serviceEndpoint == null ? null : serviceEndpoint.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class IconImage {
  IconImage({
    this.iconType,
  });

  final String iconType;

  factory IconImage.fromRawJson(String str) =>
      IconImage.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IconImage.fromJson(Map<String, dynamic> json) => IconImage(
        iconType: json["iconType"] == null ? null : json["iconType"],
      );

  Map<String, dynamic> toJson() => {
        "iconType": iconType == null ? null : iconType,
      };
}

class PurpleServiceEndpoint {
  PurpleServiceEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signalServiceEndpoint,
  });

  final String clickTrackingParams;
  final PurpleCommandMetadata commandMetadata;
  final PurpleSignalServiceEndpoint signalServiceEndpoint;

  factory PurpleServiceEndpoint.fromRawJson(String str) =>
      PurpleServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleServiceEndpoint.fromJson(Map<String, dynamic> json) =>
      PurpleServiceEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : PurpleCommandMetadata.fromJson(json["commandMetadata"]),
        signalServiceEndpoint: json["signalServiceEndpoint"] == null
            ? null
            : PurpleSignalServiceEndpoint.fromJson(
                json["signalServiceEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "signalServiceEndpoint": signalServiceEndpoint == null
            ? null
            : signalServiceEndpoint.toJson(),
      };
}

class PurpleCommandMetadata {
  PurpleCommandMetadata({
    this.webCommandMetadata,
  });

  final FluffyWebCommandMetadata webCommandMetadata;

  factory PurpleCommandMetadata.fromRawJson(String str) =>
      PurpleCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleCommandMetadata.fromJson(Map<String, dynamic> json) =>
      PurpleCommandMetadata(
        webCommandMetadata: json["webCommandMetadata"] == null
            ? null
            : FluffyWebCommandMetadata.fromJson(json["webCommandMetadata"]),
      );

  Map<String, dynamic> toJson() => {
        "webCommandMetadata":
            webCommandMetadata == null ? null : webCommandMetadata.toJson(),
      };
}

class FluffyWebCommandMetadata {
  FluffyWebCommandMetadata({
    this.sendPost,
  });

  final dynamic sendPost;

  factory FluffyWebCommandMetadata.fromRawJson(String str) =>
      FluffyWebCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyWebCommandMetadata.fromJson(Map<String, dynamic> json) =>
      FluffyWebCommandMetadata(
        sendPost: json["sendPost"],
      );

  Map<String, dynamic> toJson() => {
        "sendPost": sendPost,
      };
}

class PurpleSignalServiceEndpoint {
  PurpleSignalServiceEndpoint({
    this.signal,
    this.actions,
  });

  final Signal signal;
  final List<PurpleAction> actions;

  factory PurpleSignalServiceEndpoint.fromRawJson(String str) =>
      PurpleSignalServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleSignalServiceEndpoint.fromJson(Map<String, dynamic> json) =>
      PurpleSignalServiceEndpoint(
        signal:
            json["signal"] == null ? null : signalValues.map[json["signal"]],
        actions: json["actions"] == null
            ? null
            : List<PurpleAction>.from(
                json["actions"].map((x) => PurpleAction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "signal": signal == null ? null : signalValues.reverse[signal],
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toJson())),
      };
}

class PurpleAction {
  PurpleAction({
    this.clickTrackingParams,
    this.addToPlaylistCommand,
  });

  final String clickTrackingParams;
  final PurpleAddToPlaylistCommand addToPlaylistCommand;

  factory PurpleAction.fromRawJson(String str) =>
      PurpleAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleAction.fromJson(Map<String, dynamic> json) => PurpleAction(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        addToPlaylistCommand: json["addToPlaylistCommand"] == null
            ? null
            : PurpleAddToPlaylistCommand.fromJson(json["addToPlaylistCommand"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "addToPlaylistCommand":
            addToPlaylistCommand == null ? null : addToPlaylistCommand.toJson(),
      };
}

class PurpleAddToPlaylistCommand {
  PurpleAddToPlaylistCommand({
    this.openMiniplayer,
    this.videoId,
    this.listType,
    this.onCreateListCommand,
    this.videoIds,
  });

  final dynamic openMiniplayer;
  final String videoId;
  final ListType listType;
  final PurpleOnCreateListCommand onCreateListCommand;
  final List<String> videoIds;

  factory PurpleAddToPlaylistCommand.fromRawJson(String str) =>
      PurpleAddToPlaylistCommand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleAddToPlaylistCommand.fromJson(Map<String, dynamic> json) =>
      PurpleAddToPlaylistCommand(
        openMiniplayer: json["openMiniplayer"],
        videoId: json["videoId"] == null ? null : json["videoId"],
        listType: json["listType"] == null
            ? null
            : listTypeValues.map[json["listType"]],
        onCreateListCommand: json["onCreateListCommand"] == null
            ? null
            : PurpleOnCreateListCommand.fromJson(json["onCreateListCommand"]),
        videoIds: json["videoIds"] == null
            ? null
            : List<String>.from(json["videoIds"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "openMiniplayer": openMiniplayer,
        "videoId": videoId == null ? null : videoId,
        "listType": listType == null ? null : listTypeValues.reverse[listType],
        "onCreateListCommand":
            onCreateListCommand == null ? null : onCreateListCommand.toJson(),
        "videoIds": videoIds == null
            ? null
            : List<dynamic>.from(videoIds.map((x) => x)),
      };
}

enum ListType { PLAYLIST_EDIT_LIST_TYPE_QUEUE }

final listTypeValues = EnumValues(
    {"PLAYLIST_EDIT_LIST_TYPE_QUEUE": ListType.PLAYLIST_EDIT_LIST_TYPE_QUEUE});

class PurpleOnCreateListCommand {
  PurpleOnCreateListCommand({
    this.clickTrackingParams,
    this.commandMetadata,
    this.createPlaylistServiceEndpoint,
  });

  final String clickTrackingParams;
  final FluffyCommandMetadata commandMetadata;
  final CreatePlaylistServiceEndpoint createPlaylistServiceEndpoint;

  factory PurpleOnCreateListCommand.fromRawJson(String str) =>
      PurpleOnCreateListCommand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleOnCreateListCommand.fromJson(Map<String, dynamic> json) =>
      PurpleOnCreateListCommand(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : FluffyCommandMetadata.fromJson(json["commandMetadata"]),
        createPlaylistServiceEndpoint:
            json["createPlaylistServiceEndpoint"] == null
                ? null
                : CreatePlaylistServiceEndpoint.fromJson(
                    json["createPlaylistServiceEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "createPlaylistServiceEndpoint": createPlaylistServiceEndpoint == null
            ? null
            : createPlaylistServiceEndpoint.toJson(),
      };
}

class FluffyCommandMetadata {
  FluffyCommandMetadata({
    this.webCommandMetadata,
  });

  final TentacledWebCommandMetadata webCommandMetadata;

  factory FluffyCommandMetadata.fromRawJson(String str) =>
      FluffyCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyCommandMetadata.fromJson(Map<String, dynamic> json) =>
      FluffyCommandMetadata(
        webCommandMetadata: json["webCommandMetadata"] == null
            ? null
            : TentacledWebCommandMetadata.fromJson(json["webCommandMetadata"]),
      );

  Map<String, dynamic> toJson() => {
        "webCommandMetadata":
            webCommandMetadata == null ? null : webCommandMetadata.toJson(),
      };
}

class TentacledWebCommandMetadata {
  TentacledWebCommandMetadata({
    this.sendPost,
    this.apiUrl,
  });

  final dynamic sendPost;
  final ApiUrl apiUrl;

  factory TentacledWebCommandMetadata.fromRawJson(String str) =>
      TentacledWebCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledWebCommandMetadata.fromJson(Map<String, dynamic> json) =>
      TentacledWebCommandMetadata(
        sendPost: json["sendPost"],
        apiUrl:
            json["apiUrl"] == null ? null : apiUrlValues.map[json["apiUrl"]],
      );

  Map<String, dynamic> toJson() => {
        "sendPost": sendPost,
        "apiUrl": apiUrl == null ? null : apiUrlValues.reverse[apiUrl],
      };
}

class CreatePlaylistServiceEndpoint {
  CreatePlaylistServiceEndpoint({
    this.videoIds,
    this.params,
  });

  final List<String> videoIds;
  final CreatePlaylistServiceEndpointParams params;

  factory CreatePlaylistServiceEndpoint.fromRawJson(String str) =>
      CreatePlaylistServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CreatePlaylistServiceEndpoint.fromJson(Map<String, dynamic> json) =>
      CreatePlaylistServiceEndpoint(
        videoIds: json["videoIds"] == null
            ? null
            : List<String>.from(json["videoIds"].map((x) => x)),
        params: json["params"] == null
            ? null
            : createPlaylistServiceEndpointParamsValues.map[json["params"]],
      );

  Map<String, dynamic> toJson() => {
        "videoIds": videoIds == null
            ? null
            : List<dynamic>.from(videoIds.map((x) => x)),
        "params": params == null
            ? null
            : createPlaylistServiceEndpointParamsValues.reverse[params],
      };
}

enum CreatePlaylistServiceEndpointParams { CAQ_3_D }

final createPlaylistServiceEndpointParamsValues =
    EnumValues({"CAQ%3D": CreatePlaylistServiceEndpointParams.CAQ_3_D});

enum Signal { CLIENT_SIGNAL }

final signalValues = EnumValues({"CLIENT_SIGNAL": Signal.CLIENT_SIGNAL});

class TextElement {
  TextElement({
    this.runs,
  });

  final List<TextRun> runs;

  factory TextElement.fromRawJson(String str) =>
      TextElement.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TextElement.fromJson(Map<String, dynamic> json) => TextElement(
        runs: json["runs"] == null
            ? null
            : List<TextRun>.from(json["runs"].map((x) => TextRun.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "runs": runs == null
            ? null
            : List<dynamic>.from(runs.map((x) => x.toJson())),
      };
}

class TextRun {
  TextRun({
    this.text,
  });

  final String text;

  factory TextRun.fromRawJson(String str) => TextRun.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TextRun.fromJson(Map<String, dynamic> json) => TextRun(
        text: json["text"] == null ? null : json["text"],
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text,
      };
}

class PurpleNavigationEndpoint {
  PurpleNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.watchEndpoint,
  });

  final String clickTrackingParams;
  final TentacledCommandMetadata commandMetadata;
  final PurpleWatchEndpoint watchEndpoint;

  factory PurpleNavigationEndpoint.fromRawJson(String str) =>
      PurpleNavigationEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleNavigationEndpoint.fromJson(Map<String, dynamic> json) =>
      PurpleNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : TentacledCommandMetadata.fromJson(json["commandMetadata"]),
        watchEndpoint: json["watchEndpoint"] == null
            ? null
            : PurpleWatchEndpoint.fromJson(json["watchEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "watchEndpoint": watchEndpoint == null ? null : watchEndpoint.toJson(),
      };
}

class TentacledCommandMetadata {
  TentacledCommandMetadata({
    this.webCommandMetadata,
  });

  final StickyWebCommandMetadata webCommandMetadata;

  factory TentacledCommandMetadata.fromRawJson(String str) =>
      TentacledCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledCommandMetadata.fromJson(Map<String, dynamic> json) =>
      TentacledCommandMetadata(
        webCommandMetadata: json["webCommandMetadata"] == null
            ? null
            : StickyWebCommandMetadata.fromJson(json["webCommandMetadata"]),
      );

  Map<String, dynamic> toJson() => {
        "webCommandMetadata":
            webCommandMetadata == null ? null : webCommandMetadata.toJson(),
      };
}

class StickyWebCommandMetadata {
  StickyWebCommandMetadata({
    this.url,
    this.webPageType,
    this.rootVe,
    this.apiUrl,
  });

  final String url;
  final WebPageType webPageType;
  final dynamic rootVe;
  final ApiUrl apiUrl;

  factory StickyWebCommandMetadata.fromRawJson(String str) =>
      StickyWebCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StickyWebCommandMetadata.fromJson(Map<String, dynamic> json) =>
      StickyWebCommandMetadata(
        url: json["url"] == null ? null : json["url"],
        webPageType: json["webPageType"] == null
            ? null
            : webPageTypeValues.map[json["webPageType"]],
        rootVe: json["rootVe"],
        apiUrl:
            json["apiUrl"] == null ? null : apiUrlValues.map[json["apiUrl"]],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "webPageType":
            webPageType == null ? null : webPageTypeValues.reverse[webPageType],
        "rootVe": rootVe,
        "apiUrl": apiUrl == null ? null : apiUrlValues.reverse[apiUrl],
      };
}

enum WebPageType {
  WEB_PAGE_TYPE_WATCH,
  WEB_PAGE_TYPE_CHANNEL,
  WEB_PAGE_TYPE_UNKNOWN,
  WEB_PAGE_TYPE_SEARCH,
  WEB_PAGE_TYPE_PLAYLIST,
  WEB_PAGE_TYPE_BROWSE
}

final webPageTypeValues = EnumValues({
  "WEB_PAGE_TYPE_BROWSE": WebPageType.WEB_PAGE_TYPE_BROWSE,
  "WEB_PAGE_TYPE_CHANNEL": WebPageType.WEB_PAGE_TYPE_CHANNEL,
  "WEB_PAGE_TYPE_PLAYLIST": WebPageType.WEB_PAGE_TYPE_PLAYLIST,
  "WEB_PAGE_TYPE_SEARCH": WebPageType.WEB_PAGE_TYPE_SEARCH,
  "WEB_PAGE_TYPE_UNKNOWN": WebPageType.WEB_PAGE_TYPE_UNKNOWN,
  "WEB_PAGE_TYPE_WATCH": WebPageType.WEB_PAGE_TYPE_WATCH
});

class PurpleWatchEndpoint {
  PurpleWatchEndpoint({
    this.videoId,
    this.playlistId,
    this.index,
    this.params,
    this.continuePlayback,
  });

  final String videoId;
  final TId playlistId;
  final dynamic index;
  final WatchEndpointParams params;
  final bool continuePlayback;

  factory PurpleWatchEndpoint.fromRawJson(String str) =>
      PurpleWatchEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleWatchEndpoint.fromJson(Map<String, dynamic> json) =>
      PurpleWatchEndpoint(
        videoId: json["videoId"] == null ? null : json["videoId"],
        playlistId: json["playlistId"] == null
            ? null
            : tIdValues.map[json["playlistId"]],
        index: json["index"],
        params: json["params"] == null
            ? null
            : watchEndpointParamsValues.map[json["params"]],
        continuePlayback:
            json["continuePlayback"] == null ? null : json["continuePlayback"],
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId == null ? null : videoId,
        "playlistId": playlistId == null ? null : tIdValues.reverse[playlistId],
        "index": index,
        "params":
            params == null ? null : watchEndpointParamsValues.reverse[params],
        "continuePlayback": continuePlayback == null ? null : continuePlayback,
      };
}

enum WatchEndpointParams { OAI_3_D, OALAAQE_3_D, W_AEB, CNIIICI_3_D }

final watchEndpointParamsValues = EnumValues({
  "CNIIICI%3D": WatchEndpointParams.CNIIICI_3_D,
  "OAI%3D": WatchEndpointParams.OAI_3_D,
  "OALAAQE%3D": WatchEndpointParams.OALAAQE_3_D,
  "wAEB": WatchEndpointParams.W_AEB
});

enum TId {
  PL601_B2_E69_B03_FAB9_D,
  RDCLAK5_UY_LF8_OKGL2_YG_D075_NHN_J_VJLFHWP8_NS_UG_EBS,
  PL_WW_AYP_AC_F_RG_K_FLXT_LBN_U14_ZDDT_D_JJ3_MK,
  R_DVIIMF_QI_P_UW,
  PLFCT764_0_AP1_OD_ZK_XFE5_XD_RHRXJK_S20,
  PLC4_L2_EU8_H0_TJ5_KLTL3_WNX_FZ_TK_K76_K6_L_K
}

final tIdValues = EnumValues({
  "PL601B2E69B03FAB9D": TId.PL601_B2_E69_B03_FAB9_D,
  "PLC4L2eu8_h0tj5Kltl3wnxFZTkK76k6lK":
      TId.PLC4_L2_EU8_H0_TJ5_KLTL3_WNX_FZ_TK_K76_K6_L_K,
  "PLFCT764_-0ap1odZkXfe5XdRhrxjk-s20":
      TId.PLFCT764_0_AP1_OD_ZK_XFE5_XD_RHRXJK_S20,
  "PLWwAypAcFRgKFlxtLbn_u14zddtDJj3mk":
      TId.PL_WW_AYP_AC_F_RG_K_FLXT_LBN_U14_ZDDT_D_JJ3_MK,
  "RDCLAK5uy_lf8okgl2ygD075nhnJVjlfhwp8NsUgEbs":
      TId.RDCLAK5_UY_LF8_OKGL2_YG_D075_NHN_J_VJLFHWP8_NS_UG_EBS,
  "RDviimfQi_pUw": TId.R_DVIIMF_QI_P_UW
});

class ShortBylineText {
  ShortBylineText({
    this.runs,
  });

  final List<PurpleRun> runs;

  factory ShortBylineText.fromRawJson(String str) =>
      ShortBylineText.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ShortBylineText.fromJson(Map<String, dynamic> json) =>
      ShortBylineText(
        runs: json["runs"] == null
            ? null
            : List<PurpleRun>.from(
                json["runs"].map((x) => PurpleRun.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "runs": runs == null
            ? null
            : List<dynamic>.from(runs.map((x) => x.toJson())),
      };
}

class PurpleRun {
  PurpleRun({
    this.text,
    this.navigationEndpoint,
  });

  final String text;
  final FluffyNavigationEndpoint navigationEndpoint;

  factory PurpleRun.fromRawJson(String str) =>
      PurpleRun.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleRun.fromJson(Map<String, dynamic> json) => PurpleRun(
        text: json["text"] == null ? null : json["text"],
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : FluffyNavigationEndpoint.fromJson(json["navigationEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text,
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
      };
}

class FluffyNavigationEndpoint {
  FluffyNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.browseEndpoint,
  });

  final String clickTrackingParams;
  final TentacledCommandMetadata commandMetadata;
  final PurpleBrowseEndpoint browseEndpoint;

  factory FluffyNavigationEndpoint.fromRawJson(String str) =>
      FluffyNavigationEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyNavigationEndpoint.fromJson(Map<String, dynamic> json) =>
      FluffyNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : TentacledCommandMetadata.fromJson(json["commandMetadata"]),
        browseEndpoint: json["browseEndpoint"] == null
            ? null
            : PurpleBrowseEndpoint.fromJson(json["browseEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "browseEndpoint":
            browseEndpoint == null ? null : browseEndpoint.toJson(),
      };
}

class PurpleBrowseEndpoint {
  PurpleBrowseEndpoint({
    this.browseId,
    this.canonicalBaseUrl,
  });

  final String browseId;
  final String canonicalBaseUrl;

  factory PurpleBrowseEndpoint.fromRawJson(String str) =>
      PurpleBrowseEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleBrowseEndpoint.fromJson(Map<String, dynamic> json) =>
      PurpleBrowseEndpoint(
        browseId: json["browseId"] == null ? null : json["browseId"],
        canonicalBaseUrl:
            json["canonicalBaseUrl"] == null ? null : json["canonicalBaseUrl"],
      );

  Map<String, dynamic> toJson() => {
        "browseId": browseId == null ? null : browseId,
        "canonicalBaseUrl": canonicalBaseUrl == null ? null : canonicalBaseUrl,
      };
}

class PurpleThumbnail {
  PurpleThumbnail({
    this.thumbnails,
  });

  final List<FluffyThumbnail> thumbnails;

  factory PurpleThumbnail.fromRawJson(String str) =>
      PurpleThumbnail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleThumbnail.fromJson(Map<String, dynamic> json) =>
      PurpleThumbnail(
        thumbnails: json["thumbnails"] == null
            ? null
            : List<FluffyThumbnail>.from(
                json["thumbnails"].map((x) => FluffyThumbnail.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "thumbnails": thumbnails == null
            ? null
            : List<dynamic>.from(thumbnails.map((x) => x.toJson())),
      };
}

class FluffyThumbnail {
  FluffyThumbnail({
    this.url,
    this.width,
    this.height,
  });

  final String url;
  final dynamic width;
  final dynamic height;

  factory FluffyThumbnail.fromRawJson(String str) =>
      FluffyThumbnail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyThumbnail.fromJson(Map<String, dynamic> json) =>
      FluffyThumbnail(
        url: json["url"] == null ? null : json["url"],
        width: json["width"],
        height: json["height"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "width": width,
        "height": height,
      };
}

class PlaylistVideoRendererThumbnailOverlay {
  PlaylistVideoRendererThumbnailOverlay({
    this.thumbnailOverlayTimeStatusRenderer,
    this.thumbnailOverlayNowPlayingRenderer,
  });

  final ThumbnailOverlayTimeStatusRenderer thumbnailOverlayTimeStatusRenderer;
  final ThumbnailOverlayNowPlayingRenderer thumbnailOverlayNowPlayingRenderer;

  factory PlaylistVideoRendererThumbnailOverlay.fromRawJson(String str) =>
      PlaylistVideoRendererThumbnailOverlay.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlaylistVideoRendererThumbnailOverlay.fromJson(
          Map<String, dynamic> json) =>
      PlaylistVideoRendererThumbnailOverlay(
        thumbnailOverlayTimeStatusRenderer:
            json["thumbnailOverlayTimeStatusRenderer"] == null
                ? null
                : ThumbnailOverlayTimeStatusRenderer.fromJson(
                    json["thumbnailOverlayTimeStatusRenderer"]),
        thumbnailOverlayNowPlayingRenderer:
            json["thumbnailOverlayNowPlayingRenderer"] == null
                ? null
                : ThumbnailOverlayNowPlayingRenderer.fromJson(
                    json["thumbnailOverlayNowPlayingRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "thumbnailOverlayTimeStatusRenderer":
            thumbnailOverlayTimeStatusRenderer == null
                ? null
                : thumbnailOverlayTimeStatusRenderer.toJson(),
        "thumbnailOverlayNowPlayingRenderer":
            thumbnailOverlayNowPlayingRenderer == null
                ? null
                : thumbnailOverlayNowPlayingRenderer.toJson(),
      };
}

class ThumbnailOverlayNowPlayingRenderer {
  ThumbnailOverlayNowPlayingRenderer({
    this.text,
  });

  final TextElement text;

  factory ThumbnailOverlayNowPlayingRenderer.fromRawJson(String str) =>
      ThumbnailOverlayNowPlayingRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ThumbnailOverlayNowPlayingRenderer.fromJson(
          Map<String, dynamic> json) =>
      ThumbnailOverlayNowPlayingRenderer(
        text: json["text"] == null ? null : TextElement.fromJson(json["text"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text.toJson(),
      };
}

class ThumbnailOverlayTimeStatusRenderer {
  ThumbnailOverlayTimeStatusRenderer({
    this.text,
    this.style,
  });

  final LengthTextClass text;
  final ThumbnailOverlayTimeStatusRendererStyle style;

  factory ThumbnailOverlayTimeStatusRenderer.fromRawJson(String str) =>
      ThumbnailOverlayTimeStatusRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ThumbnailOverlayTimeStatusRenderer.fromJson(
          Map<String, dynamic> json) =>
      ThumbnailOverlayTimeStatusRenderer(
        text: json["text"] == null
            ? null
            : LengthTextClass.fromJson(json["text"]),
        style: json["style"] == null
            ? null
            : thumbnailOverlayTimeStatusRendererStyleValues.map[json["style"]],
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text.toJson(),
        "style": style == null
            ? null
            : thumbnailOverlayTimeStatusRendererStyleValues.reverse[style],
      };
}

enum ThumbnailOverlayTimeStatusRendererStyle { DEFAULT }

final thumbnailOverlayTimeStatusRendererStyleValues =
    EnumValues({"DEFAULT": ThumbnailOverlayTimeStatusRendererStyle.DEFAULT});

class CollapsedStateButtonTextClass {
  CollapsedStateButtonTextClass({
    this.runs,
    this.accessibility,
  });

  final List<TextRun> runs;
  final AccessibilityData accessibility;

  factory CollapsedStateButtonTextClass.fromRawJson(String str) =>
      CollapsedStateButtonTextClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CollapsedStateButtonTextClass.fromJson(Map<String, dynamic> json) =>
      CollapsedStateButtonTextClass(
        runs: json["runs"] == null
            ? null
            : List<TextRun>.from(json["runs"].map((x) => TextRun.fromJson(x))),
        accessibility: json["accessibility"] == null
            ? null
            : AccessibilityData.fromJson(json["accessibility"]),
      );

  Map<String, dynamic> toJson() => {
        "runs": runs == null
            ? null
            : List<dynamic>.from(runs.map((x) => x.toJson())),
        "accessibility": accessibility == null ? null : accessibility.toJson(),
      };
}

class TwoColumnSearchResultsRenderer {
  TwoColumnSearchResultsRenderer({
    this.primaryContents,
  });

  final PrimaryContents primaryContents;

  factory TwoColumnSearchResultsRenderer.fromRawJson(String str) =>
      TwoColumnSearchResultsRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TwoColumnSearchResultsRenderer.fromJson(Map<String, dynamic> json) =>
      TwoColumnSearchResultsRenderer(
        primaryContents: json["primaryContents"] == null
            ? null
            : PrimaryContents.fromJson(json["primaryContents"]),
      );

  Map<String, dynamic> toJson() => {
        "primaryContents":
            primaryContents == null ? null : primaryContents.toJson(),
      };
}

class PrimaryContents {
  PrimaryContents({
    this.sectionListRenderer,
  });

  final PrimaryContentsSectionListRenderer sectionListRenderer;

  factory PrimaryContents.fromRawJson(String str) =>
      PrimaryContents.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PrimaryContents.fromJson(Map<String, dynamic> json) =>
      PrimaryContents(
        sectionListRenderer: json["sectionListRenderer"] == null
            ? null
            : PrimaryContentsSectionListRenderer.fromJson(
                json["sectionListRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "sectionListRenderer":
            sectionListRenderer == null ? null : sectionListRenderer.toJson(),
      };
}

class PrimaryContentsSectionListRenderer {
  PrimaryContentsSectionListRenderer({
    this.contents,
    this.trackingParams,
    this.subMenu,
    this.hideBottomSeparator,
    this.targetId,
  });

  final List<TentacledContent> contents;
  final String trackingParams;
  final SubMenu subMenu;
  final bool hideBottomSeparator;
  final String targetId;

  factory PrimaryContentsSectionListRenderer.fromRawJson(String str) =>
      PrimaryContentsSectionListRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PrimaryContentsSectionListRenderer.fromJson(
          Map<String, dynamic> json) =>
      PrimaryContentsSectionListRenderer(
        contents: json["contents"] == null
            ? null
            : List<TentacledContent>.from(
                json["contents"].map((x) => TentacledContent.fromJson(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        subMenu:
            json["subMenu"] == null ? null : SubMenu.fromJson(json["subMenu"]),
        hideBottomSeparator: json["hideBottomSeparator"] == null
            ? null
            : json["hideBottomSeparator"],
        targetId: json["targetId"] == null ? null : json["targetId"],
      );

  Map<String, dynamic> toJson() => {
        "contents": contents == null
            ? null
            : List<dynamic>.from(contents.map((x) => x.toJson())),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "subMenu": subMenu == null ? null : subMenu.toJson(),
        "hideBottomSeparator":
            hideBottomSeparator == null ? null : hideBottomSeparator,
        "targetId": targetId == null ? null : targetId,
      };
}

class TentacledContent {
  TentacledContent({
    this.itemSectionRenderer,
    this.continuationItemRenderer,
  });

  final FluffyItemSectionRenderer itemSectionRenderer;
  final ContinuationItemRenderer continuationItemRenderer;

  factory TentacledContent.fromRawJson(String str) =>
      TentacledContent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledContent.fromJson(Map<String, dynamic> json) =>
      TentacledContent(
        itemSectionRenderer: json["itemSectionRenderer"] == null
            ? null
            : FluffyItemSectionRenderer.fromJson(json["itemSectionRenderer"]),
        continuationItemRenderer: json["continuationItemRenderer"] == null
            ? null
            : ContinuationItemRenderer.fromJson(
                json["continuationItemRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "itemSectionRenderer":
            itemSectionRenderer == null ? null : itemSectionRenderer.toJson(),
        "continuationItemRenderer": continuationItemRenderer == null
            ? null
            : continuationItemRenderer.toJson(),
      };
}

class FluffyItemSectionRenderer {
  FluffyItemSectionRenderer({
    this.contents,
    this.trackingParams,
  });

  final List<StickyContent> contents;
  final String trackingParams;

  factory FluffyItemSectionRenderer.fromRawJson(String str) =>
      FluffyItemSectionRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyItemSectionRenderer.fromJson(Map<String, dynamic> json) =>
      FluffyItemSectionRenderer(
        contents: json["contents"] == null
            ? null
            : List<StickyContent>.from(
                json["contents"].map((x) => StickyContent.fromJson(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "contents": contents == null
            ? null
            : List<dynamic>.from(contents.map((x) => x.toJson())),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class StickyContent {
  StickyContent({
    this.showingResultsForRenderer,
    this.videoRenderer,
    this.radioRenderer,
    this.channelRenderer,
    this.horizontalCardListRenderer,
    this.shelfRenderer,
  });

  final ShowingResultsForRenderer showingResultsForRenderer;
  final ContentVideoRenderer videoRenderer;
  final RadioRenderer radioRenderer;
  final ChannelRenderer channelRenderer;
  final HorizontalCardListRenderer horizontalCardListRenderer;
  final ShelfRenderer shelfRenderer;

  factory StickyContent.fromRawJson(String str) =>
      StickyContent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StickyContent.fromJson(Map<String, dynamic> json) => StickyContent(
        showingResultsForRenderer: json["showingResultsForRenderer"] == null
            ? null
            : ShowingResultsForRenderer.fromJson(
                json["showingResultsForRenderer"]),
        videoRenderer: json["videoRenderer"] == null
            ? null
            : ContentVideoRenderer.fromJson(json["videoRenderer"]),
        radioRenderer: json["radioRenderer"] == null
            ? null
            : RadioRenderer.fromJson(json["radioRenderer"]),
        channelRenderer: json["channelRenderer"] == null
            ? null
            : ChannelRenderer.fromJson(json["channelRenderer"]),
        horizontalCardListRenderer: json["horizontalCardListRenderer"] == null
            ? null
            : HorizontalCardListRenderer.fromJson(
                json["horizontalCardListRenderer"]),
        shelfRenderer: json["shelfRenderer"] == null
            ? null
            : ShelfRenderer.fromJson(json["shelfRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "showingResultsForRenderer": showingResultsForRenderer == null
            ? null
            : showingResultsForRenderer.toJson(),
        "videoRenderer": videoRenderer == null ? null : videoRenderer.toJson(),
        "radioRenderer": radioRenderer == null ? null : radioRenderer.toJson(),
        "channelRenderer":
            channelRenderer == null ? null : channelRenderer.toJson(),
        "horizontalCardListRenderer": horizontalCardListRenderer == null
            ? null
            : horizontalCardListRenderer.toJson(),
        "shelfRenderer": shelfRenderer == null ? null : shelfRenderer.toJson(),
      };
}

class ChannelRenderer {
  ChannelRenderer({
    this.channelId,
    this.title,
    this.navigationEndpoint,
    this.thumbnail,
    this.shortBylineText,
    this.videoCountText,
    this.subscriptionButton,
    this.ownerBadges,
    this.subscriberCountText,
    this.subscribeButton,
    this.trackingParams,
    this.longBylineText,
  });

  final String channelId;
  final IndexClass title;
  final ChannelRendererNavigationEndpoint navigationEndpoint;
  final ChannelRendererThumbnail thumbnail;
  final OwnerTextClass shortBylineText;
  final TextElement videoCountText;
  final SubscriptionButton subscriptionButton;
  final List<OwnerBadgeElement> ownerBadges;
  final IndexClass subscriberCountText;
  final A11YSkipNavigationButtonClass subscribeButton;
  final String trackingParams;
  final OwnerTextClass longBylineText;

  factory ChannelRenderer.fromRawJson(String str) =>
      ChannelRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChannelRenderer.fromJson(Map<String, dynamic> json) =>
      ChannelRenderer(
        channelId: json["channelId"] == null ? null : json["channelId"],
        title:
            json["title"] == null ? null : IndexClass.fromJson(json["title"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : ChannelRendererNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
        thumbnail: json["thumbnail"] == null
            ? null
            : ChannelRendererThumbnail.fromJson(json["thumbnail"]),
        shortBylineText: json["shortBylineText"] == null
            ? null
            : OwnerTextClass.fromJson(json["shortBylineText"]),
        videoCountText: json["videoCountText"] == null
            ? null
            : TextElement.fromJson(json["videoCountText"]),
        subscriptionButton: json["subscriptionButton"] == null
            ? null
            : SubscriptionButton.fromJson(json["subscriptionButton"]),
        ownerBadges: json["ownerBadges"] == null
            ? null
            : List<OwnerBadgeElement>.from(
                json["ownerBadges"].map((x) => OwnerBadgeElement.fromJson(x))),
        subscriberCountText: json["subscriberCountText"] == null
            ? null
            : IndexClass.fromJson(json["subscriberCountText"]),
        subscribeButton: json["subscribeButton"] == null
            ? null
            : A11YSkipNavigationButtonClass.fromJson(json["subscribeButton"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        longBylineText: json["longBylineText"] == null
            ? null
            : OwnerTextClass.fromJson(json["longBylineText"]),
      );

  Map<String, dynamic> toJson() => {
        "channelId": channelId == null ? null : channelId,
        "title": title == null ? null : title.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "thumbnail": thumbnail == null ? null : thumbnail.toJson(),
        "shortBylineText":
            shortBylineText == null ? null : shortBylineText.toJson(),
        "videoCountText":
            videoCountText == null ? null : videoCountText.toJson(),
        "subscriptionButton":
            subscriptionButton == null ? null : subscriptionButton.toJson(),
        "ownerBadges": ownerBadges == null
            ? null
            : List<dynamic>.from(ownerBadges.map((x) => x.toJson())),
        "subscriberCountText":
            subscriberCountText == null ? null : subscriberCountText.toJson(),
        "subscribeButton":
            subscribeButton == null ? null : subscribeButton.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "longBylineText":
            longBylineText == null ? null : longBylineText.toJson(),
      };
}

class OwnerTextClass {
  OwnerTextClass({
    this.runs,
  });

  final List<OwnerTextRun> runs;

  factory OwnerTextClass.fromRawJson(String str) =>
      OwnerTextClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OwnerTextClass.fromJson(Map<String, dynamic> json) => OwnerTextClass(
        runs: json["runs"] == null
            ? null
            : List<OwnerTextRun>.from(
                json["runs"].map((x) => OwnerTextRun.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "runs": runs == null
            ? null
            : List<dynamic>.from(runs.map((x) => x.toJson())),
      };
}

class OwnerTextRun {
  OwnerTextRun({
    this.text,
    this.navigationEndpoint,
  });

  final String text;
  final ChannelRendererNavigationEndpoint navigationEndpoint;

  factory OwnerTextRun.fromRawJson(String str) =>
      OwnerTextRun.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OwnerTextRun.fromJson(Map<String, dynamic> json) => OwnerTextRun(
        text: json["text"] == null ? null : json["text"],
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : ChannelRendererNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text,
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
      };
}

class ChannelRendererNavigationEndpoint {
  ChannelRendererNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.browseEndpoint,
  });

  final String clickTrackingParams;
  final SearchEndpointCommandMetadata commandMetadata;
  final PurpleBrowseEndpoint browseEndpoint;

  factory ChannelRendererNavigationEndpoint.fromRawJson(String str) =>
      ChannelRendererNavigationEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChannelRendererNavigationEndpoint.fromJson(
          Map<String, dynamic> json) =>
      ChannelRendererNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : SearchEndpointCommandMetadata.fromJson(json["commandMetadata"]),
        browseEndpoint: json["browseEndpoint"] == null
            ? null
            : PurpleBrowseEndpoint.fromJson(json["browseEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "browseEndpoint":
            browseEndpoint == null ? null : browseEndpoint.toJson(),
      };
}

class SearchEndpointCommandMetadata {
  SearchEndpointCommandMetadata({
    this.webCommandMetadata,
  });

  final IndigoWebCommandMetadata webCommandMetadata;

  factory SearchEndpointCommandMetadata.fromRawJson(String str) =>
      SearchEndpointCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SearchEndpointCommandMetadata.fromJson(Map<String, dynamic> json) =>
      SearchEndpointCommandMetadata(
        webCommandMetadata: json["webCommandMetadata"] == null
            ? null
            : IndigoWebCommandMetadata.fromJson(json["webCommandMetadata"]),
      );

  Map<String, dynamic> toJson() => {
        "webCommandMetadata":
            webCommandMetadata == null ? null : webCommandMetadata.toJson(),
      };
}

class IndigoWebCommandMetadata {
  IndigoWebCommandMetadata({
    this.url,
    this.webPageType,
    this.rootVe,
    this.apiUrl,
  });

  final String url;
  final WebPageType webPageType;
  final int rootVe;
  final ApiUrl apiUrl;

  factory IndigoWebCommandMetadata.fromRawJson(String str) =>
      IndigoWebCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IndigoWebCommandMetadata.fromJson(Map<String, dynamic> json) =>
      IndigoWebCommandMetadata(
        url: json["url"] == null ? null : json["url"],
        webPageType: json["webPageType"] == null
            ? null
            : webPageTypeValues.map[json["webPageType"]],
        rootVe: json["rootVe"] == null ? null : json["rootVe"],
        apiUrl:
            json["apiUrl"] == null ? null : apiUrlValues.map[json["apiUrl"]],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "webPageType":
            webPageType == null ? null : webPageTypeValues.reverse[webPageType],
        "rootVe": rootVe == null ? null : rootVe,
        "apiUrl": apiUrl == null ? null : apiUrlValues.reverse[apiUrl],
      };
}

class OwnerBadgeElement {
  OwnerBadgeElement({
    this.metadataBadgeRenderer,
  });

  final OwnerBadgeMetadataBadgeRenderer metadataBadgeRenderer;

  factory OwnerBadgeElement.fromRawJson(String str) =>
      OwnerBadgeElement.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OwnerBadgeElement.fromJson(Map<String, dynamic> json) =>
      OwnerBadgeElement(
        metadataBadgeRenderer: json["metadataBadgeRenderer"] == null
            ? null
            : OwnerBadgeMetadataBadgeRenderer.fromJson(
                json["metadataBadgeRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "metadataBadgeRenderer": metadataBadgeRenderer == null
            ? null
            : metadataBadgeRenderer.toJson(),
      };
}

class OwnerBadgeMetadataBadgeRenderer {
  OwnerBadgeMetadataBadgeRenderer({
    this.icon,
    this.style,
    this.tooltip,
    this.trackingParams,
    this.label,
  });

  final IconImage icon;
  final MetadataBadgeRendererStyle style;
  final Tooltip tooltip;
  final String trackingParams;
  final String label;

  factory OwnerBadgeMetadataBadgeRenderer.fromRawJson(String str) =>
      OwnerBadgeMetadataBadgeRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OwnerBadgeMetadataBadgeRenderer.fromJson(Map<String, dynamic> json) =>
      OwnerBadgeMetadataBadgeRenderer(
        icon: json["icon"] == null ? null : IconImage.fromJson(json["icon"]),
        style: json["style"] == null
            ? null
            : metadataBadgeRendererStyleValues.map[json["style"]],
        tooltip:
            json["tooltip"] == null ? null : tooltipValues.map[json["tooltip"]],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        label: json["label"] == null ? null : json["label"],
      );

  Map<String, dynamic> toJson() => {
        "icon": icon == null ? null : icon.toJson(),
        "style": style == null
            ? null
            : metadataBadgeRendererStyleValues.reverse[style],
        "tooltip": tooltip == null ? null : tooltipValues.reverse[tooltip],
        "trackingParams": trackingParams == null ? null : trackingParams,
        "label": label == null ? null : label,
      };
}

enum MetadataBadgeRendererStyle {
  BADGE_STYLE_TYPE_VERIFIED_ARTIST,
  BADGE_STYLE_TYPE_VERIFIED,
  BADGE_STYLE_TYPE_SIMPLE
}

final metadataBadgeRendererStyleValues = EnumValues({
  "BADGE_STYLE_TYPE_SIMPLE": MetadataBadgeRendererStyle.BADGE_STYLE_TYPE_SIMPLE,
  "BADGE_STYLE_TYPE_VERIFIED":
      MetadataBadgeRendererStyle.BADGE_STYLE_TYPE_VERIFIED,
  "BADGE_STYLE_TYPE_VERIFIED_ARTIST":
      MetadataBadgeRendererStyle.BADGE_STYLE_TYPE_VERIFIED_ARTIST
});

enum Tooltip { OFFICIAL_ARTIST_CHANNEL, VERIFIED }

final tooltipValues = EnumValues({
  "Official Artist Channel": Tooltip.OFFICIAL_ARTIST_CHANNEL,
  "Verified": Tooltip.VERIFIED
});

class A11YSkipNavigationButtonClass {
  A11YSkipNavigationButtonClass({
    this.buttonRenderer,
  });

  final A11YSkipNavigationButtonButtonRenderer buttonRenderer;

  factory A11YSkipNavigationButtonClass.fromRawJson(String str) =>
      A11YSkipNavigationButtonClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory A11YSkipNavigationButtonClass.fromJson(Map<String, dynamic> json) =>
      A11YSkipNavigationButtonClass(
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : A11YSkipNavigationButtonButtonRenderer.fromJson(
                json["buttonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toJson(),
      };
}

class A11YSkipNavigationButtonButtonRenderer {
  A11YSkipNavigationButtonButtonRenderer({
    this.style,
    this.size,
    this.isDisabled,
    this.text,
    this.navigationEndpoint,
    this.trackingParams,
    this.command,
  });

  final String style;
  final String size;
  final bool isDisabled;
  final TextElement text;
  final TentacledNavigationEndpoint navigationEndpoint;
  final String trackingParams;
  final PurpleCommand command;

  factory A11YSkipNavigationButtonButtonRenderer.fromRawJson(String str) =>
      A11YSkipNavigationButtonButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory A11YSkipNavigationButtonButtonRenderer.fromJson(
          Map<String, dynamic> json) =>
      A11YSkipNavigationButtonButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        text: json["text"] == null ? null : TextElement.fromJson(json["text"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : TentacledNavigationEndpoint.fromJson(json["navigationEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        command: json["command"] == null
            ? null
            : PurpleCommand.fromJson(json["command"]),
      );

  Map<String, dynamic> toJson() => {
        "style": style == null ? null : style,
        "size": size == null ? null : size,
        "isDisabled": isDisabled == null ? null : isDisabled,
        "text": text == null ? null : text.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "command": command == null ? null : command.toJson(),
      };
}

class PurpleCommand {
  PurpleCommand({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signalServiceEndpoint,
  });

  final String clickTrackingParams;
  final StickyCommandMetadata commandMetadata;
  final CommandSignalServiceEndpoint signalServiceEndpoint;

  factory PurpleCommand.fromRawJson(String str) =>
      PurpleCommand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleCommand.fromJson(Map<String, dynamic> json) => PurpleCommand(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : StickyCommandMetadata.fromJson(json["commandMetadata"]),
        signalServiceEndpoint: json["signalServiceEndpoint"] == null
            ? null
            : CommandSignalServiceEndpoint.fromJson(
                json["signalServiceEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "signalServiceEndpoint": signalServiceEndpoint == null
            ? null
            : signalServiceEndpoint.toJson(),
      };
}

class StickyCommandMetadata {
  StickyCommandMetadata({
    this.webCommandMetadata,
  });

  final IndecentWebCommandMetadata webCommandMetadata;

  factory StickyCommandMetadata.fromRawJson(String str) =>
      StickyCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StickyCommandMetadata.fromJson(Map<String, dynamic> json) =>
      StickyCommandMetadata(
        webCommandMetadata: json["webCommandMetadata"] == null
            ? null
            : IndecentWebCommandMetadata.fromJson(json["webCommandMetadata"]),
      );

  Map<String, dynamic> toJson() => {
        "webCommandMetadata":
            webCommandMetadata == null ? null : webCommandMetadata.toJson(),
      };
}

class IndecentWebCommandMetadata {
  IndecentWebCommandMetadata({
    this.sendPost,
  });

  final bool sendPost;

  factory IndecentWebCommandMetadata.fromRawJson(String str) =>
      IndecentWebCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IndecentWebCommandMetadata.fromJson(Map<String, dynamic> json) =>
      IndecentWebCommandMetadata(
        sendPost: json["sendPost"] == null ? null : json["sendPost"],
      );

  Map<String, dynamic> toJson() => {
        "sendPost": sendPost == null ? null : sendPost,
      };
}

class CommandSignalServiceEndpoint {
  CommandSignalServiceEndpoint({
    this.signal,
    this.actions,
  });

  final Signal signal;
  final List<FluffyAction> actions;

  factory CommandSignalServiceEndpoint.fromRawJson(String str) =>
      CommandSignalServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CommandSignalServiceEndpoint.fromJson(Map<String, dynamic> json) =>
      CommandSignalServiceEndpoint(
        signal:
            json["signal"] == null ? null : signalValues.map[json["signal"]],
        actions: json["actions"] == null
            ? null
            : List<FluffyAction>.from(
                json["actions"].map((x) => FluffyAction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "signal": signal == null ? null : signalValues.reverse[signal],
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toJson())),
      };
}

class FluffyAction {
  FluffyAction({
    this.clickTrackingParams,
    this.signalAction,
  });

  final String clickTrackingParams;
  final SignalAction signalAction;

  factory FluffyAction.fromRawJson(String str) =>
      FluffyAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyAction.fromJson(Map<String, dynamic> json) => FluffyAction(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        signalAction: json["signalAction"] == null
            ? null
            : SignalAction.fromJson(json["signalAction"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "signalAction": signalAction == null ? null : signalAction.toJson(),
      };
}

class SignalAction {
  SignalAction({
    this.signal,
  });

  final String signal;

  factory SignalAction.fromRawJson(String str) =>
      SignalAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SignalAction.fromJson(Map<String, dynamic> json) => SignalAction(
        signal: json["signal"] == null ? null : json["signal"],
      );

  Map<String, dynamic> toJson() => {
        "signal": signal == null ? null : signal,
      };
}

class TentacledNavigationEndpoint {
  TentacledNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signInEndpoint,
  });

  final String clickTrackingParams;
  final SearchEndpointCommandMetadata commandMetadata;
  final PurpleSignInEndpoint signInEndpoint;

  factory TentacledNavigationEndpoint.fromRawJson(String str) =>
      TentacledNavigationEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledNavigationEndpoint.fromJson(Map<String, dynamic> json) =>
      TentacledNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : SearchEndpointCommandMetadata.fromJson(json["commandMetadata"]),
        signInEndpoint: json["signInEndpoint"] == null
            ? null
            : PurpleSignInEndpoint.fromJson(json["signInEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "signInEndpoint":
            signInEndpoint == null ? null : signInEndpoint.toJson(),
      };
}

class PurpleSignInEndpoint {
  PurpleSignInEndpoint({
    this.nextEndpoint,
    this.continueAction,
  });

  final NextEndpointClass nextEndpoint;
  final String continueAction;

  factory PurpleSignInEndpoint.fromRawJson(String str) =>
      PurpleSignInEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleSignInEndpoint.fromJson(Map<String, dynamic> json) =>
      PurpleSignInEndpoint(
        nextEndpoint: json["nextEndpoint"] == null
            ? null
            : NextEndpointClass.fromJson(json["nextEndpoint"]),
        continueAction:
            json["continueAction"] == null ? null : json["continueAction"],
      );

  Map<String, dynamic> toJson() => {
        "nextEndpoint": nextEndpoint == null ? null : nextEndpoint.toJson(),
        "continueAction": continueAction == null ? null : continueAction,
      };
}

class NextEndpointClass {
  NextEndpointClass({
    this.clickTrackingParams,
    this.commandMetadata,
    this.searchEndpoint,
  });

  final String clickTrackingParams;
  final SearchEndpointCommandMetadata commandMetadata;
  final NextEndpointSearchEndpoint searchEndpoint;

  factory NextEndpointClass.fromRawJson(String str) =>
      NextEndpointClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NextEndpointClass.fromJson(Map<String, dynamic> json) =>
      NextEndpointClass(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : SearchEndpointCommandMetadata.fromJson(json["commandMetadata"]),
        searchEndpoint: json["searchEndpoint"] == null
            ? null
            : NextEndpointSearchEndpoint.fromJson(json["searchEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "searchEndpoint":
            searchEndpoint == null ? null : searchEndpoint.toJson(),
      };
}

class NextEndpointSearchEndpoint {
  NextEndpointSearchEndpoint({
    this.query,
  });

  final String query;

  factory NextEndpointSearchEndpoint.fromRawJson(String str) =>
      NextEndpointSearchEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NextEndpointSearchEndpoint.fromJson(Map<String, dynamic> json) =>
      NextEndpointSearchEndpoint(
        query: json["query"] == null ? null : json["query"],
      );

  Map<String, dynamic> toJson() => {
        "query": query == null ? null : query,
      };
}

class SubscriptionButton {
  SubscriptionButton({
    this.subscribed,
  });

  final bool subscribed;

  factory SubscriptionButton.fromRawJson(String str) =>
      SubscriptionButton.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SubscriptionButton.fromJson(Map<String, dynamic> json) =>
      SubscriptionButton(
        subscribed: json["subscribed"] == null ? null : json["subscribed"],
      );

  Map<String, dynamic> toJson() => {
        "subscribed": subscribed == null ? null : subscribed,
      };
}

class ChannelRendererThumbnail {
  ChannelRendererThumbnail({
    this.thumbnails,
  });

  final List<MovingThumbnailDetailsThumbnail> thumbnails;

  factory ChannelRendererThumbnail.fromRawJson(String str) =>
      ChannelRendererThumbnail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChannelRendererThumbnail.fromJson(Map<String, dynamic> json) =>
      ChannelRendererThumbnail(
        thumbnails: json["thumbnails"] == null
            ? null
            : List<MovingThumbnailDetailsThumbnail>.from(json["thumbnails"]
                .map((x) => MovingThumbnailDetailsThumbnail.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "thumbnails": thumbnails == null
            ? null
            : List<dynamic>.from(thumbnails.map((x) => x.toJson())),
      };
}

class MovingThumbnailDetailsThumbnail {
  MovingThumbnailDetailsThumbnail({
    this.url,
    this.width,
    this.height,
  });

  final String url;
  final int width;
  final int height;

  factory MovingThumbnailDetailsThumbnail.fromRawJson(String str) =>
      MovingThumbnailDetailsThumbnail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MovingThumbnailDetailsThumbnail.fromJson(Map<String, dynamic> json) =>
      MovingThumbnailDetailsThumbnail(
        url: json["url"] == null ? null : json["url"],
        width: json["width"] == null ? null : json["width"],
        height: json["height"] == null ? null : json["height"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "width": width == null ? null : width,
        "height": height == null ? null : height,
      };
}

class HorizontalCardListRenderer {
  HorizontalCardListRenderer({
    this.cards,
    this.trackingParams,
    this.header,
    this.style,
  });

  final List<Card> cards;
  final String trackingParams;
  final Header header;
  final HorizontalCardListRendererStyle style;

  factory HorizontalCardListRenderer.fromRawJson(String str) =>
      HorizontalCardListRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HorizontalCardListRenderer.fromJson(Map<String, dynamic> json) =>
      HorizontalCardListRenderer(
        cards: json["cards"] == null
            ? null
            : List<Card>.from(json["cards"].map((x) => Card.fromJson(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        header: json["header"] == null ? null : Header.fromJson(json["header"]),
        style: json["style"] == null
            ? null
            : HorizontalCardListRendererStyle.fromJson(json["style"]),
      );

  Map<String, dynamic> toJson() => {
        "cards": cards == null
            ? null
            : List<dynamic>.from(cards.map((x) => x.toJson())),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "header": header == null ? null : header.toJson(),
        "style": style == null ? null : style.toJson(),
      };
}

class Card {
  Card({
    this.searchRefinementCardRenderer,
  });

  final SearchRefinementCardRenderer searchRefinementCardRenderer;

  factory Card.fromRawJson(String str) => Card.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Card.fromJson(Map<String, dynamic> json) => Card(
        searchRefinementCardRenderer:
            json["searchRefinementCardRenderer"] == null
                ? null
                : SearchRefinementCardRenderer.fromJson(
                    json["searchRefinementCardRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "searchRefinementCardRenderer": searchRefinementCardRenderer == null
            ? null
            : searchRefinementCardRenderer.toJson(),
      };
}

class SearchRefinementCardRenderer {
  SearchRefinementCardRenderer({
    this.thumbnail,
    this.query,
    this.searchEndpoint,
    this.trackingParams,
  });

  final ChannelRendererThumbnail thumbnail;
  final TextElement query;
  final OriginalQueryEndpointClass searchEndpoint;
  final String trackingParams;

  factory SearchRefinementCardRenderer.fromRawJson(String str) =>
      SearchRefinementCardRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SearchRefinementCardRenderer.fromJson(Map<String, dynamic> json) =>
      SearchRefinementCardRenderer(
        thumbnail: json["thumbnail"] == null
            ? null
            : ChannelRendererThumbnail.fromJson(json["thumbnail"]),
        query:
            json["query"] == null ? null : TextElement.fromJson(json["query"]),
        searchEndpoint: json["searchEndpoint"] == null
            ? null
            : OriginalQueryEndpointClass.fromJson(json["searchEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail == null ? null : thumbnail.toJson(),
        "query": query == null ? null : query.toJson(),
        "searchEndpoint":
            searchEndpoint == null ? null : searchEndpoint.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class OriginalQueryEndpointClass {
  OriginalQueryEndpointClass({
    this.clickTrackingParams,
    this.commandMetadata,
    this.searchEndpoint,
  });

  final String clickTrackingParams;
  final SearchEndpointCommandMetadata commandMetadata;
  final OriginalQueryEndpointSearchEndpoint searchEndpoint;

  factory OriginalQueryEndpointClass.fromRawJson(String str) =>
      OriginalQueryEndpointClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OriginalQueryEndpointClass.fromJson(Map<String, dynamic> json) =>
      OriginalQueryEndpointClass(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : SearchEndpointCommandMetadata.fromJson(json["commandMetadata"]),
        searchEndpoint: json["searchEndpoint"] == null
            ? null
            : OriginalQueryEndpointSearchEndpoint.fromJson(
                json["searchEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "searchEndpoint":
            searchEndpoint == null ? null : searchEndpoint.toJson(),
      };
}

class OriginalQueryEndpointSearchEndpoint {
  OriginalQueryEndpointSearchEndpoint({
    this.query,
    this.params,
  });

  final String query;
  final String params;

  factory OriginalQueryEndpointSearchEndpoint.fromRawJson(String str) =>
      OriginalQueryEndpointSearchEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OriginalQueryEndpointSearchEndpoint.fromJson(
          Map<String, dynamic> json) =>
      OriginalQueryEndpointSearchEndpoint(
        query: json["query"] == null ? null : json["query"],
        params: json["params"] == null ? null : json["params"],
      );

  Map<String, dynamic> toJson() => {
        "query": query == null ? null : query,
        "params": params == null ? null : params,
      };
}

class Header {
  Header({
    this.richListHeaderRenderer,
  });

  final RichListHeaderRenderer richListHeaderRenderer;

  factory Header.fromRawJson(String str) => Header.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Header.fromJson(Map<String, dynamic> json) => Header(
        richListHeaderRenderer: json["richListHeaderRenderer"] == null
            ? null
            : RichListHeaderRenderer.fromJson(json["richListHeaderRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "richListHeaderRenderer": richListHeaderRenderer == null
            ? null
            : richListHeaderRenderer.toJson(),
      };
}

class RichListHeaderRenderer {
  RichListHeaderRenderer({
    this.title,
    this.trackingParams,
    this.icon,
  });

  final RichListHeaderRendererTitle title;
  final String trackingParams;
  final IconImage icon;

  factory RichListHeaderRenderer.fromRawJson(String str) =>
      RichListHeaderRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RichListHeaderRenderer.fromJson(Map<String, dynamic> json) =>
      RichListHeaderRenderer(
        title: json["title"] == null
            ? null
            : RichListHeaderRendererTitle.fromJson(json["title"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        icon: json["icon"] == null ? null : IconImage.fromJson(json["icon"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "icon": icon == null ? null : icon.toJson(),
      };
}

class RichListHeaderRendererTitle {
  RichListHeaderRendererTitle({
    this.simpleText,
    this.runs,
  });

  final String simpleText;
  final List<ThumbnailTextRun> runs;

  factory RichListHeaderRendererTitle.fromRawJson(String str) =>
      RichListHeaderRendererTitle.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RichListHeaderRendererTitle.fromJson(Map<String, dynamic> json) =>
      RichListHeaderRendererTitle(
        simpleText: json["simpleText"] == null ? null : json["simpleText"],
        runs: json["runs"] == null
            ? null
            : List<ThumbnailTextRun>.from(
                json["runs"].map((x) => ThumbnailTextRun.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "simpleText": simpleText == null ? null : simpleText,
        "runs": runs == null
            ? null
            : List<dynamic>.from(runs.map((x) => x.toJson())),
      };
}

class ThumbnailTextRun {
  ThumbnailTextRun({
    this.text,
    this.bold,
  });

  final String text;
  final bool bold;

  factory ThumbnailTextRun.fromRawJson(String str) =>
      ThumbnailTextRun.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ThumbnailTextRun.fromJson(Map<String, dynamic> json) =>
      ThumbnailTextRun(
        text: json["text"] == null ? null : json["text"],
        bold: json["bold"] == null ? null : json["bold"],
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text,
        "bold": bold == null ? null : bold,
      };
}

class HorizontalCardListRendererStyle {
  HorizontalCardListRendererStyle({
    this.type,
  });

  final String type;

  factory HorizontalCardListRendererStyle.fromRawJson(String str) =>
      HorizontalCardListRendererStyle.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HorizontalCardListRendererStyle.fromJson(Map<String, dynamic> json) =>
      HorizontalCardListRendererStyle(
        type: json["type"] == null ? null : json["type"],
      );

  Map<String, dynamic> toJson() => {
        "type": type == null ? null : type,
      };
}

class RadioRenderer {
  RadioRenderer({
    this.playlistId,
    this.title,
    this.thumbnail,
    this.videoCountText,
    this.navigationEndpoint,
    this.shortBylineText,
    this.trackingParams,
    this.videos,
    this.thumbnailText,
    this.longBylineText,
    this.thumbnailOverlays,
    this.videoCountShortText,
  });

  final TId playlistId;
  final IndexClass title;
  final ChannelRendererThumbnail thumbnail;
  final TextElement videoCountText;
  final RadioRendererNavigationEndpoint navigationEndpoint;
  final IndexClass shortBylineText;
  final String trackingParams;
  final List<RadioRendererVideo> videos;
  final ThumbnailText thumbnailText;
  final IndexClass longBylineText;
  final List<RadioRendererThumbnailOverlay> thumbnailOverlays;
  final TextElement videoCountShortText;

  factory RadioRenderer.fromRawJson(String str) =>
      RadioRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RadioRenderer.fromJson(Map<String, dynamic> json) => RadioRenderer(
        playlistId: json["playlistId"] == null
            ? null
            : tIdValues.map[json["playlistId"]],
        title:
            json["title"] == null ? null : IndexClass.fromJson(json["title"]),
        thumbnail: json["thumbnail"] == null
            ? null
            : ChannelRendererThumbnail.fromJson(json["thumbnail"]),
        videoCountText: json["videoCountText"] == null
            ? null
            : TextElement.fromJson(json["videoCountText"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : RadioRendererNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
        shortBylineText: json["shortBylineText"] == null
            ? null
            : IndexClass.fromJson(json["shortBylineText"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        videos: json["videos"] == null
            ? null
            : List<RadioRendererVideo>.from(
                json["videos"].map((x) => RadioRendererVideo.fromJson(x))),
        thumbnailText: json["thumbnailText"] == null
            ? null
            : ThumbnailText.fromJson(json["thumbnailText"]),
        longBylineText: json["longBylineText"] == null
            ? null
            : IndexClass.fromJson(json["longBylineText"]),
        thumbnailOverlays: json["thumbnailOverlays"] == null
            ? null
            : List<RadioRendererThumbnailOverlay>.from(json["thumbnailOverlays"]
                .map((x) => RadioRendererThumbnailOverlay.fromJson(x))),
        videoCountShortText: json["videoCountShortText"] == null
            ? null
            : TextElement.fromJson(json["videoCountShortText"]),
      );

  Map<String, dynamic> toJson() => {
        "playlistId": playlistId == null ? null : tIdValues.reverse[playlistId],
        "title": title == null ? null : title.toJson(),
        "thumbnail": thumbnail == null ? null : thumbnail.toJson(),
        "videoCountText":
            videoCountText == null ? null : videoCountText.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "shortBylineText":
            shortBylineText == null ? null : shortBylineText.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "videos": videos == null
            ? null
            : List<dynamic>.from(videos.map((x) => x.toJson())),
        "thumbnailText": thumbnailText == null ? null : thumbnailText.toJson(),
        "longBylineText":
            longBylineText == null ? null : longBylineText.toJson(),
        "thumbnailOverlays": thumbnailOverlays == null
            ? null
            : List<dynamic>.from(thumbnailOverlays.map((x) => x.toJson())),
        "videoCountShortText":
            videoCountShortText == null ? null : videoCountShortText.toJson(),
      };
}

class RadioRendererNavigationEndpoint {
  RadioRendererNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.watchEndpoint,
  });

  final String clickTrackingParams;
  final SearchEndpointCommandMetadata commandMetadata;
  final PurpleWatchEndpoint watchEndpoint;

  factory RadioRendererNavigationEndpoint.fromRawJson(String str) =>
      RadioRendererNavigationEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RadioRendererNavigationEndpoint.fromJson(Map<String, dynamic> json) =>
      RadioRendererNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : SearchEndpointCommandMetadata.fromJson(json["commandMetadata"]),
        watchEndpoint: json["watchEndpoint"] == null
            ? null
            : PurpleWatchEndpoint.fromJson(json["watchEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "watchEndpoint": watchEndpoint == null ? null : watchEndpoint.toJson(),
      };
}

class RadioRendererThumbnailOverlay {
  RadioRendererThumbnailOverlay({
    this.thumbnailOverlaySidePanelRenderer,
    this.thumbnailOverlayHoverTextRenderer,
    this.thumbnailOverlayNowPlayingRenderer,
  });

  final ThumbnailOverlayRenderer thumbnailOverlaySidePanelRenderer;
  final ThumbnailOverlayRenderer thumbnailOverlayHoverTextRenderer;
  final ThumbnailOverlayNowPlayingRenderer thumbnailOverlayNowPlayingRenderer;

  factory RadioRendererThumbnailOverlay.fromRawJson(String str) =>
      RadioRendererThumbnailOverlay.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RadioRendererThumbnailOverlay.fromJson(Map<String, dynamic> json) =>
      RadioRendererThumbnailOverlay(
        thumbnailOverlaySidePanelRenderer:
            json["thumbnailOverlaySidePanelRenderer"] == null
                ? null
                : ThumbnailOverlayRenderer.fromJson(
                    json["thumbnailOverlaySidePanelRenderer"]),
        thumbnailOverlayHoverTextRenderer:
            json["thumbnailOverlayHoverTextRenderer"] == null
                ? null
                : ThumbnailOverlayRenderer.fromJson(
                    json["thumbnailOverlayHoverTextRenderer"]),
        thumbnailOverlayNowPlayingRenderer:
            json["thumbnailOverlayNowPlayingRenderer"] == null
                ? null
                : ThumbnailOverlayNowPlayingRenderer.fromJson(
                    json["thumbnailOverlayNowPlayingRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "thumbnailOverlaySidePanelRenderer":
            thumbnailOverlaySidePanelRenderer == null
                ? null
                : thumbnailOverlaySidePanelRenderer.toJson(),
        "thumbnailOverlayHoverTextRenderer":
            thumbnailOverlayHoverTextRenderer == null
                ? null
                : thumbnailOverlayHoverTextRenderer.toJson(),
        "thumbnailOverlayNowPlayingRenderer":
            thumbnailOverlayNowPlayingRenderer == null
                ? null
                : thumbnailOverlayNowPlayingRenderer.toJson(),
      };
}

class ThumbnailOverlayRenderer {
  ThumbnailOverlayRenderer({
    this.text,
    this.icon,
  });

  final TextElement text;
  final IconImage icon;

  factory ThumbnailOverlayRenderer.fromRawJson(String str) =>
      ThumbnailOverlayRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ThumbnailOverlayRenderer.fromJson(Map<String, dynamic> json) =>
      ThumbnailOverlayRenderer(
        text: json["text"] == null ? null : TextElement.fromJson(json["text"]),
        icon: json["icon"] == null ? null : IconImage.fromJson(json["icon"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text.toJson(),
        "icon": icon == null ? null : icon.toJson(),
      };
}

class ThumbnailText {
  ThumbnailText({
    this.runs,
  });

  final List<ThumbnailTextRun> runs;

  factory ThumbnailText.fromRawJson(String str) =>
      ThumbnailText.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ThumbnailText.fromJson(Map<String, dynamic> json) => ThumbnailText(
        runs: json["runs"] == null
            ? null
            : List<ThumbnailTextRun>.from(
                json["runs"].map((x) => ThumbnailTextRun.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "runs": runs == null
            ? null
            : List<dynamic>.from(runs.map((x) => x.toJson())),
      };
}

class RadioRendererVideo {
  RadioRendererVideo({
    this.childVideoRenderer,
  });

  final PurpleChildVideoRenderer childVideoRenderer;

  factory RadioRendererVideo.fromRawJson(String str) =>
      RadioRendererVideo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RadioRendererVideo.fromJson(Map<String, dynamic> json) =>
      RadioRendererVideo(
        childVideoRenderer: json["childVideoRenderer"] == null
            ? null
            : PurpleChildVideoRenderer.fromJson(json["childVideoRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "childVideoRenderer":
            childVideoRenderer == null ? null : childVideoRenderer.toJson(),
      };
}

class PurpleChildVideoRenderer {
  PurpleChildVideoRenderer({
    this.title,
    this.navigationEndpoint,
    this.lengthText,
    this.videoId,
  });

  final IndexClass title;
  final RadioRendererNavigationEndpoint navigationEndpoint;
  final LengthTextClass lengthText;
  final String videoId;

  factory PurpleChildVideoRenderer.fromRawJson(String str) =>
      PurpleChildVideoRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleChildVideoRenderer.fromJson(Map<String, dynamic> json) =>
      PurpleChildVideoRenderer(
        title:
            json["title"] == null ? null : IndexClass.fromJson(json["title"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : RadioRendererNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
        lengthText: json["lengthText"] == null
            ? null
            : LengthTextClass.fromJson(json["lengthText"]),
        videoId: json["videoId"] == null ? null : json["videoId"],
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "lengthText": lengthText == null ? null : lengthText.toJson(),
        "videoId": videoId == null ? null : videoId,
      };
}

class ShelfRenderer {
  ShelfRenderer({
    this.title,
    this.content,
    this.trackingParams,
  });

  final IndexClass title;
  final ShelfRendererContent content;
  final String trackingParams;

  factory ShelfRenderer.fromRawJson(String str) =>
      ShelfRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ShelfRenderer.fromJson(Map<String, dynamic> json) => ShelfRenderer(
        title:
            json["title"] == null ? null : IndexClass.fromJson(json["title"]),
        content: json["content"] == null
            ? null
            : ShelfRendererContent.fromJson(json["content"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title.toJson(),
        "content": content == null ? null : content.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class ShelfRendererContent {
  ShelfRendererContent({
    this.verticalListRenderer,
  });

  final VerticalListRenderer verticalListRenderer;

  factory ShelfRendererContent.fromRawJson(String str) =>
      ShelfRendererContent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ShelfRendererContent.fromJson(Map<String, dynamic> json) =>
      ShelfRendererContent(
        verticalListRenderer: json["verticalListRenderer"] == null
            ? null
            : VerticalListRenderer.fromJson(json["verticalListRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "verticalListRenderer":
            verticalListRenderer == null ? null : verticalListRenderer.toJson(),
      };
}

class VerticalListRenderer {
  VerticalListRenderer({
    this.items,
    this.collapsedItemCount,
    this.collapsedStateButtonText,
    this.trackingParams,
  });

  final List<VerticalListRendererItem> items;
  final int collapsedItemCount;
  final CollapsedStateButtonTextClass collapsedStateButtonText;
  final String trackingParams;

  factory VerticalListRenderer.fromRawJson(String str) =>
      VerticalListRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VerticalListRenderer.fromJson(Map<String, dynamic> json) =>
      VerticalListRenderer(
        items: json["items"] == null
            ? null
            : List<VerticalListRendererItem>.from(
                json["items"].map((x) => VerticalListRendererItem.fromJson(x))),
        collapsedItemCount: json["collapsedItemCount"] == null
            ? null
            : json["collapsedItemCount"],
        collapsedStateButtonText: json["collapsedStateButtonText"] == null
            ? null
            : CollapsedStateButtonTextClass.fromJson(
                json["collapsedStateButtonText"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "items": items == null
            ? null
            : List<dynamic>.from(items.map((x) => x.toJson())),
        "collapsedItemCount":
            collapsedItemCount == null ? null : collapsedItemCount,
        "collapsedStateButtonText": collapsedStateButtonText == null
            ? null
            : collapsedStateButtonText.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class VerticalListRendererItem {
  VerticalListRendererItem({
    this.videoRenderer,
  });

  final ItemVideoRenderer videoRenderer;

  factory VerticalListRendererItem.fromRawJson(String str) =>
      VerticalListRendererItem.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VerticalListRendererItem.fromJson(Map<String, dynamic> json) =>
      VerticalListRendererItem(
        videoRenderer: json["videoRenderer"] == null
            ? null
            : ItemVideoRenderer.fromJson(json["videoRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "videoRenderer": videoRenderer == null ? null : videoRenderer.toJson(),
      };
}

class ItemVideoRenderer {
  ItemVideoRenderer({
    this.videoId,
    this.thumbnail,
    this.title,
    this.descriptionSnippet,
    this.longBylineText,
    this.publishedTimeText,
    this.lengthText,
    this.viewCountText,
    this.navigationEndpoint,
    this.badges,
    this.ownerBadges,
    this.ownerText,
    this.shortBylineText,
    this.trackingParams,
    this.showActionMenu,
    this.shortViewCountText,
    this.menu,
    this.channelThumbnailSupportedRenderers,
    this.thumbnailOverlays,
    this.richThumbnail,
  });

  final String videoId;
  final ChannelRendererThumbnail thumbnail;
  final CollapsedStateButtonTextClass title;
  final ThumbnailText descriptionSnippet;
  final OwnerTextClass longBylineText;
  final IndexClass publishedTimeText;
  final LengthTextClass lengthText;
  final IndexClass viewCountText;
  final StickyNavigationEndpoint navigationEndpoint;
  final List<PurpleBadge> badges;
  final List<OwnerBadgeElement> ownerBadges;
  final OwnerTextClass ownerText;
  final OwnerTextClass shortBylineText;
  final String trackingParams;
  final bool showActionMenu;
  final IndexClass shortViewCountText;
  final VideoRendererMenu menu;
  final ChannelThumbnailSupportedRenderers channelThumbnailSupportedRenderers;
  final List<VideoRendererThumbnailOverlay> thumbnailOverlays;
  final RichThumbnail richThumbnail;

  factory ItemVideoRenderer.fromRawJson(String str) =>
      ItemVideoRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ItemVideoRenderer.fromJson(Map<String, dynamic> json) =>
      ItemVideoRenderer(
        videoId: json["videoId"] == null ? null : json["videoId"],
        thumbnail: json["thumbnail"] == null
            ? null
            : ChannelRendererThumbnail.fromJson(json["thumbnail"]),
        title: json["title"] == null
            ? null
            : CollapsedStateButtonTextClass.fromJson(json["title"]),
        descriptionSnippet: json["descriptionSnippet"] == null
            ? null
            : ThumbnailText.fromJson(json["descriptionSnippet"]),
        longBylineText: json["longBylineText"] == null
            ? null
            : OwnerTextClass.fromJson(json["longBylineText"]),
        publishedTimeText: json["publishedTimeText"] == null
            ? null
            : IndexClass.fromJson(json["publishedTimeText"]),
        lengthText: json["lengthText"] == null
            ? null
            : LengthTextClass.fromJson(json["lengthText"]),
        viewCountText: json["viewCountText"] == null
            ? null
            : IndexClass.fromJson(json["viewCountText"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : StickyNavigationEndpoint.fromJson(json["navigationEndpoint"]),
        badges: json["badges"] == null
            ? null
            : List<PurpleBadge>.from(
                json["badges"].map((x) => PurpleBadge.fromJson(x))),
        ownerBadges: json["ownerBadges"] == null
            ? null
            : List<OwnerBadgeElement>.from(
                json["ownerBadges"].map((x) => OwnerBadgeElement.fromJson(x))),
        ownerText: json["ownerText"] == null
            ? null
            : OwnerTextClass.fromJson(json["ownerText"]),
        shortBylineText: json["shortBylineText"] == null
            ? null
            : OwnerTextClass.fromJson(json["shortBylineText"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        showActionMenu:
            json["showActionMenu"] == null ? null : json["showActionMenu"],
        shortViewCountText: json["shortViewCountText"] == null
            ? null
            : IndexClass.fromJson(json["shortViewCountText"]),
        menu: json["menu"] == null
            ? null
            : VideoRendererMenu.fromJson(json["menu"]),
        channelThumbnailSupportedRenderers:
            json["channelThumbnailSupportedRenderers"] == null
                ? null
                : ChannelThumbnailSupportedRenderers.fromJson(
                    json["channelThumbnailSupportedRenderers"]),
        thumbnailOverlays: json["thumbnailOverlays"] == null
            ? null
            : List<VideoRendererThumbnailOverlay>.from(json["thumbnailOverlays"]
                .map((x) => VideoRendererThumbnailOverlay.fromJson(x))),
        richThumbnail: json["richThumbnail"] == null
            ? null
            : RichThumbnail.fromJson(json["richThumbnail"]),
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId == null ? null : videoId,
        "thumbnail": thumbnail == null ? null : thumbnail.toJson(),
        "title": title == null ? null : title.toJson(),
        "descriptionSnippet":
            descriptionSnippet == null ? null : descriptionSnippet.toJson(),
        "longBylineText":
            longBylineText == null ? null : longBylineText.toJson(),
        "publishedTimeText":
            publishedTimeText == null ? null : publishedTimeText.toJson(),
        "lengthText": lengthText == null ? null : lengthText.toJson(),
        "viewCountText": viewCountText == null ? null : viewCountText.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "badges": badges == null
            ? null
            : List<dynamic>.from(badges.map((x) => x.toJson())),
        "ownerBadges": ownerBadges == null
            ? null
            : List<dynamic>.from(ownerBadges.map((x) => x.toJson())),
        "ownerText": ownerText == null ? null : ownerText.toJson(),
        "shortBylineText":
            shortBylineText == null ? null : shortBylineText.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "showActionMenu": showActionMenu == null ? null : showActionMenu,
        "shortViewCountText":
            shortViewCountText == null ? null : shortViewCountText.toJson(),
        "menu": menu == null ? null : menu.toJson(),
        "channelThumbnailSupportedRenderers":
            channelThumbnailSupportedRenderers == null
                ? null
                : channelThumbnailSupportedRenderers.toJson(),
        "thumbnailOverlays": thumbnailOverlays == null
            ? null
            : List<dynamic>.from(thumbnailOverlays.map((x) => x.toJson())),
        "richThumbnail": richThumbnail == null ? null : richThumbnail.toJson(),
      };
}

class PurpleBadge {
  PurpleBadge({
    this.metadataBadgeRenderer,
  });

  final PurpleMetadataBadgeRenderer metadataBadgeRenderer;

  factory PurpleBadge.fromRawJson(String str) =>
      PurpleBadge.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleBadge.fromJson(Map<String, dynamic> json) => PurpleBadge(
        metadataBadgeRenderer: json["metadataBadgeRenderer"] == null
            ? null
            : PurpleMetadataBadgeRenderer.fromJson(
                json["metadataBadgeRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "metadataBadgeRenderer": metadataBadgeRenderer == null
            ? null
            : metadataBadgeRenderer.toJson(),
      };
}

class PurpleMetadataBadgeRenderer {
  PurpleMetadataBadgeRenderer({
    this.style,
    this.label,
    this.trackingParams,
    this.accessibilityData,
  });

  final MetadataBadgeRendererStyle style;
  final Label label;
  final String trackingParams;
  final Accessibility accessibilityData;

  factory PurpleMetadataBadgeRenderer.fromRawJson(String str) =>
      PurpleMetadataBadgeRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleMetadataBadgeRenderer.fromJson(Map<String, dynamic> json) =>
      PurpleMetadataBadgeRenderer(
        style: json["style"] == null
            ? null
            : metadataBadgeRendererStyleValues.map[json["style"]],
        label: json["label"] == null ? null : labelValues.map[json["label"]],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        accessibilityData: json["accessibilityData"] == null
            ? null
            : Accessibility.fromJson(json["accessibilityData"]),
      );

  Map<String, dynamic> toJson() => {
        "style": style == null
            ? null
            : metadataBadgeRendererStyleValues.reverse[style],
        "label": label == null ? null : labelValues.reverse[label],
        "trackingParams": trackingParams == null ? null : trackingParams,
        "accessibilityData":
            accessibilityData == null ? null : accessibilityData.toJson(),
      };
}

enum Label { CC, THE_4_K, NEW }

final labelValues =
    EnumValues({"CC": Label.CC, "New": Label.NEW, "4K": Label.THE_4_K});

class ChannelThumbnailSupportedRenderers {
  ChannelThumbnailSupportedRenderers({
    this.channelThumbnailWithLinkRenderer,
  });

  final ChannelThumbnailWithLinkRenderer channelThumbnailWithLinkRenderer;

  factory ChannelThumbnailSupportedRenderers.fromRawJson(String str) =>
      ChannelThumbnailSupportedRenderers.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChannelThumbnailSupportedRenderers.fromJson(
          Map<String, dynamic> json) =>
      ChannelThumbnailSupportedRenderers(
        channelThumbnailWithLinkRenderer:
            json["channelThumbnailWithLinkRenderer"] == null
                ? null
                : ChannelThumbnailWithLinkRenderer.fromJson(
                    json["channelThumbnailWithLinkRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "channelThumbnailWithLinkRenderer":
            channelThumbnailWithLinkRenderer == null
                ? null
                : channelThumbnailWithLinkRenderer.toJson(),
      };
}

class ChannelThumbnailWithLinkRenderer {
  ChannelThumbnailWithLinkRenderer({
    this.thumbnail,
    this.navigationEndpoint,
    this.accessibility,
  });

  final ChannelRendererThumbnail thumbnail;
  final ChannelRendererNavigationEndpoint navigationEndpoint;
  final AccessibilityData accessibility;

  factory ChannelThumbnailWithLinkRenderer.fromRawJson(String str) =>
      ChannelThumbnailWithLinkRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChannelThumbnailWithLinkRenderer.fromJson(
          Map<String, dynamic> json) =>
      ChannelThumbnailWithLinkRenderer(
        thumbnail: json["thumbnail"] == null
            ? null
            : ChannelRendererThumbnail.fromJson(json["thumbnail"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : ChannelRendererNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
        accessibility: json["accessibility"] == null
            ? null
            : AccessibilityData.fromJson(json["accessibility"]),
      );

  Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail == null ? null : thumbnail.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "accessibility": accessibility == null ? null : accessibility.toJson(),
      };
}

class VideoRendererMenu {
  VideoRendererMenu({
    this.menuRenderer,
  });

  final FluffyMenuRenderer menuRenderer;

  factory VideoRendererMenu.fromRawJson(String str) =>
      VideoRendererMenu.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VideoRendererMenu.fromJson(Map<String, dynamic> json) =>
      VideoRendererMenu(
        menuRenderer: json["menuRenderer"] == null
            ? null
            : FluffyMenuRenderer.fromJson(json["menuRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "menuRenderer": menuRenderer == null ? null : menuRenderer.toJson(),
      };
}

class FluffyMenuRenderer {
  FluffyMenuRenderer({
    this.items,
    this.trackingParams,
    this.accessibility,
  });

  final List<FluffyItem> items;
  final String trackingParams;
  final AccessibilityData accessibility;

  factory FluffyMenuRenderer.fromRawJson(String str) =>
      FluffyMenuRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyMenuRenderer.fromJson(Map<String, dynamic> json) =>
      FluffyMenuRenderer(
        items: json["items"] == null
            ? null
            : List<FluffyItem>.from(
                json["items"].map((x) => FluffyItem.fromJson(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        accessibility: json["accessibility"] == null
            ? null
            : AccessibilityData.fromJson(json["accessibility"]),
      );

  Map<String, dynamic> toJson() => {
        "items": items == null
            ? null
            : List<dynamic>.from(items.map((x) => x.toJson())),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "accessibility": accessibility == null ? null : accessibility.toJson(),
      };
}

class FluffyItem {
  FluffyItem({
    this.menuServiceItemRenderer,
  });

  final FluffyMenuServiceItemRenderer menuServiceItemRenderer;

  factory FluffyItem.fromRawJson(String str) =>
      FluffyItem.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyItem.fromJson(Map<String, dynamic> json) => FluffyItem(
        menuServiceItemRenderer: json["menuServiceItemRenderer"] == null
            ? null
            : FluffyMenuServiceItemRenderer.fromJson(
                json["menuServiceItemRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "menuServiceItemRenderer": menuServiceItemRenderer == null
            ? null
            : menuServiceItemRenderer.toJson(),
      };
}

class FluffyMenuServiceItemRenderer {
  FluffyMenuServiceItemRenderer({
    this.text,
    this.icon,
    this.serviceEndpoint,
    this.trackingParams,
  });

  final TextElement text;
  final IconImage icon;
  final FluffyServiceEndpoint serviceEndpoint;
  final String trackingParams;

  factory FluffyMenuServiceItemRenderer.fromRawJson(String str) =>
      FluffyMenuServiceItemRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyMenuServiceItemRenderer.fromJson(Map<String, dynamic> json) =>
      FluffyMenuServiceItemRenderer(
        text: json["text"] == null ? null : TextElement.fromJson(json["text"]),
        icon: json["icon"] == null ? null : IconImage.fromJson(json["icon"]),
        serviceEndpoint: json["serviceEndpoint"] == null
            ? null
            : FluffyServiceEndpoint.fromJson(json["serviceEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text.toJson(),
        "icon": icon == null ? null : icon.toJson(),
        "serviceEndpoint":
            serviceEndpoint == null ? null : serviceEndpoint.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class FluffyServiceEndpoint {
  FluffyServiceEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signalServiceEndpoint,
  });

  final String clickTrackingParams;
  final StickyCommandMetadata commandMetadata;
  final UntoggledServiceEndpointSignalServiceEndpoint signalServiceEndpoint;

  factory FluffyServiceEndpoint.fromRawJson(String str) =>
      FluffyServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyServiceEndpoint.fromJson(Map<String, dynamic> json) =>
      FluffyServiceEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : StickyCommandMetadata.fromJson(json["commandMetadata"]),
        signalServiceEndpoint: json["signalServiceEndpoint"] == null
            ? null
            : UntoggledServiceEndpointSignalServiceEndpoint.fromJson(
                json["signalServiceEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "signalServiceEndpoint": signalServiceEndpoint == null
            ? null
            : signalServiceEndpoint.toJson(),
      };
}

class UntoggledServiceEndpointSignalServiceEndpoint {
  UntoggledServiceEndpointSignalServiceEndpoint({
    this.signal,
    this.actions,
  });

  final Signal signal;
  final List<TentacledAction> actions;

  factory UntoggledServiceEndpointSignalServiceEndpoint.fromRawJson(
          String str) =>
      UntoggledServiceEndpointSignalServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UntoggledServiceEndpointSignalServiceEndpoint.fromJson(
          Map<String, dynamic> json) =>
      UntoggledServiceEndpointSignalServiceEndpoint(
        signal:
            json["signal"] == null ? null : signalValues.map[json["signal"]],
        actions: json["actions"] == null
            ? null
            : List<TentacledAction>.from(
                json["actions"].map((x) => TentacledAction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "signal": signal == null ? null : signalValues.reverse[signal],
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toJson())),
      };
}

class TentacledAction {
  TentacledAction({
    this.clickTrackingParams,
    this.addToPlaylistCommand,
  });

  final String clickTrackingParams;
  final FluffyAddToPlaylistCommand addToPlaylistCommand;

  factory TentacledAction.fromRawJson(String str) =>
      TentacledAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledAction.fromJson(Map<String, dynamic> json) =>
      TentacledAction(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        addToPlaylistCommand: json["addToPlaylistCommand"] == null
            ? null
            : FluffyAddToPlaylistCommand.fromJson(json["addToPlaylistCommand"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "addToPlaylistCommand":
            addToPlaylistCommand == null ? null : addToPlaylistCommand.toJson(),
      };
}

class FluffyAddToPlaylistCommand {
  FluffyAddToPlaylistCommand({
    this.openMiniplayer,
    this.videoId,
    this.listType,
    this.onCreateListCommand,
    this.videoIds,
  });

  final bool openMiniplayer;
  final String videoId;
  final ListType listType;
  final FluffyOnCreateListCommand onCreateListCommand;
  final List<String> videoIds;

  factory FluffyAddToPlaylistCommand.fromRawJson(String str) =>
      FluffyAddToPlaylistCommand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyAddToPlaylistCommand.fromJson(Map<String, dynamic> json) =>
      FluffyAddToPlaylistCommand(
        openMiniplayer:
            json["openMiniplayer"] == null ? null : json["openMiniplayer"],
        videoId: json["videoId"] == null ? null : json["videoId"],
        listType: json["listType"] == null
            ? null
            : listTypeValues.map[json["listType"]],
        onCreateListCommand: json["onCreateListCommand"] == null
            ? null
            : FluffyOnCreateListCommand.fromJson(json["onCreateListCommand"]),
        videoIds: json["videoIds"] == null
            ? null
            : List<String>.from(json["videoIds"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "openMiniplayer": openMiniplayer == null ? null : openMiniplayer,
        "videoId": videoId == null ? null : videoId,
        "listType": listType == null ? null : listTypeValues.reverse[listType],
        "onCreateListCommand":
            onCreateListCommand == null ? null : onCreateListCommand.toJson(),
        "videoIds": videoIds == null
            ? null
            : List<dynamic>.from(videoIds.map((x) => x)),
      };
}

class FluffyOnCreateListCommand {
  FluffyOnCreateListCommand({
    this.clickTrackingParams,
    this.commandMetadata,
    this.createPlaylistServiceEndpoint,
  });

  final String clickTrackingParams;
  final ContinuationEndpointCommandMetadata commandMetadata;
  final CreatePlaylistServiceEndpoint createPlaylistServiceEndpoint;

  factory FluffyOnCreateListCommand.fromRawJson(String str) =>
      FluffyOnCreateListCommand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyOnCreateListCommand.fromJson(Map<String, dynamic> json) =>
      FluffyOnCreateListCommand(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : ContinuationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        createPlaylistServiceEndpoint:
            json["createPlaylistServiceEndpoint"] == null
                ? null
                : CreatePlaylistServiceEndpoint.fromJson(
                    json["createPlaylistServiceEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "createPlaylistServiceEndpoint": createPlaylistServiceEndpoint == null
            ? null
            : createPlaylistServiceEndpoint.toJson(),
      };
}

class StickyNavigationEndpoint {
  StickyNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.watchEndpoint,
  });

  final String clickTrackingParams;
  final SearchEndpointCommandMetadata commandMetadata;
  final FluffyWatchEndpoint watchEndpoint;

  factory StickyNavigationEndpoint.fromRawJson(String str) =>
      StickyNavigationEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StickyNavigationEndpoint.fromJson(Map<String, dynamic> json) =>
      StickyNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : SearchEndpointCommandMetadata.fromJson(json["commandMetadata"]),
        watchEndpoint: json["watchEndpoint"] == null
            ? null
            : FluffyWatchEndpoint.fromJson(json["watchEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "watchEndpoint": watchEndpoint == null ? null : watchEndpoint.toJson(),
      };
}

class FluffyWatchEndpoint {
  FluffyWatchEndpoint({
    this.videoId,
  });

  final String videoId;

  factory FluffyWatchEndpoint.fromRawJson(String str) =>
      FluffyWatchEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyWatchEndpoint.fromJson(Map<String, dynamic> json) =>
      FluffyWatchEndpoint(
        videoId: json["videoId"] == null ? null : json["videoId"],
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId == null ? null : videoId,
      };
}

class RichThumbnail {
  RichThumbnail({
    this.movingThumbnailRenderer,
  });

  final MovingThumbnailRenderer movingThumbnailRenderer;

  factory RichThumbnail.fromRawJson(String str) =>
      RichThumbnail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RichThumbnail.fromJson(Map<String, dynamic> json) => RichThumbnail(
        movingThumbnailRenderer: json["movingThumbnailRenderer"] == null
            ? null
            : MovingThumbnailRenderer.fromJson(json["movingThumbnailRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "movingThumbnailRenderer": movingThumbnailRenderer == null
            ? null
            : movingThumbnailRenderer.toJson(),
      };
}

class MovingThumbnailRenderer {
  MovingThumbnailRenderer({
    this.movingThumbnailDetails,
    this.enableHoveredLogging,
    this.enableOverlay,
  });

  final MovingThumbnailDetails movingThumbnailDetails;
  final bool enableHoveredLogging;
  final bool enableOverlay;

  factory MovingThumbnailRenderer.fromRawJson(String str) =>
      MovingThumbnailRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MovingThumbnailRenderer.fromJson(Map<String, dynamic> json) =>
      MovingThumbnailRenderer(
        movingThumbnailDetails: json["movingThumbnailDetails"] == null
            ? null
            : MovingThumbnailDetails.fromJson(json["movingThumbnailDetails"]),
        enableHoveredLogging: json["enableHoveredLogging"] == null
            ? null
            : json["enableHoveredLogging"],
        enableOverlay:
            json["enableOverlay"] == null ? null : json["enableOverlay"],
      );

  Map<String, dynamic> toJson() => {
        "movingThumbnailDetails": movingThumbnailDetails == null
            ? null
            : movingThumbnailDetails.toJson(),
        "enableHoveredLogging":
            enableHoveredLogging == null ? null : enableHoveredLogging,
        "enableOverlay": enableOverlay == null ? null : enableOverlay,
      };
}

class MovingThumbnailDetails {
  MovingThumbnailDetails({
    this.thumbnails,
    this.logAsMovingThumbnail,
  });

  final List<MovingThumbnailDetailsThumbnail> thumbnails;
  final bool logAsMovingThumbnail;

  factory MovingThumbnailDetails.fromRawJson(String str) =>
      MovingThumbnailDetails.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MovingThumbnailDetails.fromJson(Map<String, dynamic> json) =>
      MovingThumbnailDetails(
        thumbnails: json["thumbnails"] == null
            ? null
            : List<MovingThumbnailDetailsThumbnail>.from(json["thumbnails"]
                .map((x) => MovingThumbnailDetailsThumbnail.fromJson(x))),
        logAsMovingThumbnail: json["logAsMovingThumbnail"] == null
            ? null
            : json["logAsMovingThumbnail"],
      );

  Map<String, dynamic> toJson() => {
        "thumbnails": thumbnails == null
            ? null
            : List<dynamic>.from(thumbnails.map((x) => x.toJson())),
        "logAsMovingThumbnail":
            logAsMovingThumbnail == null ? null : logAsMovingThumbnail,
      };
}

class VideoRendererThumbnailOverlay {
  VideoRendererThumbnailOverlay({
    this.thumbnailOverlayTimeStatusRenderer,
    this.thumbnailOverlayToggleButtonRenderer,
    this.thumbnailOverlayNowPlayingRenderer,
  });

  final ThumbnailOverlayTimeStatusRenderer thumbnailOverlayTimeStatusRenderer;
  final ThumbnailOverlayToggleButtonRenderer
      thumbnailOverlayToggleButtonRenderer;
  final ThumbnailOverlayNowPlayingRenderer thumbnailOverlayNowPlayingRenderer;

  factory VideoRendererThumbnailOverlay.fromRawJson(String str) =>
      VideoRendererThumbnailOverlay.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VideoRendererThumbnailOverlay.fromJson(Map<String, dynamic> json) =>
      VideoRendererThumbnailOverlay(
        thumbnailOverlayTimeStatusRenderer:
            json["thumbnailOverlayTimeStatusRenderer"] == null
                ? null
                : ThumbnailOverlayTimeStatusRenderer.fromJson(
                    json["thumbnailOverlayTimeStatusRenderer"]),
        thumbnailOverlayToggleButtonRenderer:
            json["thumbnailOverlayToggleButtonRenderer"] == null
                ? null
                : ThumbnailOverlayToggleButtonRenderer.fromJson(
                    json["thumbnailOverlayToggleButtonRenderer"]),
        thumbnailOverlayNowPlayingRenderer:
            json["thumbnailOverlayNowPlayingRenderer"] == null
                ? null
                : ThumbnailOverlayNowPlayingRenderer.fromJson(
                    json["thumbnailOverlayNowPlayingRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "thumbnailOverlayTimeStatusRenderer":
            thumbnailOverlayTimeStatusRenderer == null
                ? null
                : thumbnailOverlayTimeStatusRenderer.toJson(),
        "thumbnailOverlayToggleButtonRenderer":
            thumbnailOverlayToggleButtonRenderer == null
                ? null
                : thumbnailOverlayToggleButtonRenderer.toJson(),
        "thumbnailOverlayNowPlayingRenderer":
            thumbnailOverlayNowPlayingRenderer == null
                ? null
                : thumbnailOverlayNowPlayingRenderer.toJson(),
      };
}

class ThumbnailOverlayToggleButtonRenderer {
  ThumbnailOverlayToggleButtonRenderer({
    this.isToggled,
    this.untoggledIcon,
    this.toggledIcon,
    this.untoggledTooltip,
    this.toggledTooltip,
    this.untoggledServiceEndpoint,
    this.toggledServiceEndpoint,
    this.untoggledAccessibility,
    this.toggledAccessibility,
    this.trackingParams,
  });

  final bool isToggled;
  final IconImage untoggledIcon;
  final IconImage toggledIcon;
  final UntoggledTooltip untoggledTooltip;
  final ToggledTooltip toggledTooltip;
  final UntoggledServiceEndpoint untoggledServiceEndpoint;
  final ToggledServiceEndpoint toggledServiceEndpoint;
  final AccessibilityData untoggledAccessibility;
  final AccessibilityData toggledAccessibility;
  final String trackingParams;

  factory ThumbnailOverlayToggleButtonRenderer.fromRawJson(String str) =>
      ThumbnailOverlayToggleButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ThumbnailOverlayToggleButtonRenderer.fromJson(
          Map<String, dynamic> json) =>
      ThumbnailOverlayToggleButtonRenderer(
        isToggled: json["isToggled"] == null ? null : json["isToggled"],
        untoggledIcon: json["untoggledIcon"] == null
            ? null
            : IconImage.fromJson(json["untoggledIcon"]),
        toggledIcon: json["toggledIcon"] == null
            ? null
            : IconImage.fromJson(json["toggledIcon"]),
        untoggledTooltip: json["untoggledTooltip"] == null
            ? null
            : untoggledTooltipValues.map[json["untoggledTooltip"]],
        toggledTooltip: json["toggledTooltip"] == null
            ? null
            : toggledTooltipValues.map[json["toggledTooltip"]],
        untoggledServiceEndpoint: json["untoggledServiceEndpoint"] == null
            ? null
            : UntoggledServiceEndpoint.fromJson(
                json["untoggledServiceEndpoint"]),
        toggledServiceEndpoint: json["toggledServiceEndpoint"] == null
            ? null
            : ToggledServiceEndpoint.fromJson(json["toggledServiceEndpoint"]),
        untoggledAccessibility: json["untoggledAccessibility"] == null
            ? null
            : AccessibilityData.fromJson(json["untoggledAccessibility"]),
        toggledAccessibility: json["toggledAccessibility"] == null
            ? null
            : AccessibilityData.fromJson(json["toggledAccessibility"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "isToggled": isToggled == null ? null : isToggled,
        "untoggledIcon": untoggledIcon == null ? null : untoggledIcon.toJson(),
        "toggledIcon": toggledIcon == null ? null : toggledIcon.toJson(),
        "untoggledTooltip": untoggledTooltip == null
            ? null
            : untoggledTooltipValues.reverse[untoggledTooltip],
        "toggledTooltip": toggledTooltip == null
            ? null
            : toggledTooltipValues.reverse[toggledTooltip],
        "untoggledServiceEndpoint": untoggledServiceEndpoint == null
            ? null
            : untoggledServiceEndpoint.toJson(),
        "toggledServiceEndpoint": toggledServiceEndpoint == null
            ? null
            : toggledServiceEndpoint.toJson(),
        "untoggledAccessibility": untoggledAccessibility == null
            ? null
            : untoggledAccessibility.toJson(),
        "toggledAccessibility":
            toggledAccessibility == null ? null : toggledAccessibility.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class ToggledServiceEndpoint {
  ToggledServiceEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.playlistEditEndpoint,
  });

  final String clickTrackingParams;
  final ContinuationEndpointCommandMetadata commandMetadata;
  final ToggledServiceEndpointPlaylistEditEndpoint playlistEditEndpoint;

  factory ToggledServiceEndpoint.fromRawJson(String str) =>
      ToggledServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ToggledServiceEndpoint.fromJson(Map<String, dynamic> json) =>
      ToggledServiceEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : ContinuationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        playlistEditEndpoint: json["playlistEditEndpoint"] == null
            ? null
            : ToggledServiceEndpointPlaylistEditEndpoint.fromJson(
                json["playlistEditEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "playlistEditEndpoint":
            playlistEditEndpoint == null ? null : playlistEditEndpoint.toJson(),
      };
}

class ToggledServiceEndpointPlaylistEditEndpoint {
  ToggledServiceEndpointPlaylistEditEndpoint({
    this.playlistId,
    this.actions,
  });

  final PlaylistId playlistId;
  final List<StickyAction> actions;

  factory ToggledServiceEndpointPlaylistEditEndpoint.fromRawJson(String str) =>
      ToggledServiceEndpointPlaylistEditEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ToggledServiceEndpointPlaylistEditEndpoint.fromJson(
          Map<String, dynamic> json) =>
      ToggledServiceEndpointPlaylistEditEndpoint(
        playlistId: json["playlistId"] == null
            ? null
            : playlistIdValues.map[json["playlistId"]],
        actions: json["actions"] == null
            ? null
            : List<StickyAction>.from(
                json["actions"].map((x) => StickyAction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "playlistId":
            playlistId == null ? null : playlistIdValues.reverse[playlistId],
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toJson())),
      };
}

class StickyAction {
  StickyAction({
    this.action,
    this.removedVideoId,
  });

  final CunningAction action;
  final String removedVideoId;

  factory StickyAction.fromRawJson(String str) =>
      StickyAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StickyAction.fromJson(Map<String, dynamic> json) => StickyAction(
        action: json["action"] == null
            ? null
            : cunningActionValues.map[json["action"]],
        removedVideoId:
            json["removedVideoId"] == null ? null : json["removedVideoId"],
      );

  Map<String, dynamic> toJson() => {
        "action": action == null ? null : cunningActionValues.reverse[action],
        "removedVideoId": removedVideoId == null ? null : removedVideoId,
      };
}

enum CunningAction { ACTION_REMOVE_VIDEO_BY_VIDEO_ID }

final cunningActionValues = EnumValues({
  "ACTION_REMOVE_VIDEO_BY_VIDEO_ID":
      CunningAction.ACTION_REMOVE_VIDEO_BY_VIDEO_ID
});

enum PlaylistId { WL }

final playlistIdValues = EnumValues({"WL": PlaylistId.WL});

enum ToggledTooltip { ADDED }

final toggledTooltipValues = EnumValues({"Added": ToggledTooltip.ADDED});

class UntoggledServiceEndpoint {
  UntoggledServiceEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.playlistEditEndpoint,
    this.signalServiceEndpoint,
  });

  final String clickTrackingParams;
  final ContinuationEndpointCommandMetadata commandMetadata;
  final UntoggledServiceEndpointPlaylistEditEndpoint playlistEditEndpoint;
  final UntoggledServiceEndpointSignalServiceEndpoint signalServiceEndpoint;

  factory UntoggledServiceEndpoint.fromRawJson(String str) =>
      UntoggledServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UntoggledServiceEndpoint.fromJson(Map<String, dynamic> json) =>
      UntoggledServiceEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : ContinuationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        playlistEditEndpoint: json["playlistEditEndpoint"] == null
            ? null
            : UntoggledServiceEndpointPlaylistEditEndpoint.fromJson(
                json["playlistEditEndpoint"]),
        signalServiceEndpoint: json["signalServiceEndpoint"] == null
            ? null
            : UntoggledServiceEndpointSignalServiceEndpoint.fromJson(
                json["signalServiceEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "playlistEditEndpoint":
            playlistEditEndpoint == null ? null : playlistEditEndpoint.toJson(),
        "signalServiceEndpoint": signalServiceEndpoint == null
            ? null
            : signalServiceEndpoint.toJson(),
      };
}

class UntoggledServiceEndpointPlaylistEditEndpoint {
  UntoggledServiceEndpointPlaylistEditEndpoint({
    this.playlistId,
    this.actions,
  });

  final PlaylistId playlistId;
  final List<IndigoAction> actions;

  factory UntoggledServiceEndpointPlaylistEditEndpoint.fromRawJson(
          String str) =>
      UntoggledServiceEndpointPlaylistEditEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UntoggledServiceEndpointPlaylistEditEndpoint.fromJson(
          Map<String, dynamic> json) =>
      UntoggledServiceEndpointPlaylistEditEndpoint(
        playlistId: json["playlistId"] == null
            ? null
            : playlistIdValues.map[json["playlistId"]],
        actions: json["actions"] == null
            ? null
            : List<IndigoAction>.from(
                json["actions"].map((x) => IndigoAction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "playlistId":
            playlistId == null ? null : playlistIdValues.reverse[playlistId],
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toJson())),
      };
}

class IndigoAction {
  IndigoAction({
    this.addedVideoId,
    this.action,
  });

  final String addedVideoId;
  final MagentaAction action;

  factory IndigoAction.fromRawJson(String str) =>
      IndigoAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IndigoAction.fromJson(Map<String, dynamic> json) => IndigoAction(
        addedVideoId:
            json["addedVideoId"] == null ? null : json["addedVideoId"],
        action: json["action"] == null
            ? null
            : magentaActionValues.map[json["action"]],
      );

  Map<String, dynamic> toJson() => {
        "addedVideoId": addedVideoId == null ? null : addedVideoId,
        "action": action == null ? null : magentaActionValues.reverse[action],
      };
}

enum MagentaAction { ACTION_ADD_VIDEO }

final magentaActionValues =
    EnumValues({"ACTION_ADD_VIDEO": MagentaAction.ACTION_ADD_VIDEO});

enum UntoggledTooltip { WATCH_LATER, ADD_TO_QUEUE }

final untoggledTooltipValues = EnumValues({
  "Add to queue": UntoggledTooltip.ADD_TO_QUEUE,
  "Watch later": UntoggledTooltip.WATCH_LATER
});

class ShowingResultsForRenderer {
  ShowingResultsForRenderer({
    this.showingResultsFor,
    this.correctedQuery,
    this.correctedQueryEndpoint,
    this.searchInsteadFor,
    this.originalQuery,
    this.originalQueryEndpoint,
    this.trackingParams,
  });

  final TextElement showingResultsFor;
  final CorrectedQuery correctedQuery;
  final NextEndpointClass correctedQueryEndpoint;
  final TextElement searchInsteadFor;
  final IndexClass originalQuery;
  final OriginalQueryEndpointClass originalQueryEndpoint;
  final String trackingParams;

  factory ShowingResultsForRenderer.fromRawJson(String str) =>
      ShowingResultsForRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ShowingResultsForRenderer.fromJson(Map<String, dynamic> json) =>
      ShowingResultsForRenderer(
        showingResultsFor: json["showingResultsFor"] == null
            ? null
            : TextElement.fromJson(json["showingResultsFor"]),
        correctedQuery: json["correctedQuery"] == null
            ? null
            : CorrectedQuery.fromJson(json["correctedQuery"]),
        correctedQueryEndpoint: json["correctedQueryEndpoint"] == null
            ? null
            : NextEndpointClass.fromJson(json["correctedQueryEndpoint"]),
        searchInsteadFor: json["searchInsteadFor"] == null
            ? null
            : TextElement.fromJson(json["searchInsteadFor"]),
        originalQuery: json["originalQuery"] == null
            ? null
            : IndexClass.fromJson(json["originalQuery"]),
        originalQueryEndpoint: json["originalQueryEndpoint"] == null
            ? null
            : OriginalQueryEndpointClass.fromJson(
                json["originalQueryEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "showingResultsFor":
            showingResultsFor == null ? null : showingResultsFor.toJson(),
        "correctedQuery":
            correctedQuery == null ? null : correctedQuery.toJson(),
        "correctedQueryEndpoint": correctedQueryEndpoint == null
            ? null
            : correctedQueryEndpoint.toJson(),
        "searchInsteadFor":
            searchInsteadFor == null ? null : searchInsteadFor.toJson(),
        "originalQuery": originalQuery == null ? null : originalQuery.toJson(),
        "originalQueryEndpoint": originalQueryEndpoint == null
            ? null
            : originalQueryEndpoint.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class CorrectedQuery {
  CorrectedQuery({
    this.runs,
  });

  final List<CorrectedQueryRun> runs;

  factory CorrectedQuery.fromRawJson(String str) =>
      CorrectedQuery.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CorrectedQuery.fromJson(Map<String, dynamic> json) => CorrectedQuery(
        runs: json["runs"] == null
            ? null
            : List<CorrectedQueryRun>.from(
                json["runs"].map((x) => CorrectedQueryRun.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "runs": runs == null
            ? null
            : List<dynamic>.from(runs.map((x) => x.toJson())),
      };
}

class CorrectedQueryRun {
  CorrectedQueryRun({
    this.text,
    this.italics,
  });

  final String text;
  final bool italics;

  factory CorrectedQueryRun.fromRawJson(String str) =>
      CorrectedQueryRun.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CorrectedQueryRun.fromJson(Map<String, dynamic> json) =>
      CorrectedQueryRun(
        text: json["text"] == null ? null : json["text"],
        italics: json["italics"] == null ? null : json["italics"],
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text,
        "italics": italics == null ? null : italics,
      };
}

class ContentVideoRenderer {
  ContentVideoRenderer({
    this.videoId,
    this.thumbnail,
    this.title,
    this.descriptionSnippet,
    this.longBylineText,
    this.publishedTimeText,
    this.lengthText,
    this.viewCountText,
    this.navigationEndpoint,
    this.ownerBadges,
    this.ownerText,
    this.shortBylineText,
    this.trackingParams,
    this.showActionMenu,
    this.shortViewCountText,
    this.menu,
    this.channelThumbnailSupportedRenderers,
    this.thumbnailOverlays,
    this.richThumbnail,
    this.badges,
  });

  final String videoId;
  final ChannelRendererThumbnail thumbnail;
  final CollapsedStateButtonTextClass title;
  final ThumbnailText descriptionSnippet;
  final OwnerTextClass longBylineText;
  final IndexClass publishedTimeText;
  final LengthTextClass lengthText;
  final IndexClass viewCountText;
  final IndigoNavigationEndpoint navigationEndpoint;
  final List<OwnerBadgeElement> ownerBadges;
  final OwnerTextClass ownerText;
  final OwnerTextClass shortBylineText;
  final String trackingParams;
  final bool showActionMenu;
  final IndexClass shortViewCountText;
  final VideoRendererMenu menu;
  final ChannelThumbnailSupportedRenderers channelThumbnailSupportedRenderers;
  final List<VideoRendererThumbnailOverlay> thumbnailOverlays;
  final RichThumbnail richThumbnail;
  final List<PurpleBadge> badges;

  factory ContentVideoRenderer.fromRawJson(String str) =>
      ContentVideoRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ContentVideoRenderer.fromJson(Map<String, dynamic> json) =>
      ContentVideoRenderer(
        videoId: json["videoId"] == null ? null : json["videoId"],
        thumbnail: json["thumbnail"] == null
            ? null
            : ChannelRendererThumbnail.fromJson(json["thumbnail"]),
        title: json["title"] == null
            ? null
            : CollapsedStateButtonTextClass.fromJson(json["title"]),
        descriptionSnippet: json["descriptionSnippet"] == null
            ? null
            : ThumbnailText.fromJson(json["descriptionSnippet"]),
        longBylineText: json["longBylineText"] == null
            ? null
            : OwnerTextClass.fromJson(json["longBylineText"]),
        publishedTimeText: json["publishedTimeText"] == null
            ? null
            : IndexClass.fromJson(json["publishedTimeText"]),
        lengthText: json["lengthText"] == null
            ? null
            : LengthTextClass.fromJson(json["lengthText"]),
        viewCountText: json["viewCountText"] == null
            ? null
            : IndexClass.fromJson(json["viewCountText"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : IndigoNavigationEndpoint.fromJson(json["navigationEndpoint"]),
        ownerBadges: json["ownerBadges"] == null
            ? null
            : List<OwnerBadgeElement>.from(
                json["ownerBadges"].map((x) => OwnerBadgeElement.fromJson(x))),
        ownerText: json["ownerText"] == null
            ? null
            : OwnerTextClass.fromJson(json["ownerText"]),
        shortBylineText: json["shortBylineText"] == null
            ? null
            : OwnerTextClass.fromJson(json["shortBylineText"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        showActionMenu:
            json["showActionMenu"] == null ? null : json["showActionMenu"],
        shortViewCountText: json["shortViewCountText"] == null
            ? null
            : IndexClass.fromJson(json["shortViewCountText"]),
        menu: json["menu"] == null
            ? null
            : VideoRendererMenu.fromJson(json["menu"]),
        channelThumbnailSupportedRenderers:
            json["channelThumbnailSupportedRenderers"] == null
                ? null
                : ChannelThumbnailSupportedRenderers.fromJson(
                    json["channelThumbnailSupportedRenderers"]),
        thumbnailOverlays: json["thumbnailOverlays"] == null
            ? null
            : List<VideoRendererThumbnailOverlay>.from(json["thumbnailOverlays"]
                .map((x) => VideoRendererThumbnailOverlay.fromJson(x))),
        richThumbnail: json["richThumbnail"] == null
            ? null
            : RichThumbnail.fromJson(json["richThumbnail"]),
        badges: json["badges"] == null
            ? null
            : List<PurpleBadge>.from(
                json["badges"].map((x) => PurpleBadge.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId == null ? null : videoId,
        "thumbnail": thumbnail == null ? null : thumbnail.toJson(),
        "title": title == null ? null : title.toJson(),
        "descriptionSnippet":
            descriptionSnippet == null ? null : descriptionSnippet.toJson(),
        "longBylineText":
            longBylineText == null ? null : longBylineText.toJson(),
        "publishedTimeText":
            publishedTimeText == null ? null : publishedTimeText.toJson(),
        "lengthText": lengthText == null ? null : lengthText.toJson(),
        "viewCountText": viewCountText == null ? null : viewCountText.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "ownerBadges": ownerBadges == null
            ? null
            : List<dynamic>.from(ownerBadges.map((x) => x.toJson())),
        "ownerText": ownerText == null ? null : ownerText.toJson(),
        "shortBylineText":
            shortBylineText == null ? null : shortBylineText.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "showActionMenu": showActionMenu == null ? null : showActionMenu,
        "shortViewCountText":
            shortViewCountText == null ? null : shortViewCountText.toJson(),
        "menu": menu == null ? null : menu.toJson(),
        "channelThumbnailSupportedRenderers":
            channelThumbnailSupportedRenderers == null
                ? null
                : channelThumbnailSupportedRenderers.toJson(),
        "thumbnailOverlays": thumbnailOverlays == null
            ? null
            : List<dynamic>.from(thumbnailOverlays.map((x) => x.toJson())),
        "richThumbnail": richThumbnail == null ? null : richThumbnail.toJson(),
        "badges": badges == null
            ? null
            : List<dynamic>.from(badges.map((x) => x.toJson())),
      };
}

class IndigoNavigationEndpoint {
  IndigoNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.watchEndpoint,
  });

  final String clickTrackingParams;
  final SearchEndpointCommandMetadata commandMetadata;
  final TentacledWatchEndpoint watchEndpoint;

  factory IndigoNavigationEndpoint.fromRawJson(String str) =>
      IndigoNavigationEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IndigoNavigationEndpoint.fromJson(Map<String, dynamic> json) =>
      IndigoNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : SearchEndpointCommandMetadata.fromJson(json["commandMetadata"]),
        watchEndpoint: json["watchEndpoint"] == null
            ? null
            : TentacledWatchEndpoint.fromJson(json["watchEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "watchEndpoint": watchEndpoint == null ? null : watchEndpoint.toJson(),
      };
}

class TentacledWatchEndpoint {
  TentacledWatchEndpoint({
    this.videoId,
    this.params,
  });

  final String videoId;
  final String params;

  factory TentacledWatchEndpoint.fromRawJson(String str) =>
      TentacledWatchEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledWatchEndpoint.fromJson(Map<String, dynamic> json) =>
      TentacledWatchEndpoint(
        videoId: json["videoId"] == null ? null : json["videoId"],
        params: json["params"] == null ? null : json["params"],
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId == null ? null : videoId,
        "params": params == null ? null : params,
      };
}

class SubMenu {
  SubMenu({
    this.searchSubMenuRenderer,
  });

  final SearchSubMenuRenderer searchSubMenuRenderer;

  factory SubMenu.fromRawJson(String str) => SubMenu.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SubMenu.fromJson(Map<String, dynamic> json) => SubMenu(
        searchSubMenuRenderer: json["searchSubMenuRenderer"] == null
            ? null
            : SearchSubMenuRenderer.fromJson(json["searchSubMenuRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "searchSubMenuRenderer": searchSubMenuRenderer == null
            ? null
            : searchSubMenuRenderer.toJson(),
      };
}

class SearchSubMenuRenderer {
  SearchSubMenuRenderer({
    this.title,
    this.groups,
    this.trackingParams,
    this.button,
  });

  final TextElement title;
  final List<Group> groups;
  final String trackingParams;
  final SearchSubMenuRendererButton button;

  factory SearchSubMenuRenderer.fromRawJson(String str) =>
      SearchSubMenuRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SearchSubMenuRenderer.fromJson(Map<String, dynamic> json) =>
      SearchSubMenuRenderer(
        title:
            json["title"] == null ? null : TextElement.fromJson(json["title"]),
        groups: json["groups"] == null
            ? null
            : List<Group>.from(json["groups"].map((x) => Group.fromJson(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        button: json["button"] == null
            ? null
            : SearchSubMenuRendererButton.fromJson(json["button"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title.toJson(),
        "groups": groups == null
            ? null
            : List<dynamic>.from(groups.map((x) => x.toJson())),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "button": button == null ? null : button.toJson(),
      };
}

class SearchSubMenuRendererButton {
  SearchSubMenuRendererButton({
    this.toggleButtonRenderer,
  });

  final ButtonToggleButtonRenderer toggleButtonRenderer;

  factory SearchSubMenuRendererButton.fromRawJson(String str) =>
      SearchSubMenuRendererButton.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SearchSubMenuRendererButton.fromJson(Map<String, dynamic> json) =>
      SearchSubMenuRendererButton(
        toggleButtonRenderer: json["toggleButtonRenderer"] == null
            ? null
            : ButtonToggleButtonRenderer.fromJson(json["toggleButtonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "toggleButtonRenderer":
            toggleButtonRenderer == null ? null : toggleButtonRenderer.toJson(),
      };
}

class ButtonToggleButtonRenderer {
  ButtonToggleButtonRenderer({
    this.style,
    this.isToggled,
    this.isDisabled,
    this.defaultIcon,
    this.defaultText,
    this.accessibility,
    this.trackingParams,
    this.defaultTooltip,
    this.toggledTooltip,
    this.toggledStyle,
    this.accessibilityData,
  });

  final ToggledStyleClass style;
  final bool isToggled;
  final bool isDisabled;
  final IconImage defaultIcon;
  final TextElement defaultText;
  final Accessibility accessibility;
  final String trackingParams;
  final String defaultTooltip;
  final String toggledTooltip;
  final ToggledStyleClass toggledStyle;
  final AccessibilityData accessibilityData;

  factory ButtonToggleButtonRenderer.fromRawJson(String str) =>
      ButtonToggleButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ButtonToggleButtonRenderer.fromJson(Map<String, dynamic> json) =>
      ButtonToggleButtonRenderer(
        style: json["style"] == null
            ? null
            : ToggledStyleClass.fromJson(json["style"]),
        isToggled: json["isToggled"] == null ? null : json["isToggled"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        defaultIcon: json["defaultIcon"] == null
            ? null
            : IconImage.fromJson(json["defaultIcon"]),
        defaultText: json["defaultText"] == null
            ? null
            : TextElement.fromJson(json["defaultText"]),
        accessibility: json["accessibility"] == null
            ? null
            : Accessibility.fromJson(json["accessibility"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        defaultTooltip:
            json["defaultTooltip"] == null ? null : json["defaultTooltip"],
        toggledTooltip:
            json["toggledTooltip"] == null ? null : json["toggledTooltip"],
        toggledStyle: json["toggledStyle"] == null
            ? null
            : ToggledStyleClass.fromJson(json["toggledStyle"]),
        accessibilityData: json["accessibilityData"] == null
            ? null
            : AccessibilityData.fromJson(json["accessibilityData"]),
      );

  Map<String, dynamic> toJson() => {
        "style": style == null ? null : style.toJson(),
        "isToggled": isToggled == null ? null : isToggled,
        "isDisabled": isDisabled == null ? null : isDisabled,
        "defaultIcon": defaultIcon == null ? null : defaultIcon.toJson(),
        "defaultText": defaultText == null ? null : defaultText.toJson(),
        "accessibility": accessibility == null ? null : accessibility.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "defaultTooltip": defaultTooltip == null ? null : defaultTooltip,
        "toggledTooltip": toggledTooltip == null ? null : toggledTooltip,
        "toggledStyle": toggledStyle == null ? null : toggledStyle.toJson(),
        "accessibilityData":
            accessibilityData == null ? null : accessibilityData.toJson(),
      };
}

class ToggledStyleClass {
  ToggledStyleClass({
    this.styleType,
  });

  final String styleType;

  factory ToggledStyleClass.fromRawJson(String str) =>
      ToggledStyleClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ToggledStyleClass.fromJson(Map<String, dynamic> json) =>
      ToggledStyleClass(
        styleType: json["styleType"] == null ? null : json["styleType"],
      );

  Map<String, dynamic> toJson() => {
        "styleType": styleType == null ? null : styleType,
      };
}

class Group {
  Group({
    this.searchFilterGroupRenderer,
  });

  final SearchFilterGroupRenderer searchFilterGroupRenderer;

  factory Group.fromRawJson(String str) => Group.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Group.fromJson(Map<String, dynamic> json) => Group(
        searchFilterGroupRenderer: json["searchFilterGroupRenderer"] == null
            ? null
            : SearchFilterGroupRenderer.fromJson(
                json["searchFilterGroupRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "searchFilterGroupRenderer": searchFilterGroupRenderer == null
            ? null
            : searchFilterGroupRenderer.toJson(),
      };
}

class SearchFilterGroupRenderer {
  SearchFilterGroupRenderer({
    this.title,
    this.filters,
    this.trackingParams,
  });

  final IndexClass title;
  final List<Filter> filters;
  final String trackingParams;

  factory SearchFilterGroupRenderer.fromRawJson(String str) =>
      SearchFilterGroupRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SearchFilterGroupRenderer.fromJson(Map<String, dynamic> json) =>
      SearchFilterGroupRenderer(
        title:
            json["title"] == null ? null : IndexClass.fromJson(json["title"]),
        filters: json["filters"] == null
            ? null
            : List<Filter>.from(json["filters"].map((x) => Filter.fromJson(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title.toJson(),
        "filters": filters == null
            ? null
            : List<dynamic>.from(filters.map((x) => x.toJson())),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class Filter {
  Filter({
    this.searchFilterRenderer,
  });

  final SearchFilterRenderer searchFilterRenderer;

  factory Filter.fromRawJson(String str) => Filter.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Filter.fromJson(Map<String, dynamic> json) => Filter(
        searchFilterRenderer: json["searchFilterRenderer"] == null
            ? null
            : SearchFilterRenderer.fromJson(json["searchFilterRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "searchFilterRenderer":
            searchFilterRenderer == null ? null : searchFilterRenderer.toJson(),
      };
}

class SearchFilterRenderer {
  SearchFilterRenderer({
    this.label,
    this.navigationEndpoint,
    this.tooltip,
    this.trackingParams,
    this.status,
  });

  final IndexClass label;
  final OriginalQueryEndpointClass navigationEndpoint;
  final String tooltip;
  final String trackingParams;
  final String status;

  factory SearchFilterRenderer.fromRawJson(String str) =>
      SearchFilterRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SearchFilterRenderer.fromJson(Map<String, dynamic> json) =>
      SearchFilterRenderer(
        label:
            json["label"] == null ? null : IndexClass.fromJson(json["label"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : OriginalQueryEndpointClass.fromJson(json["navigationEndpoint"]),
        tooltip: json["tooltip"] == null ? null : json["tooltip"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        status: json["status"] == null ? null : json["status"],
      );

  Map<String, dynamic> toJson() => {
        "label": label == null ? null : label.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "tooltip": tooltip == null ? null : tooltip,
        "trackingParams": trackingParams == null ? null : trackingParams,
        "status": status == null ? null : status,
      };
}

class Metadata {
  Metadata({
    this.playlistMetadataRenderer,
  });

  final PlaylistMetadataRenderer playlistMetadataRenderer;

  factory Metadata.fromRawJson(String str) =>
      Metadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Metadata.fromJson(Map<String, dynamic> json) => Metadata(
        playlistMetadataRenderer: json["playlistMetadataRenderer"] == null
            ? null
            : PlaylistMetadataRenderer.fromJson(
                json["playlistMetadataRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "playlistMetadataRenderer": playlistMetadataRenderer == null
            ? null
            : playlistMetadataRenderer.toJson(),
      };
}

class PlaylistMetadataRenderer {
  PlaylistMetadataRenderer({
    this.title,
    this.description,
    this.androidAppindexingLink,
    this.iosAppindexingLink,
    this.playUrl,
    this.androidPlayUrl,
    this.albumName,
  });

  final String title;
  final String description;
  final String androidAppindexingLink;
  final String iosAppindexingLink;
  final String playUrl;
  final String androidPlayUrl;
  final String albumName;

  factory PlaylistMetadataRenderer.fromRawJson(String str) =>
      PlaylistMetadataRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlaylistMetadataRenderer.fromJson(Map<String, dynamic> json) =>
      PlaylistMetadataRenderer(
        title: json["title"] == null ? null : json["title"],
        description: json["description"] == null ? null : json["description"],
        androidAppindexingLink: json["androidAppindexingLink"] == null
            ? null
            : json["androidAppindexingLink"],
        iosAppindexingLink: json["iosAppindexingLink"] == null
            ? null
            : json["iosAppindexingLink"],
        playUrl: json["playUrl"] == null ? null : json["playUrl"],
        androidPlayUrl:
            json["androidPlayUrl"] == null ? null : json["androidPlayUrl"],
        albumName: json["albumName"] == null ? null : json["albumName"],
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title,
        "description": description == null ? null : description,
        "androidAppindexingLink":
            androidAppindexingLink == null ? null : androidAppindexingLink,
        "iosAppindexingLink":
            iosAppindexingLink == null ? null : iosAppindexingLink,
        "playUrl": playUrl == null ? null : playUrl,
        "androidPlayUrl": androidPlayUrl == null ? null : androidPlayUrl,
        "albumName": albumName == null ? null : albumName,
      };
}

class Microformat {
  Microformat({
    this.microformatDataRenderer,
  });

  final MicroformatDataRenderer microformatDataRenderer;

  factory Microformat.fromRawJson(String str) =>
      Microformat.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Microformat.fromJson(Map<String, dynamic> json) => Microformat(
        microformatDataRenderer: json["microformatDataRenderer"] == null
            ? null
            : MicroformatDataRenderer.fromJson(json["microformatDataRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "microformatDataRenderer": microformatDataRenderer == null
            ? null
            : microformatDataRenderer.toJson(),
      };
}

class MicroformatDataRenderer {
  MicroformatDataRenderer({
    this.urlCanonical,
    this.title,
    this.description,
    this.thumbnail,
    this.siteName,
    this.appName,
    this.androidPackage,
    this.iosAppStoreId,
    this.iosAppArguments,
    this.ogType,
    this.urlApplinksWeb,
    this.urlApplinksIos,
    this.urlApplinksAndroid,
    this.urlTwitterIos,
    this.urlTwitterAndroid,
    this.twitterCardType,
    this.twitterSiteHandle,
    this.schemaDotOrgType,
    this.noindex,
    this.unlisted,
    this.linkAlternates,
  });

  final String urlCanonical;
  final String title;
  final String description;
  final MicroformatDataRendererThumbnail thumbnail;
  final String siteName;
  final String appName;
  final String androidPackage;
  final String iosAppStoreId;
  final String iosAppArguments;
  final String ogType;
  final String urlApplinksWeb;
  final String urlApplinksIos;
  final String urlApplinksAndroid;
  final String urlTwitterIos;
  final String urlTwitterAndroid;
  final String twitterCardType;
  final String twitterSiteHandle;
  final String schemaDotOrgType;
  final dynamic noindex;
  final String unlisted;
  final List<LinkAlternate> linkAlternates;

  factory MicroformatDataRenderer.fromRawJson(String str) =>
      MicroformatDataRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MicroformatDataRenderer.fromJson(Map<String, dynamic> json) =>
      MicroformatDataRenderer(
        urlCanonical:
            json["urlCanonical"] == null ? null : json["urlCanonical"],
        title: json["title"] == null ? null : json["title"],
        description: json["description"] == null ? null : json["description"],
        thumbnail: json["thumbnail"] == null
            ? null
            : MicroformatDataRendererThumbnail.fromJson(json["thumbnail"]),
        siteName: json["siteName"] == null ? null : json["siteName"],
        appName: json["appName"] == null ? null : json["appName"],
        androidPackage:
            json["androidPackage"] == null ? null : json["androidPackage"],
        iosAppStoreId:
            json["iosAppStoreId"] == null ? null : json["iosAppStoreId"],
        iosAppArguments:
            json["iosAppArguments"] == null ? null : json["iosAppArguments"],
        ogType: json["ogType"] == null ? null : json["ogType"],
        urlApplinksWeb:
            json["urlApplinksWeb"] == null ? null : json["urlApplinksWeb"],
        urlApplinksIos:
            json["urlApplinksIos"] == null ? null : json["urlApplinksIos"],
        urlApplinksAndroid: json["urlApplinksAndroid"] == null
            ? null
            : json["urlApplinksAndroid"],
        urlTwitterIos:
            json["urlTwitterIos"] == null ? null : json["urlTwitterIos"],
        urlTwitterAndroid: json["urlTwitterAndroid"] == null
            ? null
            : json["urlTwitterAndroid"],
        twitterCardType:
            json["twitterCardType"] == null ? null : json["twitterCardType"],
        twitterSiteHandle: json["twitterSiteHandle"] == null
            ? null
            : json["twitterSiteHandle"],
        schemaDotOrgType:
            json["schemaDotOrgType"] == null ? null : json["schemaDotOrgType"],
        noindex: json["noindex"] == null ? null : json["noindex"],
        unlisted: json["unlisted"] == null ? null : json["unlisted"],
        linkAlternates: json["linkAlternates"] == null
            ? null
            : List<LinkAlternate>.from(
                json["linkAlternates"].map((x) => LinkAlternate.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "urlCanonical": urlCanonical == null ? null : urlCanonical,
        "title": title == null ? null : title,
        "description": description == null ? null : description,
        "thumbnail": thumbnail == null ? null : thumbnail.toJson(),
        "siteName": siteName == null ? null : siteName,
        "appName": appName == null ? null : appName,
        "androidPackage": androidPackage == null ? null : androidPackage,
        "iosAppStoreId": iosAppStoreId == null ? null : iosAppStoreId,
        "iosAppArguments": iosAppArguments == null ? null : iosAppArguments,
        "ogType": ogType == null ? null : ogType,
        "urlApplinksWeb": urlApplinksWeb == null ? null : urlApplinksWeb,
        "urlApplinksIos": urlApplinksIos == null ? null : urlApplinksIos,
        "urlApplinksAndroid":
            urlApplinksAndroid == null ? null : urlApplinksAndroid,
        "urlTwitterIos": urlTwitterIos == null ? null : urlTwitterIos,
        "urlTwitterAndroid":
            urlTwitterAndroid == null ? null : urlTwitterAndroid,
        "twitterCardType": twitterCardType == null ? null : twitterCardType,
        "twitterSiteHandle":
            twitterSiteHandle == null ? null : twitterSiteHandle,
        "schemaDotOrgType": schemaDotOrgType == null ? null : schemaDotOrgType,
        "noindex": noindex == null ? null : noindex,
        "unlisted": unlisted == null ? null : unlisted,
        "linkAlternates": linkAlternates == null
            ? null
            : List<dynamic>.from(linkAlternates.map((x) => x.toJson())),
      };
}

class LinkAlternate {
  LinkAlternate({
    this.hrefUrl,
  });

  final String hrefUrl;

  factory LinkAlternate.fromRawJson(String str) =>
      LinkAlternate.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LinkAlternate.fromJson(Map<String, dynamic> json) => LinkAlternate(
        hrefUrl: json["hrefUrl"] == null ? null : json["hrefUrl"],
      );

  Map<String, dynamic> toJson() => {
        "hrefUrl": hrefUrl == null ? null : hrefUrl,
      };
}

class MicroformatDataRendererThumbnail {
  MicroformatDataRendererThumbnail({
    this.thumbnails,
  });

  final List<TentacledThumbnail> thumbnails;

  factory MicroformatDataRendererThumbnail.fromRawJson(String str) =>
      MicroformatDataRendererThumbnail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MicroformatDataRendererThumbnail.fromJson(
          Map<String, dynamic> json) =>
      MicroformatDataRendererThumbnail(
        thumbnails: json["thumbnails"] == null
            ? null
            : List<TentacledThumbnail>.from(
                json["thumbnails"].map((x) => TentacledThumbnail.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "thumbnails": thumbnails == null
            ? null
            : List<dynamic>.from(thumbnails.map((x) => x.toJson())),
      };
}

class TentacledThumbnail {
  TentacledThumbnail({
    this.url,
    this.width,
    this.height,
  });

  final String url;
  final dynamic width;
  final dynamic height;

  factory TentacledThumbnail.fromRawJson(String str) =>
      TentacledThumbnail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledThumbnail.fromJson(Map<String, dynamic> json) =>
      TentacledThumbnail(
        url: json["url"] == null ? null : json["url"],
        width: json["width"] == null ? null : json["width"],
        height: json["height"] == null ? null : json["height"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "width": width == null ? null : width,
        "height": height == null ? null : height,
      };
}

class OnResponseReceivedAction {
  OnResponseReceivedAction({
    this.clickTrackingParams,
    this.appendContinuationItemsAction,
  });

  final String clickTrackingParams;
  final OnResponseReceivedActionAppendContinuationItemsAction
      appendContinuationItemsAction;

  factory OnResponseReceivedAction.fromRawJson(String str) =>
      OnResponseReceivedAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OnResponseReceivedAction.fromJson(Map<String, dynamic> json) =>
      OnResponseReceivedAction(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        appendContinuationItemsAction: json["appendContinuationItemsAction"] ==
                null
            ? null
            : OnResponseReceivedActionAppendContinuationItemsAction.fromJson(
                json["appendContinuationItemsAction"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "appendContinuationItemsAction": appendContinuationItemsAction == null
            ? null
            : appendContinuationItemsAction.toJson(),
      };
}

class OnResponseReceivedActionAppendContinuationItemsAction {
  OnResponseReceivedActionAppendContinuationItemsAction({
    this.continuationItems,
    this.targetId,
  });

  final List<PurpleContinuationItem> continuationItems;
  final TId targetId;

  factory OnResponseReceivedActionAppendContinuationItemsAction.fromRawJson(
          String str) =>
      OnResponseReceivedActionAppendContinuationItemsAction.fromJson(
          json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OnResponseReceivedActionAppendContinuationItemsAction.fromJson(
          Map<String, dynamic> json) =>
      OnResponseReceivedActionAppendContinuationItemsAction(
        continuationItems: json["continuationItems"] == null
            ? null
            : List<PurpleContinuationItem>.from(json["continuationItems"]
                .map((x) => PurpleContinuationItem.fromJson(x))),
        targetId:
            json["targetId"] == null ? null : tIdValues.map[json["targetId"]],
      );

  Map<String, dynamic> toJson() => {
        "continuationItems": continuationItems == null
            ? null
            : List<dynamic>.from(continuationItems.map((x) => x.toJson())),
        "targetId": targetId == null ? null : tIdValues.reverse[targetId],
      };
}

class PurpleContinuationItem {
  PurpleContinuationItem({
    this.playlistVideoRenderer,
    this.continuationItemRenderer,
  });

  final ContinuationItemPlaylistVideoRenderer playlistVideoRenderer;
  final ContinuationItemRenderer continuationItemRenderer;

  factory PurpleContinuationItem.fromRawJson(String str) =>
      PurpleContinuationItem.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleContinuationItem.fromJson(Map<String, dynamic> json) =>
      PurpleContinuationItem(
        playlistVideoRenderer: json["playlistVideoRenderer"] == null
            ? null
            : ContinuationItemPlaylistVideoRenderer.fromJson(
                json["playlistVideoRenderer"]),
        continuationItemRenderer: json["continuationItemRenderer"] == null
            ? null
            : ContinuationItemRenderer.fromJson(
                json["continuationItemRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "playlistVideoRenderer": playlistVideoRenderer == null
            ? null
            : playlistVideoRenderer.toJson(),
        "continuationItemRenderer": continuationItemRenderer == null
            ? null
            : continuationItemRenderer.toJson(),
      };
}

class ContinuationItemPlaylistVideoRenderer {
  ContinuationItemPlaylistVideoRenderer({
    this.videoId,
    this.thumbnail,
    this.title,
    this.index,
    this.shortBylineText,
    this.lengthText,
    this.navigationEndpoint,
    this.lengthSeconds,
    this.trackingParams,
    this.isPlayable,
    this.menu,
    this.thumbnailOverlays,
  });

  final String videoId;
  final ChannelRendererThumbnail thumbnail;
  final CollapsedStateButtonTextClass title;
  final IndexClass index;
  final OwnerTextClass shortBylineText;
  final LengthTextClass lengthText;
  final RadioRendererNavigationEndpoint navigationEndpoint;
  final String lengthSeconds;
  final String trackingParams;
  final bool isPlayable;
  final VideoRendererMenu menu;
  final List<PlaylistVideoRendererThumbnailOverlay> thumbnailOverlays;

  factory ContinuationItemPlaylistVideoRenderer.fromRawJson(String str) =>
      ContinuationItemPlaylistVideoRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ContinuationItemPlaylistVideoRenderer.fromJson(
          Map<String, dynamic> json) =>
      ContinuationItemPlaylistVideoRenderer(
        videoId: json["videoId"] == null ? null : json["videoId"],
        thumbnail: json["thumbnail"] == null
            ? null
            : ChannelRendererThumbnail.fromJson(json["thumbnail"]),
        title: json["title"] == null
            ? null
            : CollapsedStateButtonTextClass.fromJson(json["title"]),
        index:
            json["index"] == null ? null : IndexClass.fromJson(json["index"]),
        shortBylineText: json["shortBylineText"] == null
            ? null
            : OwnerTextClass.fromJson(json["shortBylineText"]),
        lengthText: json["lengthText"] == null
            ? null
            : LengthTextClass.fromJson(json["lengthText"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : RadioRendererNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
        lengthSeconds:
            json["lengthSeconds"] == null ? null : json["lengthSeconds"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        isPlayable: json["isPlayable"] == null ? null : json["isPlayable"],
        menu: json["menu"] == null
            ? null
            : VideoRendererMenu.fromJson(json["menu"]),
        thumbnailOverlays: json["thumbnailOverlays"] == null
            ? null
            : List<PlaylistVideoRendererThumbnailOverlay>.from(
                json["thumbnailOverlays"].map(
                    (x) => PlaylistVideoRendererThumbnailOverlay.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId == null ? null : videoId,
        "thumbnail": thumbnail == null ? null : thumbnail.toJson(),
        "title": title == null ? null : title.toJson(),
        "index": index == null ? null : index.toJson(),
        "shortBylineText":
            shortBylineText == null ? null : shortBylineText.toJson(),
        "lengthText": lengthText == null ? null : lengthText.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "lengthSeconds": lengthSeconds == null ? null : lengthSeconds,
        "trackingParams": trackingParams == null ? null : trackingParams,
        "isPlayable": isPlayable == null ? null : isPlayable,
        "menu": menu == null ? null : menu.toJson(),
        "thumbnailOverlays": thumbnailOverlays == null
            ? null
            : List<dynamic>.from(thumbnailOverlays.map((x) => x.toJson())),
      };
}

class OnResponseReceivedCommand {
  OnResponseReceivedCommand({
    this.clickTrackingParams,
    this.appendContinuationItemsAction,
  });

  final String clickTrackingParams;
  final OnResponseReceivedCommandAppendContinuationItemsAction
      appendContinuationItemsAction;

  factory OnResponseReceivedCommand.fromRawJson(String str) =>
      OnResponseReceivedCommand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OnResponseReceivedCommand.fromJson(Map<String, dynamic> json) =>
      OnResponseReceivedCommand(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        appendContinuationItemsAction: json["appendContinuationItemsAction"] ==
                null
            ? null
            : OnResponseReceivedCommandAppendContinuationItemsAction.fromJson(
                json["appendContinuationItemsAction"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "appendContinuationItemsAction": appendContinuationItemsAction == null
            ? null
            : appendContinuationItemsAction.toJson(),
      };
}

class OnResponseReceivedCommandAppendContinuationItemsAction {
  OnResponseReceivedCommandAppendContinuationItemsAction({
    this.continuationItems,
    this.targetId,
  });

  final List<FluffyContinuationItem> continuationItems;
  final String targetId;

  factory OnResponseReceivedCommandAppendContinuationItemsAction.fromRawJson(
          String str) =>
      OnResponseReceivedCommandAppendContinuationItemsAction.fromJson(
          json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OnResponseReceivedCommandAppendContinuationItemsAction.fromJson(
          Map<String, dynamic> json) =>
      OnResponseReceivedCommandAppendContinuationItemsAction(
        continuationItems: json["continuationItems"] == null
            ? null
            : List<FluffyContinuationItem>.from(json["continuationItems"]
                .map((x) => FluffyContinuationItem.fromJson(x))),
        targetId: json["targetId"] == null ? null : json["targetId"],
      );

  Map<String, dynamic> toJson() => {
        "continuationItems": continuationItems == null
            ? null
            : List<dynamic>.from(continuationItems.map((x) => x.toJson())),
        "targetId": targetId == null ? null : targetId,
      };
}

class FluffyContinuationItem {
  FluffyContinuationItem({
    this.itemSectionRenderer,
    this.continuationItemRenderer,
  });

  final ContinuationItemItemSectionRenderer itemSectionRenderer;
  final ContinuationItemRenderer continuationItemRenderer;

  factory FluffyContinuationItem.fromRawJson(String str) =>
      FluffyContinuationItem.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyContinuationItem.fromJson(Map<String, dynamic> json) =>
      FluffyContinuationItem(
        itemSectionRenderer: json["itemSectionRenderer"] == null
            ? null
            : ContinuationItemItemSectionRenderer.fromJson(
                json["itemSectionRenderer"]),
        continuationItemRenderer: json["continuationItemRenderer"] == null
            ? null
            : ContinuationItemRenderer.fromJson(
                json["continuationItemRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "itemSectionRenderer":
            itemSectionRenderer == null ? null : itemSectionRenderer.toJson(),
        "continuationItemRenderer": continuationItemRenderer == null
            ? null
            : continuationItemRenderer.toJson(),
      };
}

class ContinuationItemItemSectionRenderer {
  ContinuationItemItemSectionRenderer({
    this.contents,
    this.trackingParams,
  });

  final List<IndigoContent> contents;
  final String trackingParams;

  factory ContinuationItemItemSectionRenderer.fromRawJson(String str) =>
      ContinuationItemItemSectionRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ContinuationItemItemSectionRenderer.fromJson(
          Map<String, dynamic> json) =>
      ContinuationItemItemSectionRenderer(
        contents: json["contents"] == null
            ? null
            : List<IndigoContent>.from(
                json["contents"].map((x) => IndigoContent.fromJson(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "contents": contents == null
            ? null
            : List<dynamic>.from(contents.map((x) => x.toJson())),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class IndigoContent {
  IndigoContent({
    this.videoRenderer,
    this.playlistRenderer,
  });

  final ContentVideoRenderer videoRenderer;
  final PlaylistRenderer playlistRenderer;

  factory IndigoContent.fromRawJson(String str) =>
      IndigoContent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IndigoContent.fromJson(Map<String, dynamic> json) => IndigoContent(
        videoRenderer: json["videoRenderer"] == null
            ? null
            : ContentVideoRenderer.fromJson(json["videoRenderer"]),
        playlistRenderer: json["playlistRenderer"] == null
            ? null
            : PlaylistRenderer.fromJson(json["playlistRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "videoRenderer": videoRenderer == null ? null : videoRenderer.toJson(),
        "playlistRenderer":
            playlistRenderer == null ? null : playlistRenderer.toJson(),
      };
}

class PlaylistRenderer {
  PlaylistRenderer({
    this.playlistId,
    this.title,
    this.thumbnails,
    this.videoCount,
    this.navigationEndpoint,
    this.viewPlaylistText,
    this.shortBylineText,
    this.publishedTimeText,
    this.videos,
    this.videoCountText,
    this.trackingParams,
    this.thumbnailText,
    this.longBylineText,
    this.thumbnailRenderer,
    this.thumbnailOverlays,
  });

  final TId playlistId;
  final IndexClass title;
  final List<ChannelRendererThumbnail> thumbnails;
  final String videoCount;
  final RadioRendererNavigationEndpoint navigationEndpoint;
  final ViewPlaylistTextClass viewPlaylistText;
  final ViewPlaylistTextClass shortBylineText;
  final IndexClass publishedTimeText;
  final List<PlaylistRendererVideo> videos;
  final TextElement videoCountText;
  final String trackingParams;
  final ThumbnailText thumbnailText;
  final ViewPlaylistTextClass longBylineText;
  final PlaylistRendererThumbnailRenderer thumbnailRenderer;
  final List<PlaylistRendererThumbnailOverlay> thumbnailOverlays;

  factory PlaylistRenderer.fromRawJson(String str) =>
      PlaylistRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlaylistRenderer.fromJson(Map<String, dynamic> json) =>
      PlaylistRenderer(
        playlistId: json["playlistId"] == null
            ? null
            : tIdValues.map[json["playlistId"]],
        title:
            json["title"] == null ? null : IndexClass.fromJson(json["title"]),
        thumbnails: json["thumbnails"] == null
            ? null
            : List<ChannelRendererThumbnail>.from(json["thumbnails"]
                .map((x) => ChannelRendererThumbnail.fromJson(x))),
        videoCount: json["videoCount"] == null ? null : json["videoCount"],
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : RadioRendererNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
        viewPlaylistText: json["viewPlaylistText"] == null
            ? null
            : ViewPlaylistTextClass.fromJson(json["viewPlaylistText"]),
        shortBylineText: json["shortBylineText"] == null
            ? null
            : ViewPlaylistTextClass.fromJson(json["shortBylineText"]),
        publishedTimeText: json["publishedTimeText"] == null
            ? null
            : IndexClass.fromJson(json["publishedTimeText"]),
        videos: json["videos"] == null
            ? null
            : List<PlaylistRendererVideo>.from(
                json["videos"].map((x) => PlaylistRendererVideo.fromJson(x))),
        videoCountText: json["videoCountText"] == null
            ? null
            : TextElement.fromJson(json["videoCountText"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        thumbnailText: json["thumbnailText"] == null
            ? null
            : ThumbnailText.fromJson(json["thumbnailText"]),
        longBylineText: json["longBylineText"] == null
            ? null
            : ViewPlaylistTextClass.fromJson(json["longBylineText"]),
        thumbnailRenderer: json["thumbnailRenderer"] == null
            ? null
            : PlaylistRendererThumbnailRenderer.fromJson(
                json["thumbnailRenderer"]),
        thumbnailOverlays: json["thumbnailOverlays"] == null
            ? null
            : List<PlaylistRendererThumbnailOverlay>.from(
                json["thumbnailOverlays"]
                    .map((x) => PlaylistRendererThumbnailOverlay.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "playlistId": playlistId == null ? null : tIdValues.reverse[playlistId],
        "title": title == null ? null : title.toJson(),
        "thumbnails": thumbnails == null
            ? null
            : List<dynamic>.from(thumbnails.map((x) => x.toJson())),
        "videoCount": videoCount == null ? null : videoCount,
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "viewPlaylistText":
            viewPlaylistText == null ? null : viewPlaylistText.toJson(),
        "shortBylineText":
            shortBylineText == null ? null : shortBylineText.toJson(),
        "publishedTimeText":
            publishedTimeText == null ? null : publishedTimeText.toJson(),
        "videos": videos == null
            ? null
            : List<dynamic>.from(videos.map((x) => x.toJson())),
        "videoCountText":
            videoCountText == null ? null : videoCountText.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "thumbnailText": thumbnailText == null ? null : thumbnailText.toJson(),
        "longBylineText":
            longBylineText == null ? null : longBylineText.toJson(),
        "thumbnailRenderer":
            thumbnailRenderer == null ? null : thumbnailRenderer.toJson(),
        "thumbnailOverlays": thumbnailOverlays == null
            ? null
            : List<dynamic>.from(thumbnailOverlays.map((x) => x.toJson())),
      };
}

class ViewPlaylistTextClass {
  ViewPlaylistTextClass({
    this.runs,
  });

  final List<ViewPlaylistTextRun> runs;

  factory ViewPlaylistTextClass.fromRawJson(String str) =>
      ViewPlaylistTextClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ViewPlaylistTextClass.fromJson(Map<String, dynamic> json) =>
      ViewPlaylistTextClass(
        runs: json["runs"] == null
            ? null
            : List<ViewPlaylistTextRun>.from(
                json["runs"].map((x) => ViewPlaylistTextRun.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "runs": runs == null
            ? null
            : List<dynamic>.from(runs.map((x) => x.toJson())),
      };
}

class ViewPlaylistTextRun {
  ViewPlaylistTextRun({
    this.text,
    this.navigationEndpoint,
  });

  final String text;
  final Endpoint navigationEndpoint;

  factory ViewPlaylistTextRun.fromRawJson(String str) =>
      ViewPlaylistTextRun.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ViewPlaylistTextRun.fromJson(Map<String, dynamic> json) =>
      ViewPlaylistTextRun(
        text: json["text"] == null ? null : json["text"],
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : Endpoint.fromJson(json["navigationEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text,
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
      };
}

class Endpoint {
  Endpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.browseEndpoint,
  });

  final String clickTrackingParams;
  final SearchEndpointCommandMetadata commandMetadata;
  final EndpointBrowseEndpoint browseEndpoint;

  factory Endpoint.fromRawJson(String str) =>
      Endpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Endpoint.fromJson(Map<String, dynamic> json) => Endpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : SearchEndpointCommandMetadata.fromJson(json["commandMetadata"]),
        browseEndpoint: json["browseEndpoint"] == null
            ? null
            : EndpointBrowseEndpoint.fromJson(json["browseEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "browseEndpoint":
            browseEndpoint == null ? null : browseEndpoint.toJson(),
      };
}

class EndpointBrowseEndpoint {
  EndpointBrowseEndpoint({
    this.browseId,
  });

  final String browseId;

  factory EndpointBrowseEndpoint.fromRawJson(String str) =>
      EndpointBrowseEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EndpointBrowseEndpoint.fromJson(Map<String, dynamic> json) =>
      EndpointBrowseEndpoint(
        browseId: json["browseId"] == null ? null : json["browseId"],
      );

  Map<String, dynamic> toJson() => {
        "browseId": browseId == null ? null : browseId,
      };
}

class PlaylistRendererThumbnailOverlay {
  PlaylistRendererThumbnailOverlay({
    this.thumbnailOverlaySidePanelRenderer,
    this.thumbnailOverlayHoverTextRenderer,
    this.thumbnailOverlayNowPlayingRenderer,
  });

  final ThumbnailOverlaySidePanelRenderer thumbnailOverlaySidePanelRenderer;
  final ThumbnailOverlayRenderer thumbnailOverlayHoverTextRenderer;
  final ThumbnailOverlayNowPlayingRenderer thumbnailOverlayNowPlayingRenderer;

  factory PlaylistRendererThumbnailOverlay.fromRawJson(String str) =>
      PlaylistRendererThumbnailOverlay.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlaylistRendererThumbnailOverlay.fromJson(
          Map<String, dynamic> json) =>
      PlaylistRendererThumbnailOverlay(
        thumbnailOverlaySidePanelRenderer:
            json["thumbnailOverlaySidePanelRenderer"] == null
                ? null
                : ThumbnailOverlaySidePanelRenderer.fromJson(
                    json["thumbnailOverlaySidePanelRenderer"]),
        thumbnailOverlayHoverTextRenderer:
            json["thumbnailOverlayHoverTextRenderer"] == null
                ? null
                : ThumbnailOverlayRenderer.fromJson(
                    json["thumbnailOverlayHoverTextRenderer"]),
        thumbnailOverlayNowPlayingRenderer:
            json["thumbnailOverlayNowPlayingRenderer"] == null
                ? null
                : ThumbnailOverlayNowPlayingRenderer.fromJson(
                    json["thumbnailOverlayNowPlayingRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "thumbnailOverlaySidePanelRenderer":
            thumbnailOverlaySidePanelRenderer == null
                ? null
                : thumbnailOverlaySidePanelRenderer.toJson(),
        "thumbnailOverlayHoverTextRenderer":
            thumbnailOverlayHoverTextRenderer == null
                ? null
                : thumbnailOverlayHoverTextRenderer.toJson(),
        "thumbnailOverlayNowPlayingRenderer":
            thumbnailOverlayNowPlayingRenderer == null
                ? null
                : thumbnailOverlayNowPlayingRenderer.toJson(),
      };
}

class ThumbnailOverlaySidePanelRenderer {
  ThumbnailOverlaySidePanelRenderer({
    this.text,
    this.icon,
  });

  final IndexClass text;
  final IconImage icon;

  factory ThumbnailOverlaySidePanelRenderer.fromRawJson(String str) =>
      ThumbnailOverlaySidePanelRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ThumbnailOverlaySidePanelRenderer.fromJson(
          Map<String, dynamic> json) =>
      ThumbnailOverlaySidePanelRenderer(
        text: json["text"] == null ? null : IndexClass.fromJson(json["text"]),
        icon: json["icon"] == null ? null : IconImage.fromJson(json["icon"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text.toJson(),
        "icon": icon == null ? null : icon.toJson(),
      };
}

class PlaylistRendererThumbnailRenderer {
  PlaylistRendererThumbnailRenderer({
    this.playlistVideoThumbnailRenderer,
  });

  final PlaylistThumbnailRenderer playlistVideoThumbnailRenderer;

  factory PlaylistRendererThumbnailRenderer.fromRawJson(String str) =>
      PlaylistRendererThumbnailRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlaylistRendererThumbnailRenderer.fromJson(
          Map<String, dynamic> json) =>
      PlaylistRendererThumbnailRenderer(
        playlistVideoThumbnailRenderer:
            json["playlistVideoThumbnailRenderer"] == null
                ? null
                : PlaylistThumbnailRenderer.fromJson(
                    json["playlistVideoThumbnailRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "playlistVideoThumbnailRenderer": playlistVideoThumbnailRenderer == null
            ? null
            : playlistVideoThumbnailRenderer.toJson(),
      };
}

class PlaylistThumbnailRenderer {
  PlaylistThumbnailRenderer({
    this.thumbnail,
  });

  final ChannelRendererThumbnail thumbnail;

  factory PlaylistThumbnailRenderer.fromRawJson(String str) =>
      PlaylistThumbnailRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlaylistThumbnailRenderer.fromJson(Map<String, dynamic> json) =>
      PlaylistThumbnailRenderer(
        thumbnail: json["thumbnail"] == null
            ? null
            : ChannelRendererThumbnail.fromJson(json["thumbnail"]),
      );

  Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail == null ? null : thumbnail.toJson(),
      };
}

class PlaylistRendererVideo {
  PlaylistRendererVideo({
    this.childVideoRenderer,
  });

  final FluffyChildVideoRenderer childVideoRenderer;

  factory PlaylistRendererVideo.fromRawJson(String str) =>
      PlaylistRendererVideo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlaylistRendererVideo.fromJson(Map<String, dynamic> json) =>
      PlaylistRendererVideo(
        childVideoRenderer: json["childVideoRenderer"] == null
            ? null
            : FluffyChildVideoRenderer.fromJson(json["childVideoRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "childVideoRenderer":
            childVideoRenderer == null ? null : childVideoRenderer.toJson(),
      };
}

class FluffyChildVideoRenderer {
  FluffyChildVideoRenderer({
    this.title,
    this.navigationEndpoint,
    this.lengthText,
    this.videoId,
  });

  final IndexClass title;
  final IndecentNavigationEndpoint navigationEndpoint;
  final LengthTextClass lengthText;
  final String videoId;

  factory FluffyChildVideoRenderer.fromRawJson(String str) =>
      FluffyChildVideoRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyChildVideoRenderer.fromJson(Map<String, dynamic> json) =>
      FluffyChildVideoRenderer(
        title:
            json["title"] == null ? null : IndexClass.fromJson(json["title"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : IndecentNavigationEndpoint.fromJson(json["navigationEndpoint"]),
        lengthText: json["lengthText"] == null
            ? null
            : LengthTextClass.fromJson(json["lengthText"]),
        videoId: json["videoId"] == null ? null : json["videoId"],
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "lengthText": lengthText == null ? null : lengthText.toJson(),
        "videoId": videoId == null ? null : videoId,
      };
}

class IndecentNavigationEndpoint {
  IndecentNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.watchEndpoint,
  });

  final String clickTrackingParams;
  final SearchEndpointCommandMetadata commandMetadata;
  final StickyWatchEndpoint watchEndpoint;

  factory IndecentNavigationEndpoint.fromRawJson(String str) =>
      IndecentNavigationEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IndecentNavigationEndpoint.fromJson(Map<String, dynamic> json) =>
      IndecentNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : SearchEndpointCommandMetadata.fromJson(json["commandMetadata"]),
        watchEndpoint: json["watchEndpoint"] == null
            ? null
            : StickyWatchEndpoint.fromJson(json["watchEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "watchEndpoint": watchEndpoint == null ? null : watchEndpoint.toJson(),
      };
}

class StickyWatchEndpoint {
  StickyWatchEndpoint({
    this.videoId,
    this.playlistId,
  });

  final String videoId;
  final TId playlistId;

  factory StickyWatchEndpoint.fromRawJson(String str) =>
      StickyWatchEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StickyWatchEndpoint.fromJson(Map<String, dynamic> json) =>
      StickyWatchEndpoint(
        videoId: json["videoId"] == null ? null : json["videoId"],
        playlistId: json["playlistId"] == null
            ? null
            : tIdValues.map[json["playlistId"]],
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId == null ? null : videoId,
        "playlistId": playlistId == null ? null : tIdValues.reverse[playlistId],
      };
}

class ResponseContext {
  ResponseContext({
    this.visitorData,
    this.serviceTrackingParams,
    this.mainAppWebResponseContext,
    this.webResponseContextExtensionData,
  });

  final String visitorData;
  final List<ServiceTrackingParam> serviceTrackingParams;
  final MainAppWebResponseContext mainAppWebResponseContext;
  final WebResponseContextExtensionData webResponseContextExtensionData;

  factory ResponseContext.fromRawJson(String str) =>
      ResponseContext.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ResponseContext.fromJson(Map<String, dynamic> json) =>
      ResponseContext(
        visitorData: json["visitorData"] == null ? null : json["visitorData"],
        serviceTrackingParams: json["serviceTrackingParams"] == null
            ? null
            : List<ServiceTrackingParam>.from(json["serviceTrackingParams"]
                .map((x) => ServiceTrackingParam.fromJson(x))),
        mainAppWebResponseContext: json["mainAppWebResponseContext"] == null
            ? null
            : MainAppWebResponseContext.fromJson(
                json["mainAppWebResponseContext"]),
        webResponseContextExtensionData:
            json["webResponseContextExtensionData"] == null
                ? null
                : WebResponseContextExtensionData.fromJson(
                    json["webResponseContextExtensionData"]),
      );

  Map<String, dynamic> toJson() => {
        "visitorData": visitorData == null ? null : visitorData,
        "serviceTrackingParams": serviceTrackingParams == null
            ? null
            : List<dynamic>.from(serviceTrackingParams.map((x) => x.toJson())),
        "mainAppWebResponseContext": mainAppWebResponseContext == null
            ? null
            : mainAppWebResponseContext.toJson(),
        "webResponseContextExtensionData":
            webResponseContextExtensionData == null
                ? null
                : webResponseContextExtensionData.toJson(),
      };
}

class MainAppWebResponseContext {
  MainAppWebResponseContext({
    this.loggedOut,
  });

  final bool loggedOut;

  factory MainAppWebResponseContext.fromRawJson(String str) =>
      MainAppWebResponseContext.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MainAppWebResponseContext.fromJson(Map<String, dynamic> json) =>
      MainAppWebResponseContext(
        loggedOut: json["loggedOut"] == null ? null : json["loggedOut"],
      );

  Map<String, dynamic> toJson() => {
        "loggedOut": loggedOut == null ? null : loggedOut,
      };
}

class ServiceTrackingParam {
  ServiceTrackingParam({
    this.service,
    this.params,
  });

  final String service;
  final List<Param> params;

  factory ServiceTrackingParam.fromRawJson(String str) =>
      ServiceTrackingParam.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ServiceTrackingParam.fromJson(Map<String, dynamic> json) =>
      ServiceTrackingParam(
        service: json["service"] == null ? null : json["service"],
        params: json["params"] == null
            ? null
            : List<Param>.from(json["params"].map((x) => Param.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "service": service == null ? null : service,
        "params": params == null
            ? null
            : List<dynamic>.from(params.map((x) => x.toJson())),
      };
}

class Param {
  Param({
    this.key,
    this.value,
  });

  final String key;
  final String value;

  factory Param.fromRawJson(String str) => Param.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Param.fromJson(Map<String, dynamic> json) => Param(
        key: json["key"] == null ? null : json["key"],
        value: json["value"] == null ? null : json["value"],
      );

  Map<String, dynamic> toJson() => {
        "key": key == null ? null : key,
        "value": value == null ? null : value,
      };
}

class WebResponseContextExtensionData {
  WebResponseContextExtensionData({
    this.hasDecorated,
    this.ytConfigData,
  });

  final bool hasDecorated;
  final YtConfigData ytConfigData;

  factory WebResponseContextExtensionData.fromRawJson(String str) =>
      WebResponseContextExtensionData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WebResponseContextExtensionData.fromJson(Map<String, dynamic> json) =>
      WebResponseContextExtensionData(
        hasDecorated:
            json["hasDecorated"] == null ? null : json["hasDecorated"],
        ytConfigData: json["ytConfigData"] == null
            ? null
            : YtConfigData.fromJson(json["ytConfigData"]),
      );

  Map<String, dynamic> toJson() => {
        "hasDecorated": hasDecorated == null ? null : hasDecorated,
        "ytConfigData": ytConfigData == null ? null : ytConfigData.toJson(),
      };
}

class YtConfigData {
  YtConfigData({
    this.visitorData,
    this.rootVisualElementType,
  });

  final String visitorData;
  final dynamic rootVisualElementType;

  factory YtConfigData.fromRawJson(String str) =>
      YtConfigData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory YtConfigData.fromJson(Map<String, dynamic> json) => YtConfigData(
        visitorData: json["visitorData"] == null ? null : json["visitorData"],
        rootVisualElementType: json["rootVisualElementType"] == null
            ? null
            : json["rootVisualElementType"],
      );

  Map<String, dynamic> toJson() => {
        "visitorData": visitorData == null ? null : visitorData,
        "rootVisualElementType":
            rootVisualElementType == null ? null : rootVisualElementType,
      };
}

class Sidebar {
  Sidebar({
    this.playlistSidebarRenderer,
  });

  final PlaylistSidebarRenderer playlistSidebarRenderer;

  factory Sidebar.fromRawJson(String str) => Sidebar.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Sidebar.fromJson(Map<String, dynamic> json) => Sidebar(
        playlistSidebarRenderer: json["playlistSidebarRenderer"] == null
            ? null
            : PlaylistSidebarRenderer.fromJson(json["playlistSidebarRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "playlistSidebarRenderer": playlistSidebarRenderer == null
            ? null
            : playlistSidebarRenderer.toJson(),
      };
}

class PlaylistSidebarRenderer {
  PlaylistSidebarRenderer({
    this.items,
    this.trackingParams,
  });

  final List<PlaylistSidebarRendererItem> items;
  final String trackingParams;

  factory PlaylistSidebarRenderer.fromRawJson(String str) =>
      PlaylistSidebarRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlaylistSidebarRenderer.fromJson(Map<String, dynamic> json) =>
      PlaylistSidebarRenderer(
        items: json["items"] == null
            ? null
            : List<PlaylistSidebarRendererItem>.from(json["items"]
                .map((x) => PlaylistSidebarRendererItem.fromJson(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "items": items == null
            ? null
            : List<dynamic>.from(items.map((x) => x.toJson())),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class PlaylistSidebarRendererItem {
  PlaylistSidebarRendererItem({
    this.playlistSidebarPrimaryInfoRenderer,
    this.playlistSidebarSecondaryInfoRenderer,
  });

  final PlaylistSidebarPrimaryInfoRenderer playlistSidebarPrimaryInfoRenderer;
  final PlaylistSidebarSecondaryInfoRenderer
      playlistSidebarSecondaryInfoRenderer;

  factory PlaylistSidebarRendererItem.fromRawJson(String str) =>
      PlaylistSidebarRendererItem.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlaylistSidebarRendererItem.fromJson(Map<String, dynamic> json) =>
      PlaylistSidebarRendererItem(
        playlistSidebarPrimaryInfoRenderer:
            json["playlistSidebarPrimaryInfoRenderer"] == null
                ? null
                : PlaylistSidebarPrimaryInfoRenderer.fromJson(
                    json["playlistSidebarPrimaryInfoRenderer"]),
        playlistSidebarSecondaryInfoRenderer:
            json["playlistSidebarSecondaryInfoRenderer"] == null
                ? null
                : PlaylistSidebarSecondaryInfoRenderer.fromJson(
                    json["playlistSidebarSecondaryInfoRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "playlistSidebarPrimaryInfoRenderer":
            playlistSidebarPrimaryInfoRenderer == null
                ? null
                : playlistSidebarPrimaryInfoRenderer.toJson(),
        "playlistSidebarSecondaryInfoRenderer":
            playlistSidebarSecondaryInfoRenderer == null
                ? null
                : playlistSidebarSecondaryInfoRenderer.toJson(),
      };
}

class PlaylistSidebarPrimaryInfoRenderer {
  PlaylistSidebarPrimaryInfoRenderer({
    this.thumbnailRenderer,
    this.title,
    this.stats,
    this.menu,
    this.thumbnailOverlays,
    this.navigationEndpoint,
    this.description,
    this.showMoreText,
    this.badges,
  });

  final PlaylistSidebarPrimaryInfoRendererThumbnailRenderer thumbnailRenderer;
  final PlaylistSidebarPrimaryInfoRendererTitle title;
  final List<Stat> stats;
  final PlaylistSidebarPrimaryInfoRendererMenu menu;
  final List<PlaylistSidebarPrimaryInfoRendererThumbnailOverlay>
      thumbnailOverlays;
  final PlaylistSidebarPrimaryInfoRendererNavigationEndpoint navigationEndpoint;
  final Description description;
  final TextElement showMoreText;
  final List<OwnerBadgeElement> badges;

  factory PlaylistSidebarPrimaryInfoRenderer.fromRawJson(String str) =>
      PlaylistSidebarPrimaryInfoRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlaylistSidebarPrimaryInfoRenderer.fromJson(
          Map<String, dynamic> json) =>
      PlaylistSidebarPrimaryInfoRenderer(
        thumbnailRenderer: json["thumbnailRenderer"] == null
            ? null
            : PlaylistSidebarPrimaryInfoRendererThumbnailRenderer.fromJson(
                json["thumbnailRenderer"]),
        title: json["title"] == null
            ? null
            : PlaylistSidebarPrimaryInfoRendererTitle.fromJson(json["title"]),
        stats: json["stats"] == null
            ? null
            : List<Stat>.from(json["stats"].map((x) => Stat.fromJson(x))),
        menu: json["menu"] == null
            ? null
            : PlaylistSidebarPrimaryInfoRendererMenu.fromJson(json["menu"]),
        thumbnailOverlays: json["thumbnailOverlays"] == null
            ? null
            : List<PlaylistSidebarPrimaryInfoRendererThumbnailOverlay>.from(
                json["thumbnailOverlays"].map((x) =>
                    PlaylistSidebarPrimaryInfoRendererThumbnailOverlay.fromJson(
                        x))),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : PlaylistSidebarPrimaryInfoRendererNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
        description: json["description"] == null
            ? null
            : Description.fromJson(json["description"]),
        showMoreText: json["showMoreText"] == null
            ? null
            : TextElement.fromJson(json["showMoreText"]),
        badges: json["badges"] == null
            ? null
            : List<OwnerBadgeElement>.from(
                json["badges"].map((x) => OwnerBadgeElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "thumbnailRenderer":
            thumbnailRenderer == null ? null : thumbnailRenderer.toJson(),
        "title": title == null ? null : title.toJson(),
        "stats": stats == null
            ? null
            : List<dynamic>.from(stats.map((x) => x.toJson())),
        "menu": menu == null ? null : menu.toJson(),
        "thumbnailOverlays": thumbnailOverlays == null
            ? null
            : List<dynamic>.from(thumbnailOverlays.map((x) => x.toJson())),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "description": description == null ? null : description.toJson(),
        "showMoreText": showMoreText == null ? null : showMoreText.toJson(),
        "badges": badges == null
            ? null
            : List<dynamic>.from(badges.map((x) => x.toJson())),
      };
}

class Description {
  Description({
    this.simpleText,
    this.runs,
  });

  final String simpleText;
  final List<DescriptionRun> runs;

  factory Description.fromRawJson(String str) =>
      Description.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Description.fromJson(Map<String, dynamic> json) => Description(
        simpleText: json["simpleText"] == null ? null : json["simpleText"],
        runs: json["runs"] == null
            ? null
            : List<DescriptionRun>.from(
                json["runs"].map((x) => DescriptionRun.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "simpleText": simpleText == null ? null : simpleText,
        "runs": runs == null
            ? null
            : List<dynamic>.from(runs.map((x) => x.toJson())),
      };
}

class DescriptionRun {
  DescriptionRun({
    this.text,
    this.navigationEndpoint,
  });

  final String text;
  final HilariousNavigationEndpoint navigationEndpoint;

  factory DescriptionRun.fromRawJson(String str) =>
      DescriptionRun.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DescriptionRun.fromJson(Map<String, dynamic> json) => DescriptionRun(
        text: json["text"] == null ? null : json["text"],
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : HilariousNavigationEndpoint.fromJson(json["navigationEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text,
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
      };
}

class HilariousNavigationEndpoint {
  HilariousNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.urlEndpoint,
  });

  final String clickTrackingParams;
  final SearchEndpointCommandMetadata commandMetadata;
  final PurpleUrlEndpoint urlEndpoint;

  factory HilariousNavigationEndpoint.fromRawJson(String str) =>
      HilariousNavigationEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HilariousNavigationEndpoint.fromJson(Map<String, dynamic> json) =>
      HilariousNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : SearchEndpointCommandMetadata.fromJson(json["commandMetadata"]),
        urlEndpoint: json["urlEndpoint"] == null
            ? null
            : PurpleUrlEndpoint.fromJson(json["urlEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "urlEndpoint": urlEndpoint == null ? null : urlEndpoint.toJson(),
      };
}

class PurpleUrlEndpoint {
  PurpleUrlEndpoint({
    this.url,
    this.target,
    this.nofollow,
  });

  final String url;
  final String target;
  final bool nofollow;

  factory PurpleUrlEndpoint.fromRawJson(String str) =>
      PurpleUrlEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleUrlEndpoint.fromJson(Map<String, dynamic> json) =>
      PurpleUrlEndpoint(
        url: json["url"] == null ? null : json["url"],
        target: json["target"] == null ? null : json["target"],
        nofollow: json["nofollow"] == null ? null : json["nofollow"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "target": target == null ? null : target,
        "nofollow": nofollow == null ? null : nofollow,
      };
}

class PlaylistSidebarPrimaryInfoRendererMenu {
  PlaylistSidebarPrimaryInfoRendererMenu({
    this.menuRenderer,
  });

  final TentacledMenuRenderer menuRenderer;

  factory PlaylistSidebarPrimaryInfoRendererMenu.fromRawJson(String str) =>
      PlaylistSidebarPrimaryInfoRendererMenu.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlaylistSidebarPrimaryInfoRendererMenu.fromJson(
          Map<String, dynamic> json) =>
      PlaylistSidebarPrimaryInfoRendererMenu(
        menuRenderer: json["menuRenderer"] == null
            ? null
            : TentacledMenuRenderer.fromJson(json["menuRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "menuRenderer": menuRenderer == null ? null : menuRenderer.toJson(),
      };
}

class TentacledMenuRenderer {
  TentacledMenuRenderer({
    this.items,
    this.trackingParams,
    this.topLevelButtons,
    this.accessibility,
  });

  final List<TentacledItem> items;
  final String trackingParams;
  final List<TopLevelButton> topLevelButtons;
  final AccessibilityData accessibility;

  factory TentacledMenuRenderer.fromRawJson(String str) =>
      TentacledMenuRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledMenuRenderer.fromJson(Map<String, dynamic> json) =>
      TentacledMenuRenderer(
        items: json["items"] == null
            ? null
            : List<TentacledItem>.from(
                json["items"].map((x) => TentacledItem.fromJson(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        topLevelButtons: json["topLevelButtons"] == null
            ? null
            : List<TopLevelButton>.from(
                json["topLevelButtons"].map((x) => TopLevelButton.fromJson(x))),
        accessibility: json["accessibility"] == null
            ? null
            : AccessibilityData.fromJson(json["accessibility"]),
      );

  Map<String, dynamic> toJson() => {
        "items": items == null
            ? null
            : List<dynamic>.from(items.map((x) => x.toJson())),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "topLevelButtons": topLevelButtons == null
            ? null
            : List<dynamic>.from(topLevelButtons.map((x) => x.toJson())),
        "accessibility": accessibility == null ? null : accessibility.toJson(),
      };
}

class TentacledItem {
  TentacledItem({
    this.menuServiceItemRenderer,
  });

  final TentacledMenuServiceItemRenderer menuServiceItemRenderer;

  factory TentacledItem.fromRawJson(String str) =>
      TentacledItem.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledItem.fromJson(Map<String, dynamic> json) => TentacledItem(
        menuServiceItemRenderer: json["menuServiceItemRenderer"] == null
            ? null
            : TentacledMenuServiceItemRenderer.fromJson(
                json["menuServiceItemRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "menuServiceItemRenderer": menuServiceItemRenderer == null
            ? null
            : menuServiceItemRenderer.toJson(),
      };
}

class TentacledMenuServiceItemRenderer {
  TentacledMenuServiceItemRenderer({
    this.text,
    this.icon,
    this.serviceEndpoint,
    this.trackingParams,
  });

  final TextElement text;
  final IconImage icon;
  final TentacledServiceEndpoint serviceEndpoint;
  final String trackingParams;

  factory TentacledMenuServiceItemRenderer.fromRawJson(String str) =>
      TentacledMenuServiceItemRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledMenuServiceItemRenderer.fromJson(
          Map<String, dynamic> json) =>
      TentacledMenuServiceItemRenderer(
        text: json["text"] == null ? null : TextElement.fromJson(json["text"]),
        icon: json["icon"] == null ? null : IconImage.fromJson(json["icon"]),
        serviceEndpoint: json["serviceEndpoint"] == null
            ? null
            : TentacledServiceEndpoint.fromJson(json["serviceEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text.toJson(),
        "icon": icon == null ? null : icon.toJson(),
        "serviceEndpoint":
            serviceEndpoint == null ? null : serviceEndpoint.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class TentacledServiceEndpoint {
  TentacledServiceEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signalServiceEndpoint,
  });

  final String clickTrackingParams;
  final IndigoCommandMetadata commandMetadata;
  final FluffySignalServiceEndpoint signalServiceEndpoint;

  factory TentacledServiceEndpoint.fromRawJson(String str) =>
      TentacledServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledServiceEndpoint.fromJson(Map<String, dynamic> json) =>
      TentacledServiceEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : IndigoCommandMetadata.fromJson(json["commandMetadata"]),
        signalServiceEndpoint: json["signalServiceEndpoint"] == null
            ? null
            : FluffySignalServiceEndpoint.fromJson(
                json["signalServiceEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "signalServiceEndpoint": signalServiceEndpoint == null
            ? null
            : signalServiceEndpoint.toJson(),
      };
}

class IndigoCommandMetadata {
  IndigoCommandMetadata({
    this.webCommandMetadata,
  });

  final HilariousWebCommandMetadata webCommandMetadata;

  factory IndigoCommandMetadata.fromRawJson(String str) =>
      IndigoCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IndigoCommandMetadata.fromJson(Map<String, dynamic> json) =>
      IndigoCommandMetadata(
        webCommandMetadata: json["webCommandMetadata"] == null
            ? null
            : HilariousWebCommandMetadata.fromJson(json["webCommandMetadata"]),
      );

  Map<String, dynamic> toJson() => {
        "webCommandMetadata":
            webCommandMetadata == null ? null : webCommandMetadata.toJson(),
      };
}

class HilariousWebCommandMetadata {
  HilariousWebCommandMetadata({
    this.sendPost,
  });

  final String sendPost;

  factory HilariousWebCommandMetadata.fromRawJson(String str) =>
      HilariousWebCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HilariousWebCommandMetadata.fromJson(Map<String, dynamic> json) =>
      HilariousWebCommandMetadata(
        sendPost: json["sendPost"] == null ? null : json["sendPost"],
      );

  Map<String, dynamic> toJson() => {
        "sendPost": sendPost == null ? null : sendPost,
      };
}

class FluffySignalServiceEndpoint {
  FluffySignalServiceEndpoint({
    this.signal,
    this.actions,
  });

  final Signal signal;
  final List<IndecentAction> actions;

  factory FluffySignalServiceEndpoint.fromRawJson(String str) =>
      FluffySignalServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffySignalServiceEndpoint.fromJson(Map<String, dynamic> json) =>
      FluffySignalServiceEndpoint(
        signal:
            json["signal"] == null ? null : signalValues.map[json["signal"]],
        actions: json["actions"] == null
            ? null
            : List<IndecentAction>.from(
                json["actions"].map((x) => IndecentAction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "signal": signal == null ? null : signalValues.reverse[signal],
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toJson())),
      };
}

class IndecentAction {
  IndecentAction({
    this.clickTrackingParams,
    this.openPopupAction,
  });

  final String clickTrackingParams;
  final PurpleOpenPopupAction openPopupAction;

  factory IndecentAction.fromRawJson(String str) =>
      IndecentAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IndecentAction.fromJson(Map<String, dynamic> json) => IndecentAction(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        openPopupAction: json["openPopupAction"] == null
            ? null
            : PurpleOpenPopupAction.fromJson(json["openPopupAction"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "openPopupAction":
            openPopupAction == null ? null : openPopupAction.toJson(),
      };
}

class PurpleOpenPopupAction {
  PurpleOpenPopupAction({
    this.popup,
    this.popupType,
  });

  final PurplePopup popup;
  final String popupType;

  factory PurpleOpenPopupAction.fromRawJson(String str) =>
      PurpleOpenPopupAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleOpenPopupAction.fromJson(Map<String, dynamic> json) =>
      PurpleOpenPopupAction(
        popup:
            json["popup"] == null ? null : PurplePopup.fromJson(json["popup"]),
        popupType: json["popupType"] == null ? null : json["popupType"],
      );

  Map<String, dynamic> toJson() => {
        "popup": popup == null ? null : popup.toJson(),
        "popupType": popupType == null ? null : popupType,
      };
}

class PurplePopup {
  PurplePopup({
    this.confirmDialogRenderer,
  });

  final ConfirmDialogRenderer confirmDialogRenderer;

  factory PurplePopup.fromRawJson(String str) =>
      PurplePopup.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurplePopup.fromJson(Map<String, dynamic> json) => PurplePopup(
        confirmDialogRenderer: json["confirmDialogRenderer"] == null
            ? null
            : ConfirmDialogRenderer.fromJson(json["confirmDialogRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "confirmDialogRenderer": confirmDialogRenderer == null
            ? null
            : confirmDialogRenderer.toJson(),
      };
}

class ConfirmDialogRenderer {
  ConfirmDialogRenderer({
    this.title,
    this.trackingParams,
    this.dialogMessages,
    this.confirmButton,
    this.cancelButton,
    this.primaryIsCancel,
  });

  final TextElement title;
  final String trackingParams;
  final List<TextElement> dialogMessages;
  final CancelButtonClass confirmButton;
  final CancelButtonClass cancelButton;
  final String primaryIsCancel;

  factory ConfirmDialogRenderer.fromRawJson(String str) =>
      ConfirmDialogRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ConfirmDialogRenderer.fromJson(Map<String, dynamic> json) =>
      ConfirmDialogRenderer(
        title:
            json["title"] == null ? null : TextElement.fromJson(json["title"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        dialogMessages: json["dialogMessages"] == null
            ? null
            : List<TextElement>.from(
                json["dialogMessages"].map((x) => TextElement.fromJson(x))),
        confirmButton: json["confirmButton"] == null
            ? null
            : CancelButtonClass.fromJson(json["confirmButton"]),
        cancelButton: json["cancelButton"] == null
            ? null
            : CancelButtonClass.fromJson(json["cancelButton"]),
        primaryIsCancel:
            json["primaryIsCancel"] == null ? null : json["primaryIsCancel"],
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "dialogMessages": dialogMessages == null
            ? null
            : List<dynamic>.from(dialogMessages.map((x) => x.toJson())),
        "confirmButton": confirmButton == null ? null : confirmButton.toJson(),
        "cancelButton": cancelButton == null ? null : cancelButton.toJson(),
        "primaryIsCancel": primaryIsCancel == null ? null : primaryIsCancel,
      };
}

class CancelButtonClass {
  CancelButtonClass({
    this.buttonRenderer,
  });

  final CancelButtonButtonRenderer buttonRenderer;

  factory CancelButtonClass.fromRawJson(String str) =>
      CancelButtonClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CancelButtonClass.fromJson(Map<String, dynamic> json) =>
      CancelButtonClass(
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : CancelButtonButtonRenderer.fromJson(json["buttonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toJson(),
      };
}

class CancelButtonButtonRenderer {
  CancelButtonButtonRenderer({
    this.style,
    this.size,
    this.isDisabled,
    this.text,
    this.trackingParams,
    this.command,
    this.serviceEndpoint,
    this.navigationEndpoint,
  });

  final String style;
  final String size;
  final String isDisabled;
  final TextElement text;
  final String trackingParams;
  final FluffyCommand command;
  final StickyServiceEndpoint serviceEndpoint;
  final AmbitiousNavigationEndpoint navigationEndpoint;

  factory CancelButtonButtonRenderer.fromRawJson(String str) =>
      CancelButtonButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CancelButtonButtonRenderer.fromJson(Map<String, dynamic> json) =>
      CancelButtonButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        text: json["text"] == null ? null : TextElement.fromJson(json["text"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        command: json["command"] == null
            ? null
            : FluffyCommand.fromJson(json["command"]),
        serviceEndpoint: json["serviceEndpoint"] == null
            ? null
            : StickyServiceEndpoint.fromJson(json["serviceEndpoint"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : AmbitiousNavigationEndpoint.fromJson(json["navigationEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "style": style == null ? null : style,
        "size": size == null ? null : size,
        "isDisabled": isDisabled == null ? null : isDisabled,
        "text": text == null ? null : text.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "command": command == null ? null : command.toJson(),
        "serviceEndpoint":
            serviceEndpoint == null ? null : serviceEndpoint.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
      };
}

class FluffyCommand {
  FluffyCommand({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signalServiceEndpoint,
  });

  final String clickTrackingParams;
  final IndigoCommandMetadata commandMetadata;
  final CommandSignalServiceEndpoint signalServiceEndpoint;

  factory FluffyCommand.fromRawJson(String str) =>
      FluffyCommand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyCommand.fromJson(Map<String, dynamic> json) => FluffyCommand(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : IndigoCommandMetadata.fromJson(json["commandMetadata"]),
        signalServiceEndpoint: json["signalServiceEndpoint"] == null
            ? null
            : CommandSignalServiceEndpoint.fromJson(
                json["signalServiceEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "signalServiceEndpoint": signalServiceEndpoint == null
            ? null
            : signalServiceEndpoint.toJson(),
      };
}

class AmbitiousNavigationEndpoint {
  AmbitiousNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.modalEndpoint,
  });

  final String clickTrackingParams;
  final DefaultNavigationEndpointCommandMetadata commandMetadata;
  final NavigationEndpointModalEndpoint modalEndpoint;

  factory AmbitiousNavigationEndpoint.fromRawJson(String str) =>
      AmbitiousNavigationEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AmbitiousNavigationEndpoint.fromJson(Map<String, dynamic> json) =>
      AmbitiousNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : DefaultNavigationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        modalEndpoint: json["modalEndpoint"] == null
            ? null
            : NavigationEndpointModalEndpoint.fromJson(json["modalEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "modalEndpoint": modalEndpoint == null ? null : modalEndpoint.toJson(),
      };
}

class DefaultNavigationEndpointCommandMetadata {
  DefaultNavigationEndpointCommandMetadata({
    this.webCommandMetadata,
  });

  final AmbitiousWebCommandMetadata webCommandMetadata;

  factory DefaultNavigationEndpointCommandMetadata.fromRawJson(String str) =>
      DefaultNavigationEndpointCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DefaultNavigationEndpointCommandMetadata.fromJson(
          Map<String, dynamic> json) =>
      DefaultNavigationEndpointCommandMetadata(
        webCommandMetadata: json["webCommandMetadata"] == null
            ? null
            : AmbitiousWebCommandMetadata.fromJson(json["webCommandMetadata"]),
      );

  Map<String, dynamic> toJson() => {
        "webCommandMetadata":
            webCommandMetadata == null ? null : webCommandMetadata.toJson(),
      };
}

class AmbitiousWebCommandMetadata {
  AmbitiousWebCommandMetadata({
    this.ignoreNavigation,
  });

  final String ignoreNavigation;

  factory AmbitiousWebCommandMetadata.fromRawJson(String str) =>
      AmbitiousWebCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AmbitiousWebCommandMetadata.fromJson(Map<String, dynamic> json) =>
      AmbitiousWebCommandMetadata(
        ignoreNavigation:
            json["ignoreNavigation"] == null ? null : json["ignoreNavigation"],
      );

  Map<String, dynamic> toJson() => {
        "ignoreNavigation": ignoreNavigation == null ? null : ignoreNavigation,
      };
}

class NavigationEndpointModalEndpoint {
  NavigationEndpointModalEndpoint({
    this.modal,
  });

  final PurpleModal modal;

  factory NavigationEndpointModalEndpoint.fromRawJson(String str) =>
      NavigationEndpointModalEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NavigationEndpointModalEndpoint.fromJson(Map<String, dynamic> json) =>
      NavigationEndpointModalEndpoint(
        modal:
            json["modal"] == null ? null : PurpleModal.fromJson(json["modal"]),
      );

  Map<String, dynamic> toJson() => {
        "modal": modal == null ? null : modal.toJson(),
      };
}

class PurpleModal {
  PurpleModal({
    this.modalWithTitleAndButtonRenderer,
  });

  final PurpleModalWithTitleAndButtonRenderer modalWithTitleAndButtonRenderer;

  factory PurpleModal.fromRawJson(String str) =>
      PurpleModal.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleModal.fromJson(Map<String, dynamic> json) => PurpleModal(
        modalWithTitleAndButtonRenderer:
            json["modalWithTitleAndButtonRenderer"] == null
                ? null
                : PurpleModalWithTitleAndButtonRenderer.fromJson(
                    json["modalWithTitleAndButtonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "modalWithTitleAndButtonRenderer":
            modalWithTitleAndButtonRenderer == null
                ? null
                : modalWithTitleAndButtonRenderer.toJson(),
      };
}

class PurpleModalWithTitleAndButtonRenderer {
  PurpleModalWithTitleAndButtonRenderer({
    this.title,
    this.content,
    this.button,
  });

  final IndexClass title;
  final IndexClass content;
  final PurpleButton button;

  factory PurpleModalWithTitleAndButtonRenderer.fromRawJson(String str) =>
      PurpleModalWithTitleAndButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleModalWithTitleAndButtonRenderer.fromJson(
          Map<String, dynamic> json) =>
      PurpleModalWithTitleAndButtonRenderer(
        title:
            json["title"] == null ? null : IndexClass.fromJson(json["title"]),
        content: json["content"] == null
            ? null
            : IndexClass.fromJson(json["content"]),
        button: json["button"] == null
            ? null
            : PurpleButton.fromJson(json["button"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title.toJson(),
        "content": content == null ? null : content.toJson(),
        "button": button == null ? null : button.toJson(),
      };
}

class PurpleButton {
  PurpleButton({
    this.buttonRenderer,
  });

  final PurpleButtonRenderer buttonRenderer;

  factory PurpleButton.fromRawJson(String str) =>
      PurpleButton.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleButton.fromJson(Map<String, dynamic> json) => PurpleButton(
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : PurpleButtonRenderer.fromJson(json["buttonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toJson(),
      };
}

class PurpleButtonRenderer {
  PurpleButtonRenderer({
    this.style,
    this.size,
    this.isDisabled,
    this.text,
    this.navigationEndpoint,
    this.trackingParams,
  });

  final String style;
  final String size;
  final String isDisabled;
  final IndexClass text;
  final CunningNavigationEndpoint navigationEndpoint;
  final String trackingParams;

  factory PurpleButtonRenderer.fromRawJson(String str) =>
      PurpleButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleButtonRenderer.fromJson(Map<String, dynamic> json) =>
      PurpleButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        text: json["text"] == null ? null : IndexClass.fromJson(json["text"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : CunningNavigationEndpoint.fromJson(json["navigationEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "style": style == null ? null : style,
        "size": size == null ? null : size,
        "isDisabled": isDisabled == null ? null : isDisabled,
        "text": text == null ? null : text.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class CunningNavigationEndpoint {
  CunningNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signInEndpoint,
  });

  final String clickTrackingParams;
  final IndecentCommandMetadata commandMetadata;
  final FluffySignInEndpoint signInEndpoint;

  factory CunningNavigationEndpoint.fromRawJson(String str) =>
      CunningNavigationEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CunningNavigationEndpoint.fromJson(Map<String, dynamic> json) =>
      CunningNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : IndecentCommandMetadata.fromJson(json["commandMetadata"]),
        signInEndpoint: json["signInEndpoint"] == null
            ? null
            : FluffySignInEndpoint.fromJson(json["signInEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "signInEndpoint":
            signInEndpoint == null ? null : signInEndpoint.toJson(),
      };
}

class IndecentCommandMetadata {
  IndecentCommandMetadata({
    this.webCommandMetadata,
  });

  final CunningWebCommandMetadata webCommandMetadata;

  factory IndecentCommandMetadata.fromRawJson(String str) =>
      IndecentCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IndecentCommandMetadata.fromJson(Map<String, dynamic> json) =>
      IndecentCommandMetadata(
        webCommandMetadata: json["webCommandMetadata"] == null
            ? null
            : CunningWebCommandMetadata.fromJson(json["webCommandMetadata"]),
      );

  Map<String, dynamic> toJson() => {
        "webCommandMetadata":
            webCommandMetadata == null ? null : webCommandMetadata.toJson(),
      };
}

class CunningWebCommandMetadata {
  CunningWebCommandMetadata({
    this.url,
    this.webPageType,
    this.rootVe,
    this.apiUrl,
  });

  final String url;
  final WebPageType webPageType;
  final String rootVe;
  final ApiUrl apiUrl;

  factory CunningWebCommandMetadata.fromRawJson(String str) =>
      CunningWebCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CunningWebCommandMetadata.fromJson(Map<String, dynamic> json) =>
      CunningWebCommandMetadata(
        url: json["url"] == null ? null : json["url"],
        webPageType: json["webPageType"] == null
            ? null
            : webPageTypeValues.map[json["webPageType"]],
        rootVe: json["rootVe"] == null ? null : json["rootVe"],
        apiUrl:
            json["apiUrl"] == null ? null : apiUrlValues.map[json["apiUrl"]],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "webPageType":
            webPageType == null ? null : webPageTypeValues.reverse[webPageType],
        "rootVe": rootVe == null ? null : rootVe,
        "apiUrl": apiUrl == null ? null : apiUrlValues.reverse[apiUrl],
      };
}

class FluffySignInEndpoint {
  FluffySignInEndpoint({
    this.nextEndpoint,
    this.continueAction,
    this.idamTag,
  });

  final NextEndpoint nextEndpoint;
  final String continueAction;
  final String idamTag;

  factory FluffySignInEndpoint.fromRawJson(String str) =>
      FluffySignInEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffySignInEndpoint.fromJson(Map<String, dynamic> json) =>
      FluffySignInEndpoint(
        nextEndpoint: json["nextEndpoint"] == null
            ? null
            : NextEndpoint.fromJson(json["nextEndpoint"]),
        continueAction:
            json["continueAction"] == null ? null : json["continueAction"],
        idamTag: json["idamTag"] == null ? null : json["idamTag"],
      );

  Map<String, dynamic> toJson() => {
        "nextEndpoint": nextEndpoint == null ? null : nextEndpoint.toJson(),
        "continueAction": continueAction == null ? null : continueAction,
        "idamTag": idamTag == null ? null : idamTag,
      };
}

class NextEndpoint {
  NextEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.browseEndpoint,
  });

  final String clickTrackingParams;
  final IndecentCommandMetadata commandMetadata;
  final EndpointBrowseEndpoint browseEndpoint;

  factory NextEndpoint.fromRawJson(String str) =>
      NextEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NextEndpoint.fromJson(Map<String, dynamic> json) => NextEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : IndecentCommandMetadata.fromJson(json["commandMetadata"]),
        browseEndpoint: json["browseEndpoint"] == null
            ? null
            : EndpointBrowseEndpoint.fromJson(json["browseEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "browseEndpoint":
            browseEndpoint == null ? null : browseEndpoint.toJson(),
      };
}

class StickyServiceEndpoint {
  StickyServiceEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.flagEndpoint,
  });

  final String clickTrackingParams;
  final HilariousCommandMetadata commandMetadata;
  final FlagEndpoint flagEndpoint;

  factory StickyServiceEndpoint.fromRawJson(String str) =>
      StickyServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StickyServiceEndpoint.fromJson(Map<String, dynamic> json) =>
      StickyServiceEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : HilariousCommandMetadata.fromJson(json["commandMetadata"]),
        flagEndpoint: json["flagEndpoint"] == null
            ? null
            : FlagEndpoint.fromJson(json["flagEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "flagEndpoint": flagEndpoint == null ? null : flagEndpoint.toJson(),
      };
}

class HilariousCommandMetadata {
  HilariousCommandMetadata({
    this.webCommandMetadata,
  });

  final MagentaWebCommandMetadata webCommandMetadata;

  factory HilariousCommandMetadata.fromRawJson(String str) =>
      HilariousCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HilariousCommandMetadata.fromJson(Map<String, dynamic> json) =>
      HilariousCommandMetadata(
        webCommandMetadata: json["webCommandMetadata"] == null
            ? null
            : MagentaWebCommandMetadata.fromJson(json["webCommandMetadata"]),
      );

  Map<String, dynamic> toJson() => {
        "webCommandMetadata":
            webCommandMetadata == null ? null : webCommandMetadata.toJson(),
      };
}

class MagentaWebCommandMetadata {
  MagentaWebCommandMetadata({
    this.sendPost,
    this.apiUrl,
  });

  final String sendPost;
  final String apiUrl;

  factory MagentaWebCommandMetadata.fromRawJson(String str) =>
      MagentaWebCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MagentaWebCommandMetadata.fromJson(Map<String, dynamic> json) =>
      MagentaWebCommandMetadata(
        sendPost: json["sendPost"] == null ? null : json["sendPost"],
        apiUrl: json["apiUrl"] == null ? null : json["apiUrl"],
      );

  Map<String, dynamic> toJson() => {
        "sendPost": sendPost == null ? null : sendPost,
        "apiUrl": apiUrl == null ? null : apiUrl,
      };
}

class FlagEndpoint {
  FlagEndpoint({
    this.flagAction,
  });

  final String flagAction;

  factory FlagEndpoint.fromRawJson(String str) =>
      FlagEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FlagEndpoint.fromJson(Map<String, dynamic> json) => FlagEndpoint(
        flagAction: json["flagAction"] == null ? null : json["flagAction"],
      );

  Map<String, dynamic> toJson() => {
        "flagAction": flagAction == null ? null : flagAction,
      };
}

class TopLevelButton {
  TopLevelButton({
    this.toggleButtonRenderer,
    this.buttonRenderer,
  });

  final TopLevelButtonToggleButtonRenderer toggleButtonRenderer;
  final TopLevelButtonButtonRenderer buttonRenderer;

  factory TopLevelButton.fromRawJson(String str) =>
      TopLevelButton.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TopLevelButton.fromJson(Map<String, dynamic> json) => TopLevelButton(
        toggleButtonRenderer: json["toggleButtonRenderer"] == null
            ? null
            : TopLevelButtonToggleButtonRenderer.fromJson(
                json["toggleButtonRenderer"]),
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : TopLevelButtonButtonRenderer.fromJson(json["buttonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "toggleButtonRenderer":
            toggleButtonRenderer == null ? null : toggleButtonRenderer.toJson(),
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toJson(),
      };
}

class TopLevelButtonButtonRenderer {
  TopLevelButtonButtonRenderer({
    this.style,
    this.size,
    this.isDisabled,
    this.icon,
    this.navigationEndpoint,
    this.accessibility,
    this.tooltip,
    this.trackingParams,
    this.serviceEndpoint,
  });

  final String style;
  final String size;
  final String isDisabled;
  final IconImage icon;
  final MagentaNavigationEndpoint navigationEndpoint;
  final Accessibility accessibility;
  final String tooltip;
  final String trackingParams;
  final IndigoServiceEndpoint serviceEndpoint;

  factory TopLevelButtonButtonRenderer.fromRawJson(String str) =>
      TopLevelButtonButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TopLevelButtonButtonRenderer.fromJson(Map<String, dynamic> json) =>
      TopLevelButtonButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        icon: json["icon"] == null ? null : IconImage.fromJson(json["icon"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : MagentaNavigationEndpoint.fromJson(json["navigationEndpoint"]),
        accessibility: json["accessibility"] == null
            ? null
            : Accessibility.fromJson(json["accessibility"]),
        tooltip: json["tooltip"] == null ? null : json["tooltip"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        serviceEndpoint: json["serviceEndpoint"] == null
            ? null
            : IndigoServiceEndpoint.fromJson(json["serviceEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "style": style == null ? null : style,
        "size": size == null ? null : size,
        "isDisabled": isDisabled == null ? null : isDisabled,
        "icon": icon == null ? null : icon.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "accessibility": accessibility == null ? null : accessibility.toJson(),
        "tooltip": tooltip == null ? null : tooltip,
        "trackingParams": trackingParams == null ? null : trackingParams,
        "serviceEndpoint":
            serviceEndpoint == null ? null : serviceEndpoint.toJson(),
      };
}

class MagentaNavigationEndpoint {
  MagentaNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.watchEndpoint,
  });

  final String clickTrackingParams;
  final IndecentCommandMetadata commandMetadata;
  final PurpleWatchEndpoint watchEndpoint;

  factory MagentaNavigationEndpoint.fromRawJson(String str) =>
      MagentaNavigationEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MagentaNavigationEndpoint.fromJson(Map<String, dynamic> json) =>
      MagentaNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : IndecentCommandMetadata.fromJson(json["commandMetadata"]),
        watchEndpoint: json["watchEndpoint"] == null
            ? null
            : PurpleWatchEndpoint.fromJson(json["watchEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "watchEndpoint": watchEndpoint == null ? null : watchEndpoint.toJson(),
      };
}

class IndigoServiceEndpoint {
  IndigoServiceEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.shareEntityServiceEndpoint,
  });

  final String clickTrackingParams;
  final HilariousCommandMetadata commandMetadata;
  final ShareEntityServiceEndpoint shareEntityServiceEndpoint;

  factory IndigoServiceEndpoint.fromRawJson(String str) =>
      IndigoServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IndigoServiceEndpoint.fromJson(Map<String, dynamic> json) =>
      IndigoServiceEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : HilariousCommandMetadata.fromJson(json["commandMetadata"]),
        shareEntityServiceEndpoint: json["shareEntityServiceEndpoint"] == null
            ? null
            : ShareEntityServiceEndpoint.fromJson(
                json["shareEntityServiceEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "shareEntityServiceEndpoint": shareEntityServiceEndpoint == null
            ? null
            : shareEntityServiceEndpoint.toJson(),
      };
}

class ShareEntityServiceEndpoint {
  ShareEntityServiceEndpoint({
    this.serializedShareEntity,
    this.commands,
  });

  final String serializedShareEntity;
  final List<CommandElement> commands;

  factory ShareEntityServiceEndpoint.fromRawJson(String str) =>
      ShareEntityServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ShareEntityServiceEndpoint.fromJson(Map<String, dynamic> json) =>
      ShareEntityServiceEndpoint(
        serializedShareEntity: json["serializedShareEntity"] == null
            ? null
            : json["serializedShareEntity"],
        commands: json["commands"] == null
            ? null
            : List<CommandElement>.from(
                json["commands"].map((x) => CommandElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "serializedShareEntity":
            serializedShareEntity == null ? null : serializedShareEntity,
        "commands": commands == null
            ? null
            : List<dynamic>.from(commands.map((x) => x.toJson())),
      };
}

class CommandElement {
  CommandElement({
    this.clickTrackingParams,
    this.openPopupAction,
  });

  final String clickTrackingParams;
  final CommandOpenPopupAction openPopupAction;

  factory CommandElement.fromRawJson(String str) =>
      CommandElement.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CommandElement.fromJson(Map<String, dynamic> json) => CommandElement(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        openPopupAction: json["openPopupAction"] == null
            ? null
            : CommandOpenPopupAction.fromJson(json["openPopupAction"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "openPopupAction":
            openPopupAction == null ? null : openPopupAction.toJson(),
      };
}

class CommandOpenPopupAction {
  CommandOpenPopupAction({
    this.popup,
    this.popupType,
    this.beReused,
  });

  final FluffyPopup popup;
  final String popupType;
  final String beReused;

  factory CommandOpenPopupAction.fromRawJson(String str) =>
      CommandOpenPopupAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CommandOpenPopupAction.fromJson(Map<String, dynamic> json) =>
      CommandOpenPopupAction(
        popup:
            json["popup"] == null ? null : FluffyPopup.fromJson(json["popup"]),
        popupType: json["popupType"] == null ? null : json["popupType"],
        beReused: json["beReused"] == null ? null : json["beReused"],
      );

  Map<String, dynamic> toJson() => {
        "popup": popup == null ? null : popup.toJson(),
        "popupType": popupType == null ? null : popupType,
        "beReused": beReused == null ? null : beReused,
      };
}

class FluffyPopup {
  FluffyPopup({
    this.unifiedSharePanelRenderer,
  });

  final UnifiedSharePanelRenderer unifiedSharePanelRenderer;

  factory FluffyPopup.fromRawJson(String str) =>
      FluffyPopup.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyPopup.fromJson(Map<String, dynamic> json) => FluffyPopup(
        unifiedSharePanelRenderer: json["unifiedSharePanelRenderer"] == null
            ? null
            : UnifiedSharePanelRenderer.fromJson(
                json["unifiedSharePanelRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "unifiedSharePanelRenderer": unifiedSharePanelRenderer == null
            ? null
            : unifiedSharePanelRenderer.toJson(),
      };
}

class UnifiedSharePanelRenderer {
  UnifiedSharePanelRenderer({
    this.trackingParams,
    this.showLoadingSpinner,
  });

  final String trackingParams;
  final String showLoadingSpinner;

  factory UnifiedSharePanelRenderer.fromRawJson(String str) =>
      UnifiedSharePanelRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UnifiedSharePanelRenderer.fromJson(Map<String, dynamic> json) =>
      UnifiedSharePanelRenderer(
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        showLoadingSpinner: json["showLoadingSpinner"] == null
            ? null
            : json["showLoadingSpinner"],
      );

  Map<String, dynamic> toJson() => {
        "trackingParams": trackingParams == null ? null : trackingParams,
        "showLoadingSpinner":
            showLoadingSpinner == null ? null : showLoadingSpinner,
      };
}

class TopLevelButtonToggleButtonRenderer {
  TopLevelButtonToggleButtonRenderer({
    this.style,
    this.size,
    this.isToggled,
    this.isDisabled,
    this.defaultIcon,
    this.toggledIcon,
    this.trackingParams,
    this.defaultTooltip,
    this.toggledTooltip,
    this.defaultNavigationEndpoint,
    this.accessibilityData,
    this.toggledAccessibilityData,
  });

  final ToggledStyleClass style;
  final Size size;
  final String isToggled;
  final String isDisabled;
  final IconImage defaultIcon;
  final IconImage toggledIcon;
  final String trackingParams;
  final String defaultTooltip;
  final String toggledTooltip;
  final DefaultNavigationEndpoint defaultNavigationEndpoint;
  final AccessibilityData accessibilityData;
  final AccessibilityData toggledAccessibilityData;

  factory TopLevelButtonToggleButtonRenderer.fromRawJson(String str) =>
      TopLevelButtonToggleButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TopLevelButtonToggleButtonRenderer.fromJson(
          Map<String, dynamic> json) =>
      TopLevelButtonToggleButtonRenderer(
        style: json["style"] == null
            ? null
            : ToggledStyleClass.fromJson(json["style"]),
        size: json["size"] == null ? null : Size.fromJson(json["size"]),
        isToggled: json["isToggled"] == null ? null : json["isToggled"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        defaultIcon: json["defaultIcon"] == null
            ? null
            : IconImage.fromJson(json["defaultIcon"]),
        toggledIcon: json["toggledIcon"] == null
            ? null
            : IconImage.fromJson(json["toggledIcon"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        defaultTooltip:
            json["defaultTooltip"] == null ? null : json["defaultTooltip"],
        toggledTooltip:
            json["toggledTooltip"] == null ? null : json["toggledTooltip"],
        defaultNavigationEndpoint: json["defaultNavigationEndpoint"] == null
            ? null
            : DefaultNavigationEndpoint.fromJson(
                json["defaultNavigationEndpoint"]),
        accessibilityData: json["accessibilityData"] == null
            ? null
            : AccessibilityData.fromJson(json["accessibilityData"]),
        toggledAccessibilityData: json["toggledAccessibilityData"] == null
            ? null
            : AccessibilityData.fromJson(json["toggledAccessibilityData"]),
      );

  Map<String, dynamic> toJson() => {
        "style": style == null ? null : style.toJson(),
        "size": size == null ? null : size.toJson(),
        "isToggled": isToggled == null ? null : isToggled,
        "isDisabled": isDisabled == null ? null : isDisabled,
        "defaultIcon": defaultIcon == null ? null : defaultIcon.toJson(),
        "toggledIcon": toggledIcon == null ? null : toggledIcon.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "defaultTooltip": defaultTooltip == null ? null : defaultTooltip,
        "toggledTooltip": toggledTooltip == null ? null : toggledTooltip,
        "defaultNavigationEndpoint": defaultNavigationEndpoint == null
            ? null
            : defaultNavigationEndpoint.toJson(),
        "accessibilityData":
            accessibilityData == null ? null : accessibilityData.toJson(),
        "toggledAccessibilityData": toggledAccessibilityData == null
            ? null
            : toggledAccessibilityData.toJson(),
      };
}

class DefaultNavigationEndpoint {
  DefaultNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.modalEndpoint,
  });

  final String clickTrackingParams;
  final DefaultNavigationEndpointCommandMetadata commandMetadata;
  final DefaultNavigationEndpointModalEndpoint modalEndpoint;

  factory DefaultNavigationEndpoint.fromRawJson(String str) =>
      DefaultNavigationEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DefaultNavigationEndpoint.fromJson(Map<String, dynamic> json) =>
      DefaultNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : DefaultNavigationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        modalEndpoint: json["modalEndpoint"] == null
            ? null
            : DefaultNavigationEndpointModalEndpoint.fromJson(
                json["modalEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "modalEndpoint": modalEndpoint == null ? null : modalEndpoint.toJson(),
      };
}

class DefaultNavigationEndpointModalEndpoint {
  DefaultNavigationEndpointModalEndpoint({
    this.modal,
  });

  final FluffyModal modal;

  factory DefaultNavigationEndpointModalEndpoint.fromRawJson(String str) =>
      DefaultNavigationEndpointModalEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DefaultNavigationEndpointModalEndpoint.fromJson(
          Map<String, dynamic> json) =>
      DefaultNavigationEndpointModalEndpoint(
        modal:
            json["modal"] == null ? null : FluffyModal.fromJson(json["modal"]),
      );

  Map<String, dynamic> toJson() => {
        "modal": modal == null ? null : modal.toJson(),
      };
}

class FluffyModal {
  FluffyModal({
    this.modalWithTitleAndButtonRenderer,
  });

  final FluffyModalWithTitleAndButtonRenderer modalWithTitleAndButtonRenderer;

  factory FluffyModal.fromRawJson(String str) =>
      FluffyModal.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyModal.fromJson(Map<String, dynamic> json) => FluffyModal(
        modalWithTitleAndButtonRenderer:
            json["modalWithTitleAndButtonRenderer"] == null
                ? null
                : FluffyModalWithTitleAndButtonRenderer.fromJson(
                    json["modalWithTitleAndButtonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "modalWithTitleAndButtonRenderer":
            modalWithTitleAndButtonRenderer == null
                ? null
                : modalWithTitleAndButtonRenderer.toJson(),
      };
}

class FluffyModalWithTitleAndButtonRenderer {
  FluffyModalWithTitleAndButtonRenderer({
    this.title,
    this.content,
    this.button,
  });

  final IndexClass title;
  final IndexClass content;
  final FluffyButton button;

  factory FluffyModalWithTitleAndButtonRenderer.fromRawJson(String str) =>
      FluffyModalWithTitleAndButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyModalWithTitleAndButtonRenderer.fromJson(
          Map<String, dynamic> json) =>
      FluffyModalWithTitleAndButtonRenderer(
        title:
            json["title"] == null ? null : IndexClass.fromJson(json["title"]),
        content: json["content"] == null
            ? null
            : IndexClass.fromJson(json["content"]),
        button: json["button"] == null
            ? null
            : FluffyButton.fromJson(json["button"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title.toJson(),
        "content": content == null ? null : content.toJson(),
        "button": button == null ? null : button.toJson(),
      };
}

class FluffyButton {
  FluffyButton({
    this.buttonRenderer,
  });

  final FluffyButtonRenderer buttonRenderer;

  factory FluffyButton.fromRawJson(String str) =>
      FluffyButton.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyButton.fromJson(Map<String, dynamic> json) => FluffyButton(
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : FluffyButtonRenderer.fromJson(json["buttonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toJson(),
      };
}

class FluffyButtonRenderer {
  FluffyButtonRenderer({
    this.style,
    this.size,
    this.isDisabled,
    this.text,
    this.navigationEndpoint,
    this.trackingParams,
  });

  final String style;
  final String size;
  final String isDisabled;
  final IndexClass text;
  final FriskyNavigationEndpoint navigationEndpoint;
  final String trackingParams;

  factory FluffyButtonRenderer.fromRawJson(String str) =>
      FluffyButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyButtonRenderer.fromJson(Map<String, dynamic> json) =>
      FluffyButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        text: json["text"] == null ? null : IndexClass.fromJson(json["text"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : FriskyNavigationEndpoint.fromJson(json["navigationEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "style": style == null ? null : style,
        "size": size == null ? null : size,
        "isDisabled": isDisabled == null ? null : isDisabled,
        "text": text == null ? null : text.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class FriskyNavigationEndpoint {
  FriskyNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signInEndpoint,
  });

  final String clickTrackingParams;
  final IndecentCommandMetadata commandMetadata;
  final TentacledSignInEndpoint signInEndpoint;

  factory FriskyNavigationEndpoint.fromRawJson(String str) =>
      FriskyNavigationEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FriskyNavigationEndpoint.fromJson(Map<String, dynamic> json) =>
      FriskyNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : IndecentCommandMetadata.fromJson(json["commandMetadata"]),
        signInEndpoint: json["signInEndpoint"] == null
            ? null
            : TentacledSignInEndpoint.fromJson(json["signInEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "signInEndpoint":
            signInEndpoint == null ? null : signInEndpoint.toJson(),
      };
}

class TentacledSignInEndpoint {
  TentacledSignInEndpoint({
    this.nextEndpoint,
    this.idamTag,
  });

  final NextEndpoint nextEndpoint;
  final String idamTag;

  factory TentacledSignInEndpoint.fromRawJson(String str) =>
      TentacledSignInEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledSignInEndpoint.fromJson(Map<String, dynamic> json) =>
      TentacledSignInEndpoint(
        nextEndpoint: json["nextEndpoint"] == null
            ? null
            : NextEndpoint.fromJson(json["nextEndpoint"]),
        idamTag: json["idamTag"] == null ? null : json["idamTag"],
      );

  Map<String, dynamic> toJson() => {
        "nextEndpoint": nextEndpoint == null ? null : nextEndpoint.toJson(),
        "idamTag": idamTag == null ? null : idamTag,
      };
}

class Size {
  Size({
    this.sizeType,
  });

  final String sizeType;

  factory Size.fromRawJson(String str) => Size.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Size.fromJson(Map<String, dynamic> json) => Size(
        sizeType: json["sizeType"] == null ? null : json["sizeType"],
      );

  Map<String, dynamic> toJson() => {
        "sizeType": sizeType == null ? null : sizeType,
      };
}

class PlaylistSidebarPrimaryInfoRendererNavigationEndpoint {
  PlaylistSidebarPrimaryInfoRendererNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.watchEndpoint,
  });

  final String clickTrackingParams;
  final IndecentCommandMetadata commandMetadata;
  final StickyWatchEndpoint watchEndpoint;

  factory PlaylistSidebarPrimaryInfoRendererNavigationEndpoint.fromRawJson(
          String str) =>
      PlaylistSidebarPrimaryInfoRendererNavigationEndpoint.fromJson(
          json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlaylistSidebarPrimaryInfoRendererNavigationEndpoint.fromJson(
          Map<String, dynamic> json) =>
      PlaylistSidebarPrimaryInfoRendererNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : IndecentCommandMetadata.fromJson(json["commandMetadata"]),
        watchEndpoint: json["watchEndpoint"] == null
            ? null
            : StickyWatchEndpoint.fromJson(json["watchEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "watchEndpoint": watchEndpoint == null ? null : watchEndpoint.toJson(),
      };
}

class Stat {
  Stat({
    this.runs,
    this.simpleText,
  });

  final List<TextRun> runs;
  final String simpleText;

  factory Stat.fromRawJson(String str) => Stat.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Stat.fromJson(Map<String, dynamic> json) => Stat(
        runs: json["runs"] == null
            ? null
            : List<TextRun>.from(json["runs"].map((x) => TextRun.fromJson(x))),
        simpleText: json["simpleText"] == null ? null : json["simpleText"],
      );

  Map<String, dynamic> toJson() => {
        "runs": runs == null
            ? null
            : List<dynamic>.from(runs.map((x) => x.toJson())),
        "simpleText": simpleText == null ? null : simpleText,
      };
}

class PlaylistSidebarPrimaryInfoRendererThumbnailOverlay {
  PlaylistSidebarPrimaryInfoRendererThumbnailOverlay({
    this.thumbnailOverlaySidePanelRenderer,
  });

  final ThumbnailOverlaySidePanelRenderer thumbnailOverlaySidePanelRenderer;

  factory PlaylistSidebarPrimaryInfoRendererThumbnailOverlay.fromRawJson(
          String str) =>
      PlaylistSidebarPrimaryInfoRendererThumbnailOverlay.fromJson(
          json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlaylistSidebarPrimaryInfoRendererThumbnailOverlay.fromJson(
          Map<String, dynamic> json) =>
      PlaylistSidebarPrimaryInfoRendererThumbnailOverlay(
        thumbnailOverlaySidePanelRenderer:
            json["thumbnailOverlaySidePanelRenderer"] == null
                ? null
                : ThumbnailOverlaySidePanelRenderer.fromJson(
                    json["thumbnailOverlaySidePanelRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "thumbnailOverlaySidePanelRenderer":
            thumbnailOverlaySidePanelRenderer == null
                ? null
                : thumbnailOverlaySidePanelRenderer.toJson(),
      };
}

class PlaylistSidebarPrimaryInfoRendererThumbnailRenderer {
  PlaylistSidebarPrimaryInfoRendererThumbnailRenderer({
    this.playlistVideoThumbnailRenderer,
    this.playlistCustomThumbnailRenderer,
  });

  final PlaylistVideoThumbnailRenderer playlistVideoThumbnailRenderer;
  final PlaylistThumbnailRenderer playlistCustomThumbnailRenderer;

  factory PlaylistSidebarPrimaryInfoRendererThumbnailRenderer.fromRawJson(
          String str) =>
      PlaylistSidebarPrimaryInfoRendererThumbnailRenderer.fromJson(
          json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlaylistSidebarPrimaryInfoRendererThumbnailRenderer.fromJson(
          Map<String, dynamic> json) =>
      PlaylistSidebarPrimaryInfoRendererThumbnailRenderer(
        playlistVideoThumbnailRenderer:
            json["playlistVideoThumbnailRenderer"] == null
                ? null
                : PlaylistVideoThumbnailRenderer.fromJson(
                    json["playlistVideoThumbnailRenderer"]),
        playlistCustomThumbnailRenderer:
            json["playlistCustomThumbnailRenderer"] == null
                ? null
                : PlaylistThumbnailRenderer.fromJson(
                    json["playlistCustomThumbnailRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "playlistVideoThumbnailRenderer": playlistVideoThumbnailRenderer == null
            ? null
            : playlistVideoThumbnailRenderer.toJson(),
        "playlistCustomThumbnailRenderer":
            playlistCustomThumbnailRenderer == null
                ? null
                : playlistCustomThumbnailRenderer.toJson(),
      };
}

class PlaylistVideoThumbnailRenderer {
  PlaylistVideoThumbnailRenderer({
    this.thumbnail,
  });

  final MicroformatDataRendererThumbnail thumbnail;

  factory PlaylistVideoThumbnailRenderer.fromRawJson(String str) =>
      PlaylistVideoThumbnailRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlaylistVideoThumbnailRenderer.fromJson(Map<String, dynamic> json) =>
      PlaylistVideoThumbnailRenderer(
        thumbnail: json["thumbnail"] == null
            ? null
            : MicroformatDataRendererThumbnail.fromJson(json["thumbnail"]),
      );

  Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail == null ? null : thumbnail.toJson(),
      };
}

class PlaylistSidebarPrimaryInfoRendererTitle {
  PlaylistSidebarPrimaryInfoRendererTitle({
    this.runs,
  });

  final List<FluffyRun> runs;

  factory PlaylistSidebarPrimaryInfoRendererTitle.fromRawJson(String str) =>
      PlaylistSidebarPrimaryInfoRendererTitle.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlaylistSidebarPrimaryInfoRendererTitle.fromJson(
          Map<String, dynamic> json) =>
      PlaylistSidebarPrimaryInfoRendererTitle(
        runs: json["runs"] == null
            ? null
            : List<FluffyRun>.from(
                json["runs"].map((x) => FluffyRun.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "runs": runs == null
            ? null
            : List<dynamic>.from(runs.map((x) => x.toJson())),
      };
}

class FluffyRun {
  FluffyRun({
    this.text,
    this.navigationEndpoint,
  });

  final String text;
  final PlaylistSidebarPrimaryInfoRendererNavigationEndpoint navigationEndpoint;

  factory FluffyRun.fromRawJson(String str) =>
      FluffyRun.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyRun.fromJson(Map<String, dynamic> json) => FluffyRun(
        text: json["text"] == null ? null : json["text"],
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : PlaylistSidebarPrimaryInfoRendererNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text,
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
      };
}

class PlaylistSidebarSecondaryInfoRenderer {
  PlaylistSidebarSecondaryInfoRenderer({
    this.videoOwner,
    this.button,
  });

  final VideoOwner videoOwner;
  final CancelButtonClass button;

  factory PlaylistSidebarSecondaryInfoRenderer.fromRawJson(String str) =>
      PlaylistSidebarSecondaryInfoRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlaylistSidebarSecondaryInfoRenderer.fromJson(
          Map<String, dynamic> json) =>
      PlaylistSidebarSecondaryInfoRenderer(
        videoOwner: json["videoOwner"] == null
            ? null
            : VideoOwner.fromJson(json["videoOwner"]),
        button: json["button"] == null
            ? null
            : CancelButtonClass.fromJson(json["button"]),
      );

  Map<String, dynamic> toJson() => {
        "videoOwner": videoOwner == null ? null : videoOwner.toJson(),
        "button": button == null ? null : button.toJson(),
      };
}

class VideoOwner {
  VideoOwner({
    this.videoOwnerRenderer,
  });

  final VideoOwnerRenderer videoOwnerRenderer;

  factory VideoOwner.fromRawJson(String str) =>
      VideoOwner.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VideoOwner.fromJson(Map<String, dynamic> json) => VideoOwner(
        videoOwnerRenderer: json["videoOwnerRenderer"] == null
            ? null
            : VideoOwnerRenderer.fromJson(json["videoOwnerRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "videoOwnerRenderer":
            videoOwnerRenderer == null ? null : videoOwnerRenderer.toJson(),
      };
}

class VideoOwnerRenderer {
  VideoOwnerRenderer({
    this.thumbnail,
    this.title,
    this.navigationEndpoint,
    this.trackingParams,
  });

  final MicroformatDataRendererThumbnail thumbnail;
  final VideoOwnerRendererTitle title;
  final VideoOwnerRendererNavigationEndpoint navigationEndpoint;
  final String trackingParams;

  factory VideoOwnerRenderer.fromRawJson(String str) =>
      VideoOwnerRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VideoOwnerRenderer.fromJson(Map<String, dynamic> json) =>
      VideoOwnerRenderer(
        thumbnail: json["thumbnail"] == null
            ? null
            : MicroformatDataRendererThumbnail.fromJson(json["thumbnail"]),
        title: json["title"] == null
            ? null
            : VideoOwnerRendererTitle.fromJson(json["title"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : VideoOwnerRendererNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail == null ? null : thumbnail.toJson(),
        "title": title == null ? null : title.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class VideoOwnerRendererNavigationEndpoint {
  VideoOwnerRendererNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.browseEndpoint,
  });

  final String clickTrackingParams;
  final IndecentCommandMetadata commandMetadata;
  final PurpleBrowseEndpoint browseEndpoint;

  factory VideoOwnerRendererNavigationEndpoint.fromRawJson(String str) =>
      VideoOwnerRendererNavigationEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VideoOwnerRendererNavigationEndpoint.fromJson(
          Map<String, dynamic> json) =>
      VideoOwnerRendererNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : IndecentCommandMetadata.fromJson(json["commandMetadata"]),
        browseEndpoint: json["browseEndpoint"] == null
            ? null
            : PurpleBrowseEndpoint.fromJson(json["browseEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "browseEndpoint":
            browseEndpoint == null ? null : browseEndpoint.toJson(),
      };
}

class VideoOwnerRendererTitle {
  VideoOwnerRendererTitle({
    this.runs,
  });

  final List<TentacledRun> runs;

  factory VideoOwnerRendererTitle.fromRawJson(String str) =>
      VideoOwnerRendererTitle.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VideoOwnerRendererTitle.fromJson(Map<String, dynamic> json) =>
      VideoOwnerRendererTitle(
        runs: json["runs"] == null
            ? null
            : List<TentacledRun>.from(
                json["runs"].map((x) => TentacledRun.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "runs": runs == null
            ? null
            : List<dynamic>.from(runs.map((x) => x.toJson())),
      };
}

class TentacledRun {
  TentacledRun({
    this.text,
    this.navigationEndpoint,
  });

  final String text;
  final VideoOwnerRendererNavigationEndpoint navigationEndpoint;

  factory TentacledRun.fromRawJson(String str) =>
      TentacledRun.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledRun.fromJson(Map<String, dynamic> json) => TentacledRun(
        text: json["text"] == null ? null : json["text"],
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : VideoOwnerRendererNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text,
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
      };
}

class Topbar {
  Topbar({
    this.desktopTopbarRenderer,
  });

  final DesktopTopbarRenderer desktopTopbarRenderer;

  factory Topbar.fromRawJson(String str) => Topbar.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Topbar.fromJson(Map<String, dynamic> json) => Topbar(
        desktopTopbarRenderer: json["desktopTopbarRenderer"] == null
            ? null
            : DesktopTopbarRenderer.fromJson(json["desktopTopbarRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "desktopTopbarRenderer": desktopTopbarRenderer == null
            ? null
            : desktopTopbarRenderer.toJson(),
      };
}

class DesktopTopbarRenderer {
  DesktopTopbarRenderer({
    this.logo,
    this.searchbox,
    this.trackingParams,
    this.topbarButtons,
    this.hotkeyDialog,
    this.backButton,
    this.forwardButton,
    this.a11YSkipNavigationButton,
    this.voiceSearchButton,
    this.countryCode,
  });

  final Logo logo;
  final Searchbox searchbox;
  final String trackingParams;
  final List<TopbarButton> topbarButtons;
  final HotkeyDialog hotkeyDialog;
  final BackButtonClass backButton;
  final BackButtonClass forwardButton;
  final A11YSkipNavigationButtonClass a11YSkipNavigationButton;
  final VoiceSearchButtonClass voiceSearchButton;
  final String countryCode;

  factory DesktopTopbarRenderer.fromRawJson(String str) =>
      DesktopTopbarRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DesktopTopbarRenderer.fromJson(Map<String, dynamic> json) =>
      DesktopTopbarRenderer(
        logo: json["logo"] == null ? null : Logo.fromJson(json["logo"]),
        searchbox: json["searchbox"] == null
            ? null
            : Searchbox.fromJson(json["searchbox"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        topbarButtons: json["topbarButtons"] == null
            ? null
            : List<TopbarButton>.from(
                json["topbarButtons"].map((x) => TopbarButton.fromJson(x))),
        hotkeyDialog: json["hotkeyDialog"] == null
            ? null
            : HotkeyDialog.fromJson(json["hotkeyDialog"]),
        backButton: json["backButton"] == null
            ? null
            : BackButtonClass.fromJson(json["backButton"]),
        forwardButton: json["forwardButton"] == null
            ? null
            : BackButtonClass.fromJson(json["forwardButton"]),
        a11YSkipNavigationButton: json["a11ySkipNavigationButton"] == null
            ? null
            : A11YSkipNavigationButtonClass.fromJson(
                json["a11ySkipNavigationButton"]),
        voiceSearchButton: json["voiceSearchButton"] == null
            ? null
            : VoiceSearchButtonClass.fromJson(json["voiceSearchButton"]),
        countryCode: json["countryCode"] == null ? null : json["countryCode"],
      );

  Map<String, dynamic> toJson() => {
        "logo": logo == null ? null : logo.toJson(),
        "searchbox": searchbox == null ? null : searchbox.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "topbarButtons": topbarButtons == null
            ? null
            : List<dynamic>.from(topbarButtons.map((x) => x.toJson())),
        "hotkeyDialog": hotkeyDialog == null ? null : hotkeyDialog.toJson(),
        "backButton": backButton == null ? null : backButton.toJson(),
        "forwardButton": forwardButton == null ? null : forwardButton.toJson(),
        "a11ySkipNavigationButton": a11YSkipNavigationButton == null
            ? null
            : a11YSkipNavigationButton.toJson(),
        "voiceSearchButton":
            voiceSearchButton == null ? null : voiceSearchButton.toJson(),
        "countryCode": countryCode == null ? null : countryCode,
      };
}

class BackButtonClass {
  BackButtonClass({
    this.buttonRenderer,
  });

  final BackButtonButtonRenderer buttonRenderer;

  factory BackButtonClass.fromRawJson(String str) =>
      BackButtonClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BackButtonClass.fromJson(Map<String, dynamic> json) =>
      BackButtonClass(
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : BackButtonButtonRenderer.fromJson(json["buttonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toJson(),
      };
}

class BackButtonButtonRenderer {
  BackButtonButtonRenderer({
    this.trackingParams,
    this.command,
  });

  final String trackingParams;
  final PurpleCommand command;

  factory BackButtonButtonRenderer.fromRawJson(String str) =>
      BackButtonButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BackButtonButtonRenderer.fromJson(Map<String, dynamic> json) =>
      BackButtonButtonRenderer(
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        command: json["command"] == null
            ? null
            : PurpleCommand.fromJson(json["command"]),
      );

  Map<String, dynamic> toJson() => {
        "trackingParams": trackingParams == null ? null : trackingParams,
        "command": command == null ? null : command.toJson(),
      };
}

class HotkeyDialog {
  HotkeyDialog({
    this.hotkeyDialogRenderer,
  });

  final HotkeyDialogRenderer hotkeyDialogRenderer;

  factory HotkeyDialog.fromRawJson(String str) =>
      HotkeyDialog.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HotkeyDialog.fromJson(Map<String, dynamic> json) => HotkeyDialog(
        hotkeyDialogRenderer: json["hotkeyDialogRenderer"] == null
            ? null
            : HotkeyDialogRenderer.fromJson(json["hotkeyDialogRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "hotkeyDialogRenderer":
            hotkeyDialogRenderer == null ? null : hotkeyDialogRenderer.toJson(),
      };
}

class HotkeyDialogRenderer {
  HotkeyDialogRenderer({
    this.title,
    this.sections,
    this.dismissButton,
    this.trackingParams,
  });

  final TextElement title;
  final List<HotkeyDialogRendererSection> sections;
  final A11YSkipNavigationButtonClass dismissButton;
  final String trackingParams;

  factory HotkeyDialogRenderer.fromRawJson(String str) =>
      HotkeyDialogRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HotkeyDialogRenderer.fromJson(Map<String, dynamic> json) =>
      HotkeyDialogRenderer(
        title:
            json["title"] == null ? null : TextElement.fromJson(json["title"]),
        sections: json["sections"] == null
            ? null
            : List<HotkeyDialogRendererSection>.from(json["sections"]
                .map((x) => HotkeyDialogRendererSection.fromJson(x))),
        dismissButton: json["dismissButton"] == null
            ? null
            : A11YSkipNavigationButtonClass.fromJson(json["dismissButton"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title.toJson(),
        "sections": sections == null
            ? null
            : List<dynamic>.from(sections.map((x) => x.toJson())),
        "dismissButton": dismissButton == null ? null : dismissButton.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class HotkeyDialogRendererSection {
  HotkeyDialogRendererSection({
    this.hotkeyDialogSectionRenderer,
  });

  final HotkeyDialogSectionRenderer hotkeyDialogSectionRenderer;

  factory HotkeyDialogRendererSection.fromRawJson(String str) =>
      HotkeyDialogRendererSection.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HotkeyDialogRendererSection.fromJson(Map<String, dynamic> json) =>
      HotkeyDialogRendererSection(
        hotkeyDialogSectionRenderer: json["hotkeyDialogSectionRenderer"] == null
            ? null
            : HotkeyDialogSectionRenderer.fromJson(
                json["hotkeyDialogSectionRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "hotkeyDialogSectionRenderer": hotkeyDialogSectionRenderer == null
            ? null
            : hotkeyDialogSectionRenderer.toJson(),
      };
}

class HotkeyDialogSectionRenderer {
  HotkeyDialogSectionRenderer({
    this.title,
    this.options,
  });

  final TextElement title;
  final List<Option> options;

  factory HotkeyDialogSectionRenderer.fromRawJson(String str) =>
      HotkeyDialogSectionRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HotkeyDialogSectionRenderer.fromJson(Map<String, dynamic> json) =>
      HotkeyDialogSectionRenderer(
        title:
            json["title"] == null ? null : TextElement.fromJson(json["title"]),
        options: json["options"] == null
            ? null
            : List<Option>.from(json["options"].map((x) => Option.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title.toJson(),
        "options": options == null
            ? null
            : List<dynamic>.from(options.map((x) => x.toJson())),
      };
}

class Option {
  Option({
    this.hotkeyDialogSectionOptionRenderer,
  });

  final HotkeyDialogSectionOptionRenderer hotkeyDialogSectionOptionRenderer;

  factory Option.fromRawJson(String str) => Option.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Option.fromJson(Map<String, dynamic> json) => Option(
        hotkeyDialogSectionOptionRenderer:
            json["hotkeyDialogSectionOptionRenderer"] == null
                ? null
                : HotkeyDialogSectionOptionRenderer.fromJson(
                    json["hotkeyDialogSectionOptionRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "hotkeyDialogSectionOptionRenderer":
            hotkeyDialogSectionOptionRenderer == null
                ? null
                : hotkeyDialogSectionOptionRenderer.toJson(),
      };
}

class HotkeyDialogSectionOptionRenderer {
  HotkeyDialogSectionOptionRenderer({
    this.label,
    this.hotkey,
    this.hotkeyAccessibilityLabel,
  });

  final TextElement label;
  final String hotkey;
  final AccessibilityData hotkeyAccessibilityLabel;

  factory HotkeyDialogSectionOptionRenderer.fromRawJson(String str) =>
      HotkeyDialogSectionOptionRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HotkeyDialogSectionOptionRenderer.fromJson(
          Map<String, dynamic> json) =>
      HotkeyDialogSectionOptionRenderer(
        label:
            json["label"] == null ? null : TextElement.fromJson(json["label"]),
        hotkey: json["hotkey"] == null ? null : json["hotkey"],
        hotkeyAccessibilityLabel: json["hotkeyAccessibilityLabel"] == null
            ? null
            : AccessibilityData.fromJson(json["hotkeyAccessibilityLabel"]),
      );

  Map<String, dynamic> toJson() => {
        "label": label == null ? null : label.toJson(),
        "hotkey": hotkey == null ? null : hotkey,
        "hotkeyAccessibilityLabel": hotkeyAccessibilityLabel == null
            ? null
            : hotkeyAccessibilityLabel.toJson(),
      };
}

class Logo {
  Logo({
    this.topbarLogoRenderer,
  });

  final TopbarLogoRenderer topbarLogoRenderer;

  factory Logo.fromRawJson(String str) => Logo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Logo.fromJson(Map<String, dynamic> json) => Logo(
        topbarLogoRenderer: json["topbarLogoRenderer"] == null
            ? null
            : TopbarLogoRenderer.fromJson(json["topbarLogoRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "topbarLogoRenderer":
            topbarLogoRenderer == null ? null : topbarLogoRenderer.toJson(),
      };
}

class TopbarLogoRenderer {
  TopbarLogoRenderer({
    this.iconImage,
    this.tooltipText,
    this.endpoint,
    this.trackingParams,
  });

  final IconImage iconImage;
  final TextElement tooltipText;
  final Endpoint endpoint;
  final String trackingParams;

  factory TopbarLogoRenderer.fromRawJson(String str) =>
      TopbarLogoRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TopbarLogoRenderer.fromJson(Map<String, dynamic> json) =>
      TopbarLogoRenderer(
        iconImage: json["iconImage"] == null
            ? null
            : IconImage.fromJson(json["iconImage"]),
        tooltipText: json["tooltipText"] == null
            ? null
            : TextElement.fromJson(json["tooltipText"]),
        endpoint: json["endpoint"] == null
            ? null
            : Endpoint.fromJson(json["endpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "iconImage": iconImage == null ? null : iconImage.toJson(),
        "tooltipText": tooltipText == null ? null : tooltipText.toJson(),
        "endpoint": endpoint == null ? null : endpoint.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class Searchbox {
  Searchbox({
    this.fusionSearchboxRenderer,
  });

  final FusionSearchboxRenderer fusionSearchboxRenderer;

  factory Searchbox.fromRawJson(String str) =>
      Searchbox.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Searchbox.fromJson(Map<String, dynamic> json) => Searchbox(
        fusionSearchboxRenderer: json["fusionSearchboxRenderer"] == null
            ? null
            : FusionSearchboxRenderer.fromJson(json["fusionSearchboxRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "fusionSearchboxRenderer": fusionSearchboxRenderer == null
            ? null
            : fusionSearchboxRenderer.toJson(),
      };
}

class FusionSearchboxRenderer {
  FusionSearchboxRenderer({
    this.icon,
    this.placeholderText,
    this.config,
    this.trackingParams,
    this.searchEndpoint,
  });

  final IconImage icon;
  final TextElement placeholderText;
  final Config config;
  final String trackingParams;
  final NextEndpointClass searchEndpoint;

  factory FusionSearchboxRenderer.fromRawJson(String str) =>
      FusionSearchboxRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FusionSearchboxRenderer.fromJson(Map<String, dynamic> json) =>
      FusionSearchboxRenderer(
        icon: json["icon"] == null ? null : IconImage.fromJson(json["icon"]),
        placeholderText: json["placeholderText"] == null
            ? null
            : TextElement.fromJson(json["placeholderText"]),
        config: json["config"] == null ? null : Config.fromJson(json["config"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        searchEndpoint: json["searchEndpoint"] == null
            ? null
            : NextEndpointClass.fromJson(json["searchEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "icon": icon == null ? null : icon.toJson(),
        "placeholderText":
            placeholderText == null ? null : placeholderText.toJson(),
        "config": config == null ? null : config.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "searchEndpoint":
            searchEndpoint == null ? null : searchEndpoint.toJson(),
      };
}

class Config {
  Config({
    this.webSearchboxConfig,
  });

  final WebSearchboxConfig webSearchboxConfig;

  factory Config.fromRawJson(String str) => Config.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Config.fromJson(Map<String, dynamic> json) => Config(
        webSearchboxConfig: json["webSearchboxConfig"] == null
            ? null
            : WebSearchboxConfig.fromJson(json["webSearchboxConfig"]),
      );

  Map<String, dynamic> toJson() => {
        "webSearchboxConfig":
            webSearchboxConfig == null ? null : webSearchboxConfig.toJson(),
      };
}

class WebSearchboxConfig {
  WebSearchboxConfig({
    this.requestLanguage,
    this.requestDomain,
    this.hasOnscreenKeyboard,
    this.focusSearchbox,
  });

  final String requestLanguage;
  final String requestDomain;
  final bool hasOnscreenKeyboard;
  final bool focusSearchbox;

  factory WebSearchboxConfig.fromRawJson(String str) =>
      WebSearchboxConfig.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WebSearchboxConfig.fromJson(Map<String, dynamic> json) =>
      WebSearchboxConfig(
        requestLanguage:
            json["requestLanguage"] == null ? null : json["requestLanguage"],
        requestDomain:
            json["requestDomain"] == null ? null : json["requestDomain"],
        hasOnscreenKeyboard: json["hasOnscreenKeyboard"] == null
            ? null
            : json["hasOnscreenKeyboard"],
        focusSearchbox:
            json["focusSearchbox"] == null ? null : json["focusSearchbox"],
      );

  Map<String, dynamic> toJson() => {
        "requestLanguage": requestLanguage == null ? null : requestLanguage,
        "requestDomain": requestDomain == null ? null : requestDomain,
        "hasOnscreenKeyboard":
            hasOnscreenKeyboard == null ? null : hasOnscreenKeyboard,
        "focusSearchbox": focusSearchbox == null ? null : focusSearchbox,
      };
}

class TopbarButton {
  TopbarButton({
    this.topbarMenuButtonRenderer,
    this.buttonRenderer,
  });

  final TopbarMenuButtonRenderer topbarMenuButtonRenderer;
  final TopbarButtonButtonRenderer buttonRenderer;

  factory TopbarButton.fromRawJson(String str) =>
      TopbarButton.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TopbarButton.fromJson(Map<String, dynamic> json) => TopbarButton(
        topbarMenuButtonRenderer: json["topbarMenuButtonRenderer"] == null
            ? null
            : TopbarMenuButtonRenderer.fromJson(
                json["topbarMenuButtonRenderer"]),
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : TopbarButtonButtonRenderer.fromJson(json["buttonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "topbarMenuButtonRenderer": topbarMenuButtonRenderer == null
            ? null
            : topbarMenuButtonRenderer.toJson(),
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toJson(),
      };
}

class TopbarButtonButtonRenderer {
  TopbarButtonButtonRenderer({
    this.style,
    this.size,
    this.text,
    this.icon,
    this.navigationEndpoint,
    this.trackingParams,
    this.targetId,
  });

  final String style;
  final String size;
  final TextElement text;
  final IconImage icon;
  final MischievousNavigationEndpoint navigationEndpoint;
  final String trackingParams;
  final String targetId;

  factory TopbarButtonButtonRenderer.fromRawJson(String str) =>
      TopbarButtonButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TopbarButtonButtonRenderer.fromJson(Map<String, dynamic> json) =>
      TopbarButtonButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        text: json["text"] == null ? null : TextElement.fromJson(json["text"]),
        icon: json["icon"] == null ? null : IconImage.fromJson(json["icon"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : MischievousNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        targetId: json["targetId"] == null ? null : json["targetId"],
      );

  Map<String, dynamic> toJson() => {
        "style": style == null ? null : style,
        "size": size == null ? null : size,
        "text": text == null ? null : text.toJson(),
        "icon": icon == null ? null : icon.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "targetId": targetId == null ? null : targetId,
      };
}

class MischievousNavigationEndpoint {
  MischievousNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signInEndpoint,
  });

  final String clickTrackingParams;
  final SearchEndpointCommandMetadata commandMetadata;
  final StickySignInEndpoint signInEndpoint;

  factory MischievousNavigationEndpoint.fromRawJson(String str) =>
      MischievousNavigationEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MischievousNavigationEndpoint.fromJson(Map<String, dynamic> json) =>
      MischievousNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : SearchEndpointCommandMetadata.fromJson(json["commandMetadata"]),
        signInEndpoint: json["signInEndpoint"] == null
            ? null
            : StickySignInEndpoint.fromJson(json["signInEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "signInEndpoint":
            signInEndpoint == null ? null : signInEndpoint.toJson(),
      };
}

class StickySignInEndpoint {
  StickySignInEndpoint({
    this.idamTag,
  });

  final String idamTag;

  factory StickySignInEndpoint.fromRawJson(String str) =>
      StickySignInEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StickySignInEndpoint.fromJson(Map<String, dynamic> json) =>
      StickySignInEndpoint(
        idamTag: json["idamTag"] == null ? null : json["idamTag"],
      );

  Map<String, dynamic> toJson() => {
        "idamTag": idamTag == null ? null : idamTag,
      };
}

class TopbarMenuButtonRenderer {
  TopbarMenuButtonRenderer({
    this.icon,
    this.menuRenderer,
    this.trackingParams,
    this.accessibility,
    this.tooltip,
    this.style,
    this.targetId,
    this.menuRequest,
  });

  final IconImage icon;
  final TopbarMenuButtonRendererMenuRenderer menuRenderer;
  final String trackingParams;
  final AccessibilityData accessibility;
  final String tooltip;
  final String style;
  final String targetId;
  final MenuRequest menuRequest;

  factory TopbarMenuButtonRenderer.fromRawJson(String str) =>
      TopbarMenuButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TopbarMenuButtonRenderer.fromJson(Map<String, dynamic> json) =>
      TopbarMenuButtonRenderer(
        icon: json["icon"] == null ? null : IconImage.fromJson(json["icon"]),
        menuRenderer: json["menuRenderer"] == null
            ? null
            : TopbarMenuButtonRendererMenuRenderer.fromJson(
                json["menuRenderer"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        accessibility: json["accessibility"] == null
            ? null
            : AccessibilityData.fromJson(json["accessibility"]),
        tooltip: json["tooltip"] == null ? null : json["tooltip"],
        style: json["style"] == null ? null : json["style"],
        targetId: json["targetId"] == null ? null : json["targetId"],
        menuRequest: json["menuRequest"] == null
            ? null
            : MenuRequest.fromJson(json["menuRequest"]),
      );

  Map<String, dynamic> toJson() => {
        "icon": icon == null ? null : icon.toJson(),
        "menuRenderer": menuRenderer == null ? null : menuRenderer.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "accessibility": accessibility == null ? null : accessibility.toJson(),
        "tooltip": tooltip == null ? null : tooltip,
        "style": style == null ? null : style,
        "targetId": targetId == null ? null : targetId,
        "menuRequest": menuRequest == null ? null : menuRequest.toJson(),
      };
}

class TopbarMenuButtonRendererMenuRenderer {
  TopbarMenuButtonRendererMenuRenderer({
    this.multiPageMenuRenderer,
  });

  final MenuRendererMultiPageMenuRenderer multiPageMenuRenderer;

  factory TopbarMenuButtonRendererMenuRenderer.fromRawJson(String str) =>
      TopbarMenuButtonRendererMenuRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TopbarMenuButtonRendererMenuRenderer.fromJson(
          Map<String, dynamic> json) =>
      TopbarMenuButtonRendererMenuRenderer(
        multiPageMenuRenderer: json["multiPageMenuRenderer"] == null
            ? null
            : MenuRendererMultiPageMenuRenderer.fromJson(
                json["multiPageMenuRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "multiPageMenuRenderer": multiPageMenuRenderer == null
            ? null
            : multiPageMenuRenderer.toJson(),
      };
}

class MenuRendererMultiPageMenuRenderer {
  MenuRendererMultiPageMenuRenderer({
    this.sections,
    this.trackingParams,
  });

  final List<MultiPageMenuRendererSection> sections;
  final String trackingParams;

  factory MenuRendererMultiPageMenuRenderer.fromRawJson(String str) =>
      MenuRendererMultiPageMenuRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MenuRendererMultiPageMenuRenderer.fromJson(
          Map<String, dynamic> json) =>
      MenuRendererMultiPageMenuRenderer(
        sections: json["sections"] == null
            ? null
            : List<MultiPageMenuRendererSection>.from(json["sections"]
                .map((x) => MultiPageMenuRendererSection.fromJson(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "sections": sections == null
            ? null
            : List<dynamic>.from(sections.map((x) => x.toJson())),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class MultiPageMenuRendererSection {
  MultiPageMenuRendererSection({
    this.multiPageMenuSectionRenderer,
  });

  final MultiPageMenuSectionRenderer multiPageMenuSectionRenderer;

  factory MultiPageMenuRendererSection.fromRawJson(String str) =>
      MultiPageMenuRendererSection.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MultiPageMenuRendererSection.fromJson(Map<String, dynamic> json) =>
      MultiPageMenuRendererSection(
        multiPageMenuSectionRenderer:
            json["multiPageMenuSectionRenderer"] == null
                ? null
                : MultiPageMenuSectionRenderer.fromJson(
                    json["multiPageMenuSectionRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "multiPageMenuSectionRenderer": multiPageMenuSectionRenderer == null
            ? null
            : multiPageMenuSectionRenderer.toJson(),
      };
}

class MultiPageMenuSectionRenderer {
  MultiPageMenuSectionRenderer({
    this.items,
    this.trackingParams,
  });

  final List<MultiPageMenuSectionRendererItem> items;
  final String trackingParams;

  factory MultiPageMenuSectionRenderer.fromRawJson(String str) =>
      MultiPageMenuSectionRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MultiPageMenuSectionRenderer.fromJson(Map<String, dynamic> json) =>
      MultiPageMenuSectionRenderer(
        items: json["items"] == null
            ? null
            : List<MultiPageMenuSectionRendererItem>.from(json["items"]
                .map((x) => MultiPageMenuSectionRendererItem.fromJson(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "items": items == null
            ? null
            : List<dynamic>.from(items.map((x) => x.toJson())),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class MultiPageMenuSectionRendererItem {
  MultiPageMenuSectionRendererItem({
    this.compactLinkRenderer,
  });

  final CompactLinkRenderer compactLinkRenderer;

  factory MultiPageMenuSectionRendererItem.fromRawJson(String str) =>
      MultiPageMenuSectionRendererItem.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MultiPageMenuSectionRendererItem.fromJson(
          Map<String, dynamic> json) =>
      MultiPageMenuSectionRendererItem(
        compactLinkRenderer: json["compactLinkRenderer"] == null
            ? null
            : CompactLinkRenderer.fromJson(json["compactLinkRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "compactLinkRenderer":
            compactLinkRenderer == null ? null : compactLinkRenderer.toJson(),
      };
}

class CompactLinkRenderer {
  CompactLinkRenderer({
    this.icon,
    this.title,
    this.navigationEndpoint,
    this.trackingParams,
  });

  final IconImage icon;
  final TextElement title;
  final CompactLinkRendererNavigationEndpoint navigationEndpoint;
  final String trackingParams;

  factory CompactLinkRenderer.fromRawJson(String str) =>
      CompactLinkRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CompactLinkRenderer.fromJson(Map<String, dynamic> json) =>
      CompactLinkRenderer(
        icon: json["icon"] == null ? null : IconImage.fromJson(json["icon"]),
        title:
            json["title"] == null ? null : TextElement.fromJson(json["title"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : CompactLinkRendererNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "icon": icon == null ? null : icon.toJson(),
        "title": title == null ? null : title.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class CompactLinkRendererNavigationEndpoint {
  CompactLinkRendererNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.urlEndpoint,
  });

  final String clickTrackingParams;
  final SearchEndpointCommandMetadata commandMetadata;
  final FluffyUrlEndpoint urlEndpoint;

  factory CompactLinkRendererNavigationEndpoint.fromRawJson(String str) =>
      CompactLinkRendererNavigationEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CompactLinkRendererNavigationEndpoint.fromJson(
          Map<String, dynamic> json) =>
      CompactLinkRendererNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : SearchEndpointCommandMetadata.fromJson(json["commandMetadata"]),
        urlEndpoint: json["urlEndpoint"] == null
            ? null
            : FluffyUrlEndpoint.fromJson(json["urlEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "urlEndpoint": urlEndpoint == null ? null : urlEndpoint.toJson(),
      };
}

class FluffyUrlEndpoint {
  FluffyUrlEndpoint({
    this.url,
    this.target,
  });

  final String url;
  final String target;

  factory FluffyUrlEndpoint.fromRawJson(String str) =>
      FluffyUrlEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyUrlEndpoint.fromJson(Map<String, dynamic> json) =>
      FluffyUrlEndpoint(
        url: json["url"] == null ? null : json["url"],
        target: json["target"] == null ? null : json["target"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "target": target == null ? null : target,
      };
}

class MenuRequest {
  MenuRequest({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signalServiceEndpoint,
  });

  final String clickTrackingParams;
  final ContinuationEndpointCommandMetadata commandMetadata;
  final MenuRequestSignalServiceEndpoint signalServiceEndpoint;

  factory MenuRequest.fromRawJson(String str) =>
      MenuRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MenuRequest.fromJson(Map<String, dynamic> json) => MenuRequest(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : ContinuationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        signalServiceEndpoint: json["signalServiceEndpoint"] == null
            ? null
            : MenuRequestSignalServiceEndpoint.fromJson(
                json["signalServiceEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "signalServiceEndpoint": signalServiceEndpoint == null
            ? null
            : signalServiceEndpoint.toJson(),
      };
}

class MenuRequestSignalServiceEndpoint {
  MenuRequestSignalServiceEndpoint({
    this.signal,
    this.actions,
  });

  final String signal;
  final List<HilariousAction> actions;

  factory MenuRequestSignalServiceEndpoint.fromRawJson(String str) =>
      MenuRequestSignalServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MenuRequestSignalServiceEndpoint.fromJson(
          Map<String, dynamic> json) =>
      MenuRequestSignalServiceEndpoint(
        signal: json["signal"] == null ? null : json["signal"],
        actions: json["actions"] == null
            ? null
            : List<HilariousAction>.from(
                json["actions"].map((x) => HilariousAction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "signal": signal == null ? null : signal,
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toJson())),
      };
}

class HilariousAction {
  HilariousAction({
    this.clickTrackingParams,
    this.openPopupAction,
  });

  final String clickTrackingParams;
  final FluffyOpenPopupAction openPopupAction;

  factory HilariousAction.fromRawJson(String str) =>
      HilariousAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HilariousAction.fromJson(Map<String, dynamic> json) =>
      HilariousAction(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        openPopupAction: json["openPopupAction"] == null
            ? null
            : FluffyOpenPopupAction.fromJson(json["openPopupAction"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "openPopupAction":
            openPopupAction == null ? null : openPopupAction.toJson(),
      };
}

class FluffyOpenPopupAction {
  FluffyOpenPopupAction({
    this.popup,
    this.popupType,
    this.beReused,
  });

  final TentacledPopup popup;
  final String popupType;
  final bool beReused;

  factory FluffyOpenPopupAction.fromRawJson(String str) =>
      FluffyOpenPopupAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyOpenPopupAction.fromJson(Map<String, dynamic> json) =>
      FluffyOpenPopupAction(
        popup: json["popup"] == null
            ? null
            : TentacledPopup.fromJson(json["popup"]),
        popupType: json["popupType"] == null ? null : json["popupType"],
        beReused: json["beReused"] == null ? null : json["beReused"],
      );

  Map<String, dynamic> toJson() => {
        "popup": popup == null ? null : popup.toJson(),
        "popupType": popupType == null ? null : popupType,
        "beReused": beReused == null ? null : beReused,
      };
}

class TentacledPopup {
  TentacledPopup({
    this.multiPageMenuRenderer,
  });

  final PopupMultiPageMenuRenderer multiPageMenuRenderer;

  factory TentacledPopup.fromRawJson(String str) =>
      TentacledPopup.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledPopup.fromJson(Map<String, dynamic> json) => TentacledPopup(
        multiPageMenuRenderer: json["multiPageMenuRenderer"] == null
            ? null
            : PopupMultiPageMenuRenderer.fromJson(
                json["multiPageMenuRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "multiPageMenuRenderer": multiPageMenuRenderer == null
            ? null
            : multiPageMenuRenderer.toJson(),
      };
}

class PopupMultiPageMenuRenderer {
  PopupMultiPageMenuRenderer({
    this.trackingParams,
    this.style,
    this.showLoadingSpinner,
  });

  final String trackingParams;
  final String style;
  final bool showLoadingSpinner;

  factory PopupMultiPageMenuRenderer.fromRawJson(String str) =>
      PopupMultiPageMenuRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PopupMultiPageMenuRenderer.fromJson(Map<String, dynamic> json) =>
      PopupMultiPageMenuRenderer(
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        style: json["style"] == null ? null : json["style"],
        showLoadingSpinner: json["showLoadingSpinner"] == null
            ? null
            : json["showLoadingSpinner"],
      );

  Map<String, dynamic> toJson() => {
        "trackingParams": trackingParams == null ? null : trackingParams,
        "style": style == null ? null : style,
        "showLoadingSpinner":
            showLoadingSpinner == null ? null : showLoadingSpinner,
      };
}

class VoiceSearchDialogRenderer {
  VoiceSearchDialogRenderer({
    this.placeholderHeader,
    this.promptHeader,
    this.exampleQuery1,
    this.exampleQuery2,
    this.promptMicrophoneLabel,
    this.loadingHeader,
    this.connectionErrorHeader,
    this.connectionErrorMicrophoneLabel,
    this.permissionsHeader,
    this.permissionsSubtext,
    this.disabledHeader,
    this.disabledSubtext,
    this.exitButton,
    this.trackingParams,
    this.microphoneOffPromptHeader,
  });

  final TextElement placeholderHeader;
  final TextElement promptHeader;
  final TextElement exampleQuery1;
  final TextElement exampleQuery2;
  final TextElement promptMicrophoneLabel;
  final TextElement loadingHeader;
  final TextElement connectionErrorHeader;
  final TextElement connectionErrorMicrophoneLabel;
  final TextElement permissionsHeader;
  final TextElement permissionsSubtext;
  final TextElement disabledHeader;
  final TextElement disabledSubtext;
  final VoiceSearchButtonClass exitButton;
  final String trackingParams;
  final TextElement microphoneOffPromptHeader;

  factory VoiceSearchDialogRenderer.fromRawJson(String str) =>
      VoiceSearchDialogRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VoiceSearchDialogRenderer.fromJson(Map<String, dynamic> json) =>
      VoiceSearchDialogRenderer(
        placeholderHeader: json["placeholderHeader"] == null
            ? null
            : TextElement.fromJson(json["placeholderHeader"]),
        promptHeader: json["promptHeader"] == null
            ? null
            : TextElement.fromJson(json["promptHeader"]),
        exampleQuery1: json["exampleQuery1"] == null
            ? null
            : TextElement.fromJson(json["exampleQuery1"]),
        exampleQuery2: json["exampleQuery2"] == null
            ? null
            : TextElement.fromJson(json["exampleQuery2"]),
        promptMicrophoneLabel: json["promptMicrophoneLabel"] == null
            ? null
            : TextElement.fromJson(json["promptMicrophoneLabel"]),
        loadingHeader: json["loadingHeader"] == null
            ? null
            : TextElement.fromJson(json["loadingHeader"]),
        connectionErrorHeader: json["connectionErrorHeader"] == null
            ? null
            : TextElement.fromJson(json["connectionErrorHeader"]),
        connectionErrorMicrophoneLabel:
            json["connectionErrorMicrophoneLabel"] == null
                ? null
                : TextElement.fromJson(json["connectionErrorMicrophoneLabel"]),
        permissionsHeader: json["permissionsHeader"] == null
            ? null
            : TextElement.fromJson(json["permissionsHeader"]),
        permissionsSubtext: json["permissionsSubtext"] == null
            ? null
            : TextElement.fromJson(json["permissionsSubtext"]),
        disabledHeader: json["disabledHeader"] == null
            ? null
            : TextElement.fromJson(json["disabledHeader"]),
        disabledSubtext: json["disabledSubtext"] == null
            ? null
            : TextElement.fromJson(json["disabledSubtext"]),
        exitButton: json["exitButton"] == null
            ? null
            : VoiceSearchButtonClass.fromJson(json["exitButton"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        microphoneOffPromptHeader: json["microphoneOffPromptHeader"] == null
            ? null
            : TextElement.fromJson(json["microphoneOffPromptHeader"]),
      );

  Map<String, dynamic> toJson() => {
        "placeholderHeader":
            placeholderHeader == null ? null : placeholderHeader.toJson(),
        "promptHeader": promptHeader == null ? null : promptHeader.toJson(),
        "exampleQuery1": exampleQuery1 == null ? null : exampleQuery1.toJson(),
        "exampleQuery2": exampleQuery2 == null ? null : exampleQuery2.toJson(),
        "promptMicrophoneLabel": promptMicrophoneLabel == null
            ? null
            : promptMicrophoneLabel.toJson(),
        "loadingHeader": loadingHeader == null ? null : loadingHeader.toJson(),
        "connectionErrorHeader": connectionErrorHeader == null
            ? null
            : connectionErrorHeader.toJson(),
        "connectionErrorMicrophoneLabel": connectionErrorMicrophoneLabel == null
            ? null
            : connectionErrorMicrophoneLabel.toJson(),
        "permissionsHeader":
            permissionsHeader == null ? null : permissionsHeader.toJson(),
        "permissionsSubtext":
            permissionsSubtext == null ? null : permissionsSubtext.toJson(),
        "disabledHeader":
            disabledHeader == null ? null : disabledHeader.toJson(),
        "disabledSubtext":
            disabledSubtext == null ? null : disabledSubtext.toJson(),
        "exitButton": exitButton == null ? null : exitButton.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "microphoneOffPromptHeader": microphoneOffPromptHeader == null
            ? null
            : microphoneOffPromptHeader.toJson(),
      };
}

class StickyPopup {
  StickyPopup({
    this.voiceSearchDialogRenderer,
  });

  final VoiceSearchDialogRenderer voiceSearchDialogRenderer;

  factory StickyPopup.fromRawJson(String str) =>
      StickyPopup.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StickyPopup.fromJson(Map<String, dynamic> json) => StickyPopup(
        voiceSearchDialogRenderer: json["voiceSearchDialogRenderer"] == null
            ? null
            : VoiceSearchDialogRenderer.fromJson(
                json["voiceSearchDialogRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "voiceSearchDialogRenderer": voiceSearchDialogRenderer == null
            ? null
            : voiceSearchDialogRenderer.toJson(),
      };
}

class TentacledOpenPopupAction {
  TentacledOpenPopupAction({
    this.popup,
    this.popupType,
  });

  final StickyPopup popup;
  final String popupType;

  factory TentacledOpenPopupAction.fromRawJson(String str) =>
      TentacledOpenPopupAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledOpenPopupAction.fromJson(Map<String, dynamic> json) =>
      TentacledOpenPopupAction(
        popup:
            json["popup"] == null ? null : StickyPopup.fromJson(json["popup"]),
        popupType: json["popupType"] == null ? null : json["popupType"],
      );

  Map<String, dynamic> toJson() => {
        "popup": popup == null ? null : popup.toJson(),
        "popupType": popupType == null ? null : popupType,
      };
}

class AmbitiousAction {
  AmbitiousAction({
    this.clickTrackingParams,
    this.openPopupAction,
  });

  final String clickTrackingParams;
  final TentacledOpenPopupAction openPopupAction;

  factory AmbitiousAction.fromRawJson(String str) =>
      AmbitiousAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AmbitiousAction.fromJson(Map<String, dynamic> json) =>
      AmbitiousAction(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        openPopupAction: json["openPopupAction"] == null
            ? null
            : TentacledOpenPopupAction.fromJson(json["openPopupAction"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "openPopupAction":
            openPopupAction == null ? null : openPopupAction.toJson(),
      };
}

class TentacledSignalServiceEndpoint {
  TentacledSignalServiceEndpoint({
    this.signal,
    this.actions,
  });

  final Signal signal;
  final List<AmbitiousAction> actions;

  factory TentacledSignalServiceEndpoint.fromRawJson(String str) =>
      TentacledSignalServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledSignalServiceEndpoint.fromJson(Map<String, dynamic> json) =>
      TentacledSignalServiceEndpoint(
        signal:
            json["signal"] == null ? null : signalValues.map[json["signal"]],
        actions: json["actions"] == null
            ? null
            : List<AmbitiousAction>.from(
                json["actions"].map((x) => AmbitiousAction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "signal": signal == null ? null : signalValues.reverse[signal],
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toJson())),
      };
}

class IndecentServiceEndpoint {
  IndecentServiceEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signalServiceEndpoint,
  });

  final String clickTrackingParams;
  final StickyCommandMetadata commandMetadata;
  final TentacledSignalServiceEndpoint signalServiceEndpoint;

  factory IndecentServiceEndpoint.fromRawJson(String str) =>
      IndecentServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IndecentServiceEndpoint.fromJson(Map<String, dynamic> json) =>
      IndecentServiceEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : StickyCommandMetadata.fromJson(json["commandMetadata"]),
        signalServiceEndpoint: json["signalServiceEndpoint"] == null
            ? null
            : TentacledSignalServiceEndpoint.fromJson(
                json["signalServiceEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "signalServiceEndpoint": signalServiceEndpoint == null
            ? null
            : signalServiceEndpoint.toJson(),
      };
}

class VoiceSearchButtonButtonRenderer {
  VoiceSearchButtonButtonRenderer({
    this.style,
    this.size,
    this.isDisabled,
    this.serviceEndpoint,
    this.icon,
    this.tooltip,
    this.trackingParams,
    this.accessibilityData,
  });

  final String style;
  final String size;
  final bool isDisabled;
  final IndecentServiceEndpoint serviceEndpoint;
  final IconImage icon;
  final String tooltip;
  final String trackingParams;
  final AccessibilityData accessibilityData;

  factory VoiceSearchButtonButtonRenderer.fromRawJson(String str) =>
      VoiceSearchButtonButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VoiceSearchButtonButtonRenderer.fromJson(Map<String, dynamic> json) =>
      VoiceSearchButtonButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        serviceEndpoint: json["serviceEndpoint"] == null
            ? null
            : IndecentServiceEndpoint.fromJson(json["serviceEndpoint"]),
        icon: json["icon"] == null ? null : IconImage.fromJson(json["icon"]),
        tooltip: json["tooltip"] == null ? null : json["tooltip"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        accessibilityData: json["accessibilityData"] == null
            ? null
            : AccessibilityData.fromJson(json["accessibilityData"]),
      );

  Map<String, dynamic> toJson() => {
        "style": style == null ? null : style,
        "size": size == null ? null : size,
        "isDisabled": isDisabled == null ? null : isDisabled,
        "serviceEndpoint":
            serviceEndpoint == null ? null : serviceEndpoint.toJson(),
        "icon": icon == null ? null : icon.toJson(),
        "tooltip": tooltip == null ? null : tooltip,
        "trackingParams": trackingParams == null ? null : trackingParams,
        "accessibilityData":
            accessibilityData == null ? null : accessibilityData.toJson(),
      };
}

class VoiceSearchButtonClass {
  VoiceSearchButtonClass({
    this.buttonRenderer,
  });

  final VoiceSearchButtonButtonRenderer buttonRenderer;

  factory VoiceSearchButtonClass.fromRawJson(String str) =>
      VoiceSearchButtonClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VoiceSearchButtonClass.fromJson(Map<String, dynamic> json) =>
      VoiceSearchButtonClass(
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : VoiceSearchButtonButtonRenderer.fromJson(json["buttonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toJson(),
      };
}

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
