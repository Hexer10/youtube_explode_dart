// To parse this JSON data, do
//
//     final searchPageId = searchPageIdFromJson(jsonString);

import 'dart:convert';

class SearchPageId {
  SearchPageId({
    this.responseContext,
    this.estimatedResults,
    this.contents,
    this.trackingParams,
    this.topbar,
    this.adSafetyReason,
    this.refinements,
    this.onResponseReceivedCommands,
  });

  final ResponseContext responseContext;
  final String estimatedResults;
  final Contents contents;
  final String trackingParams;
  final Topbar topbar;
  final AdSafetyReason adSafetyReason;
  final List<String> refinements;
  final List<OnResponseReceivedCommand> onResponseReceivedCommands;

  factory SearchPageId.fromRawJson(String str) =>
      SearchPageId.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SearchPageId.fromJson(Map<String, dynamic> json) => SearchPageId(
        responseContext: json["responseContext"] == null
            ? null
            : ResponseContext.fromJson(json["responseContext"]),
        estimatedResults:
            json["estimatedResults"] == null ? null : json["estimatedResults"],
        contents: json["contents"] == null
            ? null
            : Contents.fromJson(json["contents"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        topbar: json["topbar"] == null ? null : Topbar.fromJson(json["topbar"]),
        adSafetyReason: json["adSafetyReason"] == null
            ? null
            : AdSafetyReason.fromJson(json["adSafetyReason"]),
        refinements: json["refinements"] == null
            ? null
            : List<String>.from(json["refinements"].map((x) => x)),
        onResponseReceivedCommands: json["onResponseReceivedCommands"] == null
            ? null
            : List<OnResponseReceivedCommand>.from(
                json["onResponseReceivedCommands"]
                    .map((x) => OnResponseReceivedCommand.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "responseContext":
            responseContext == null ? null : responseContext.toJson(),
        "estimatedResults": estimatedResults == null ? null : estimatedResults,
        "contents": contents == null ? null : contents.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "topbar": topbar == null ? null : topbar.toJson(),
        "adSafetyReason":
            adSafetyReason == null ? null : adSafetyReason.toJson(),
        "refinements": refinements == null
            ? null
            : List<dynamic>.from(refinements.map((x) => x)),
        "onResponseReceivedCommands": onResponseReceivedCommands == null
            ? null
            : List<dynamic>.from(
                onResponseReceivedCommands.map((x) => x.toJson())),
      };
}

class AdSafetyReason {
  AdSafetyReason({
    this.apmUserPreference,
    this.isWebAndAppActivityEnabled,
  });

  final ApmUserPreference apmUserPreference;
  final bool isWebAndAppActivityEnabled;

  factory AdSafetyReason.fromRawJson(String str) =>
      AdSafetyReason.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AdSafetyReason.fromJson(Map<String, dynamic> json) => AdSafetyReason(
        apmUserPreference: json["apmUserPreference"] == null
            ? null
            : ApmUserPreference.fromJson(json["apmUserPreference"]),
        isWebAndAppActivityEnabled: json["isWebAndAppActivityEnabled"] == null
            ? null
            : json["isWebAndAppActivityEnabled"],
      );

  Map<String, dynamic> toJson() => {
        "apmUserPreference":
            apmUserPreference == null ? null : apmUserPreference.toJson(),
        "isWebAndAppActivityEnabled": isWebAndAppActivityEnabled == null
            ? null
            : isWebAndAppActivityEnabled,
      };
}

class ApmUserPreference {
  ApmUserPreference();

  factory ApmUserPreference.fromRawJson(String str) =>
      ApmUserPreference.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ApmUserPreference.fromJson(Map<String, dynamic> json) =>
      ApmUserPreference();

  Map<String, dynamic> toJson() => {};
}

class Contents {
  Contents({
    this.twoColumnSearchResultsRenderer,
  });

  final TwoColumnSearchResultsRenderer twoColumnSearchResultsRenderer;

  factory Contents.fromRawJson(String str) =>
      Contents.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Contents.fromJson(Map<String, dynamic> json) => Contents(
        twoColumnSearchResultsRenderer:
            json["twoColumnSearchResultsRenderer"] == null
                ? null
                : TwoColumnSearchResultsRenderer.fromJson(
                    json["twoColumnSearchResultsRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "twoColumnSearchResultsRenderer": twoColumnSearchResultsRenderer == null
            ? null
            : twoColumnSearchResultsRenderer.toJson(),
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

  final SectionListRenderer sectionListRenderer;

  factory PrimaryContents.fromRawJson(String str) =>
      PrimaryContents.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PrimaryContents.fromJson(Map<String, dynamic> json) =>
      PrimaryContents(
        sectionListRenderer: json["sectionListRenderer"] == null
            ? null
            : SectionListRenderer.fromJson(json["sectionListRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "sectionListRenderer":
            sectionListRenderer == null ? null : sectionListRenderer.toJson(),
      };
}

class SectionListRenderer {
  SectionListRenderer({
    this.contents,
    this.trackingParams,
    this.subMenu,
    this.hideBottomSeparator,
    this.targetId,
  });

  final List<SectionListRendererContent> contents;
  final String trackingParams;
  final SubMenu subMenu;
  final bool hideBottomSeparator;
  final String targetId;

  factory SectionListRenderer.fromRawJson(String str) =>
      SectionListRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SectionListRenderer.fromJson(Map<String, dynamic> json) =>
      SectionListRenderer(
        contents: json["contents"] == null
            ? null
            : List<SectionListRendererContent>.from(json["contents"]
                .map((x) => SectionListRendererContent.fromJson(x))),
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

class SectionListRendererContent {
  SectionListRendererContent({
    this.itemSectionRenderer,
    this.continuationItemRenderer,
  });

  final ContentItemSectionRenderer itemSectionRenderer;
  final ContinuationItemRenderer continuationItemRenderer;

  factory SectionListRendererContent.fromRawJson(String str) =>
      SectionListRendererContent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SectionListRendererContent.fromJson(Map<String, dynamic> json) =>
      SectionListRendererContent(
        itemSectionRenderer: json["itemSectionRenderer"] == null
            ? null
            : ContentItemSectionRenderer.fromJson(json["itemSectionRenderer"]),
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
    this.url,
    this.sendPost,
    this.apiUrl,
  });

  final Url url;
  final bool sendPost;
  final ApiUrl apiUrl;

  factory PurpleWebCommandMetadata.fromRawJson(String str) =>
      PurpleWebCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleWebCommandMetadata.fromJson(Map<String, dynamic> json) =>
      PurpleWebCommandMetadata(
        url: json["url"] == null ? null : urlValues.map[json["url"]],
        sendPost: json["sendPost"] == null ? null : json["sendPost"],
        apiUrl:
            json["apiUrl"] == null ? null : apiUrlValues.map[json["apiUrl"]],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : urlValues.reverse[url],
        "sendPost": sendPost == null ? null : sendPost,
        "apiUrl": apiUrl == null ? null : apiUrlValues.reverse[apiUrl],
      };
}

enum ApiUrl {
  YOUTUBEI_V1_SEARCH,
  YOUTUBEI_V1_PLAYLIST_CREATE,
  YOUTUBEI_V1_BROWSE_EDIT_PLAYLIST,
  YOUTUBEI_V1_PLAYLIST_GET_ADD_TO_PLAYLIST,
  YOUTUBEI_V1_FLAG_GET_FORM,
  YOUTUBEI_V1_NOTIFICATION_GET_NOTIFICATION_MENU,
  YOUTUBEI_V1_NOTIFICATION_GET_UNSEEN_COUNT,
  YOUTUBEI_V1_ACCOUNT_ACCOUNT_MENU
}

final apiUrlValues = EnumValues({
  "/youtubei/v1/account/account_menu": ApiUrl.YOUTUBEI_V1_ACCOUNT_ACCOUNT_MENU,
  "/youtubei/v1/browse/edit_playlist": ApiUrl.YOUTUBEI_V1_BROWSE_EDIT_PLAYLIST,
  "/youtubei/v1/flag/get_form": ApiUrl.YOUTUBEI_V1_FLAG_GET_FORM,
  "/youtubei/v1/notification/get_notification_menu":
      ApiUrl.YOUTUBEI_V1_NOTIFICATION_GET_NOTIFICATION_MENU,
  "/youtubei/v1/notification/get_unseen_count":
      ApiUrl.YOUTUBEI_V1_NOTIFICATION_GET_UNSEEN_COUNT,
  "/youtubei/v1/playlist/create": ApiUrl.YOUTUBEI_V1_PLAYLIST_CREATE,
  "/youtubei/v1/playlist/get_add_to_playlist":
      ApiUrl.YOUTUBEI_V1_PLAYLIST_GET_ADD_TO_PLAYLIST,
  "/youtubei/v1/search": ApiUrl.YOUTUBEI_V1_SEARCH
});

enum Url { SERVICE_AJAX }

final urlValues = EnumValues({"/service_ajax": Url.SERVICE_AJAX});

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

class ContentItemSectionRenderer {
  ContentItemSectionRenderer({
    this.contents,
    this.trackingParams,
  });

  final List<PurpleContent> contents;
  final String trackingParams;

  factory ContentItemSectionRenderer.fromRawJson(String str) =>
      ContentItemSectionRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ContentItemSectionRenderer.fromJson(Map<String, dynamic> json) =>
      ContentItemSectionRenderer(
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
    this.videoRenderer,
    this.shelfRenderer,
    this.radioRenderer,
    this.horizontalCardListRenderer,
    this.channelRenderer,
  });

  final PurpleVideoRenderer videoRenderer;
  final ShelfRenderer shelfRenderer;
  final RadioRenderer radioRenderer;
  final HorizontalCardListRenderer horizontalCardListRenderer;
  final ChannelRenderer channelRenderer;

  factory PurpleContent.fromRawJson(String str) =>
      PurpleContent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleContent.fromJson(Map<String, dynamic> json) => PurpleContent(
        videoRenderer: json["videoRenderer"] == null
            ? null
            : PurpleVideoRenderer.fromJson(json["videoRenderer"]),
        shelfRenderer: json["shelfRenderer"] == null
            ? null
            : ShelfRenderer.fromJson(json["shelfRenderer"]),
        radioRenderer: json["radioRenderer"] == null
            ? null
            : RadioRenderer.fromJson(json["radioRenderer"]),
        horizontalCardListRenderer: json["horizontalCardListRenderer"] == null
            ? null
            : HorizontalCardListRenderer.fromJson(
                json["horizontalCardListRenderer"]),
        channelRenderer: json["channelRenderer"] == null
            ? null
            : ChannelRenderer.fromJson(json["channelRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "videoRenderer": videoRenderer == null ? null : videoRenderer.toJson(),
        "shelfRenderer": shelfRenderer == null ? null : shelfRenderer.toJson(),
        "radioRenderer": radioRenderer == null ? null : radioRenderer.toJson(),
        "horizontalCardListRenderer": horizontalCardListRenderer == null
            ? null
            : horizontalCardListRenderer.toJson(),
        "channelRenderer":
            channelRenderer == null ? null : channelRenderer.toJson(),
      };
}

class ChannelRenderer {
  ChannelRenderer({
    this.channelId,
    this.title,
    this.navigationEndpoint,
    this.thumbnail,
    this.descriptionSnippet,
    this.shortBylineText,
    this.videoCountText,
    this.subscriptionButton,
    this.subscriberCountText,
    this.subscribeButton,
    this.trackingParams,
    this.longBylineText,
  });

  final String channelId;
  final PublishedTimeText title;
  final RunNavigationEndpoint navigationEndpoint;
  final ChannelRendererThumbnail thumbnail;
  final TitleClass descriptionSnippet;
  final Text shortBylineText;
  final TitleClass videoCountText;
  final SubscriptionButton subscriptionButton;
  final PublishedTimeText subscriberCountText;
  final A11YSkipNavigationButtonClass subscribeButton;
  final String trackingParams;
  final Text longBylineText;

  factory ChannelRenderer.fromRawJson(String str) =>
      ChannelRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChannelRenderer.fromJson(Map<String, dynamic> json) =>
      ChannelRenderer(
        channelId: json["channelId"] == null ? null : json["channelId"],
        title: json["title"] == null
            ? null
            : PublishedTimeText.fromJson(json["title"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : RunNavigationEndpoint.fromJson(json["navigationEndpoint"]),
        thumbnail: json["thumbnail"] == null
            ? null
            : ChannelRendererThumbnail.fromJson(json["thumbnail"]),
        descriptionSnippet: json["descriptionSnippet"] == null
            ? null
            : TitleClass.fromJson(json["descriptionSnippet"]),
        shortBylineText: json["shortBylineText"] == null
            ? null
            : Text.fromJson(json["shortBylineText"]),
        videoCountText: json["videoCountText"] == null
            ? null
            : TitleClass.fromJson(json["videoCountText"]),
        subscriptionButton: json["subscriptionButton"] == null
            ? null
            : SubscriptionButton.fromJson(json["subscriptionButton"]),
        subscriberCountText: json["subscriberCountText"] == null
            ? null
            : PublishedTimeText.fromJson(json["subscriberCountText"]),
        subscribeButton: json["subscribeButton"] == null
            ? null
            : A11YSkipNavigationButtonClass.fromJson(json["subscribeButton"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        longBylineText: json["longBylineText"] == null
            ? null
            : Text.fromJson(json["longBylineText"]),
      );

  Map<String, dynamic> toJson() => {
        "channelId": channelId == null ? null : channelId,
        "title": title == null ? null : title.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "thumbnail": thumbnail == null ? null : thumbnail.toJson(),
        "descriptionSnippet":
            descriptionSnippet == null ? null : descriptionSnippet.toJson(),
        "shortBylineText":
            shortBylineText == null ? null : shortBylineText.toJson(),
        "videoCountText":
            videoCountText == null ? null : videoCountText.toJson(),
        "subscriptionButton":
            subscriptionButton == null ? null : subscriptionButton.toJson(),
        "subscriberCountText":
            subscriberCountText == null ? null : subscriberCountText.toJson(),
        "subscribeButton":
            subscribeButton == null ? null : subscribeButton.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "longBylineText":
            longBylineText == null ? null : longBylineText.toJson(),
      };
}

class TitleClass {
  TitleClass({
    this.runs,
  });

  final List<TextRun> runs;

  factory TitleClass.fromRawJson(String str) =>
      TitleClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TitleClass.fromJson(Map<String, dynamic> json) => TitleClass(
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

class Text {
  Text({
    this.runs,
  });

  final List<LongBylineTextRun> runs;

  factory Text.fromRawJson(String str) => Text.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Text.fromJson(Map<String, dynamic> json) => Text(
        runs: json["runs"] == null
            ? null
            : List<LongBylineTextRun>.from(
                json["runs"].map((x) => LongBylineTextRun.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "runs": runs == null
            ? null
            : List<dynamic>.from(runs.map((x) => x.toJson())),
      };
}

class LongBylineTextRun {
  LongBylineTextRun({
    this.text,
    this.navigationEndpoint,
  });

  final String text;
  final RunNavigationEndpoint navigationEndpoint;

  factory LongBylineTextRun.fromRawJson(String str) =>
      LongBylineTextRun.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LongBylineTextRun.fromJson(Map<String, dynamic> json) =>
      LongBylineTextRun(
        text: json["text"] == null ? null : json["text"],
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : RunNavigationEndpoint.fromJson(json["navigationEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text,
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
      };
}

class RunNavigationEndpoint {
  RunNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.browseEndpoint,
  });

  final String clickTrackingParams;
  final NavigationEndpointCommandMetadata commandMetadata;
  final NavigationEndpointBrowseEndpoint browseEndpoint;

  factory RunNavigationEndpoint.fromRawJson(String str) =>
      RunNavigationEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RunNavigationEndpoint.fromJson(Map<String, dynamic> json) =>
      RunNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : NavigationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        browseEndpoint: json["browseEndpoint"] == null
            ? null
            : NavigationEndpointBrowseEndpoint.fromJson(json["browseEndpoint"]),
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

class NavigationEndpointBrowseEndpoint {
  NavigationEndpointBrowseEndpoint({
    this.browseId,
    this.canonicalBaseUrl,
  });

  final String browseId;
  final String canonicalBaseUrl;

  factory NavigationEndpointBrowseEndpoint.fromRawJson(String str) =>
      NavigationEndpointBrowseEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NavigationEndpointBrowseEndpoint.fromJson(
          Map<String, dynamic> json) =>
      NavigationEndpointBrowseEndpoint(
        browseId: json["browseId"] == null ? null : json["browseId"],
        canonicalBaseUrl:
            json["canonicalBaseUrl"] == null ? null : json["canonicalBaseUrl"],
      );

  Map<String, dynamic> toJson() => {
        "browseId": browseId == null ? null : browseId,
        "canonicalBaseUrl": canonicalBaseUrl == null ? null : canonicalBaseUrl,
      };
}

class NavigationEndpointCommandMetadata {
  NavigationEndpointCommandMetadata({
    this.webCommandMetadata,
  });

  final FluffyWebCommandMetadata webCommandMetadata;

  factory NavigationEndpointCommandMetadata.fromRawJson(String str) =>
      NavigationEndpointCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NavigationEndpointCommandMetadata.fromJson(
          Map<String, dynamic> json) =>
      NavigationEndpointCommandMetadata(
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
    this.url,
    this.webPageType,
    this.rootVe,
  });

  final String url;
  final WebPageType webPageType;
  final int rootVe;

  factory FluffyWebCommandMetadata.fromRawJson(String str) =>
      FluffyWebCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyWebCommandMetadata.fromJson(Map<String, dynamic> json) =>
      FluffyWebCommandMetadata(
        url: json["url"] == null ? null : json["url"],
        webPageType: json["webPageType"] == null
            ? null
            : webPageTypeValues.map[json["webPageType"]],
        rootVe: json["rootVe"] == null ? null : json["rootVe"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "webPageType":
            webPageType == null ? null : webPageTypeValues.reverse[webPageType],
        "rootVe": rootVe == null ? null : rootVe,
      };
}

enum WebPageType {
  WEB_PAGE_TYPE_CHANNEL,
  WEB_PAGE_TYPE_UNKNOWN,
  WEB_PAGE_TYPE_SEARCH,
  WEB_PAGE_TYPE_WATCH,
  WEB_PAGE_TYPE_BROWSE
}

final webPageTypeValues = EnumValues({
  "WEB_PAGE_TYPE_BROWSE": WebPageType.WEB_PAGE_TYPE_BROWSE,
  "WEB_PAGE_TYPE_CHANNEL": WebPageType.WEB_PAGE_TYPE_CHANNEL,
  "WEB_PAGE_TYPE_SEARCH": WebPageType.WEB_PAGE_TYPE_SEARCH,
  "WEB_PAGE_TYPE_UNKNOWN": WebPageType.WEB_PAGE_TYPE_UNKNOWN,
  "WEB_PAGE_TYPE_WATCH": WebPageType.WEB_PAGE_TYPE_WATCH
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
    this.accessibility,
  });

  final ButtonRendererStyle style;
  final Size size;
  final bool isDisabled;
  final TitleClass text;
  final PurpleNavigationEndpoint navigationEndpoint;
  final String trackingParams;
  final Command command;
  final ButtonRendererAccessibility accessibility;

  factory A11YSkipNavigationButtonButtonRenderer.fromRawJson(String str) =>
      A11YSkipNavigationButtonButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory A11YSkipNavigationButtonButtonRenderer.fromJson(
          Map<String, dynamic> json) =>
      A11YSkipNavigationButtonButtonRenderer(
        style: json["style"] == null
            ? null
            : buttonRendererStyleValues.map[json["style"]],
        size: json["size"] == null ? null : sizeValues.map[json["size"]],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        text: json["text"] == null ? null : TitleClass.fromJson(json["text"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : PurpleNavigationEndpoint.fromJson(json["navigationEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        command:
            json["command"] == null ? null : Command.fromJson(json["command"]),
        accessibility: json["accessibility"] == null
            ? null
            : ButtonRendererAccessibility.fromJson(json["accessibility"]),
      );

  Map<String, dynamic> toJson() => {
        "style":
            style == null ? null : buttonRendererStyleValues.reverse[style],
        "size": size == null ? null : sizeValues.reverse[size],
        "isDisabled": isDisabled == null ? null : isDisabled,
        "text": text == null ? null : text.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "command": command == null ? null : command.toJson(),
        "accessibility": accessibility == null ? null : accessibility.toJson(),
      };
}

class ButtonRendererAccessibility {
  ButtonRendererAccessibility({
    this.label,
  });

  final String label;

  factory ButtonRendererAccessibility.fromRawJson(String str) =>
      ButtonRendererAccessibility.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ButtonRendererAccessibility.fromJson(Map<String, dynamic> json) =>
      ButtonRendererAccessibility(
        label: json["label"] == null ? null : json["label"],
      );

  Map<String, dynamic> toJson() => {
        "label": label == null ? null : label,
      };
}

class Command {
  Command({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signalServiceEndpoint,
  });

  final String clickTrackingParams;
  final CommandCommandMetadata commandMetadata;
  final CommandSignalServiceEndpoint signalServiceEndpoint;

  factory Command.fromRawJson(String str) => Command.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Command.fromJson(Map<String, dynamic> json) => Command(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : CommandCommandMetadata.fromJson(json["commandMetadata"]),
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

class CommandCommandMetadata {
  CommandCommandMetadata({
    this.webCommandMetadata,
  });

  final TentacledWebCommandMetadata webCommandMetadata;

  factory CommandCommandMetadata.fromRawJson(String str) =>
      CommandCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CommandCommandMetadata.fromJson(Map<String, dynamic> json) =>
      CommandCommandMetadata(
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
    this.url,
    this.sendPost,
  });

  final Url url;
  final bool sendPost;

  factory TentacledWebCommandMetadata.fromRawJson(String str) =>
      TentacledWebCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledWebCommandMetadata.fromJson(Map<String, dynamic> json) =>
      TentacledWebCommandMetadata(
        url: json["url"] == null ? null : urlValues.map[json["url"]],
        sendPost: json["sendPost"] == null ? null : json["sendPost"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : urlValues.reverse[url],
        "sendPost": sendPost == null ? null : sendPost,
      };
}

class CommandSignalServiceEndpoint {
  CommandSignalServiceEndpoint({
    this.signal,
    this.actions,
  });

  final SignalEnum signal;
  final List<PurpleAction> actions;

  factory CommandSignalServiceEndpoint.fromRawJson(String str) =>
      CommandSignalServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CommandSignalServiceEndpoint.fromJson(Map<String, dynamic> json) =>
      CommandSignalServiceEndpoint(
        signal: json["signal"] == null
            ? null
            : signalEnumValues.map[json["signal"]],
        actions: json["actions"] == null
            ? null
            : List<PurpleAction>.from(
                json["actions"].map((x) => PurpleAction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "signal": signal == null ? null : signalEnumValues.reverse[signal],
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toJson())),
      };
}

class PurpleAction {
  PurpleAction({
    this.clickTrackingParams,
    this.signalAction,
  });

  final String clickTrackingParams;
  final Signal signalAction;

  factory PurpleAction.fromRawJson(String str) =>
      PurpleAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleAction.fromJson(Map<String, dynamic> json) => PurpleAction(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        signalAction: json["signalAction"] == null
            ? null
            : Signal.fromJson(json["signalAction"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "signalAction": signalAction == null ? null : signalAction.toJson(),
      };
}

class Signal {
  Signal({
    this.signal,
  });

  final String signal;

  factory Signal.fromRawJson(String str) => Signal.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Signal.fromJson(Map<String, dynamic> json) => Signal(
        signal: json["signal"] == null ? null : json["signal"],
      );

  Map<String, dynamic> toJson() => {
        "signal": signal == null ? null : signal,
      };
}

enum SignalEnum { CLIENT_SIGNAL }

final signalEnumValues =
    EnumValues({"CLIENT_SIGNAL": SignalEnum.CLIENT_SIGNAL});

class PurpleNavigationEndpoint {
  PurpleNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signInEndpoint,
  });

  final String clickTrackingParams;
  final NavigationEndpointCommandMetadata commandMetadata;
  final PurpleSignInEndpoint signInEndpoint;

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
            : NavigationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
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
  final NavigationEndpointCommandMetadata commandMetadata;
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
            : NavigationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
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

  final Query query;

  factory NextEndpointSearchEndpoint.fromRawJson(String str) =>
      NextEndpointSearchEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NextEndpointSearchEndpoint.fromJson(Map<String, dynamic> json) =>
      NextEndpointSearchEndpoint(
        query: json["query"] == null ? null : queryValues.map[json["query"]],
      );

  Map<String, dynamic> toJson() => {
        "query": query == null ? null : queryValues.reverse[query],
      };
}

enum Query { HEXAH, EMPTY }

final queryValues = EnumValues({"": Query.EMPTY, "hexah": Query.HEXAH});

enum Size { SIZE_DEFAULT }

final sizeValues = EnumValues({"SIZE_DEFAULT": Size.SIZE_DEFAULT});

enum ButtonRendererStyle {
  STYLE_DESTRUCTIVE,
  STYLE_DEFAULT,
  STYLE_BLUE_TEXT,
  STYLE_TEXT
}

final buttonRendererStyleValues = EnumValues({
  "STYLE_BLUE_TEXT": ButtonRendererStyle.STYLE_BLUE_TEXT,
  "STYLE_DEFAULT": ButtonRendererStyle.STYLE_DEFAULT,
  "STYLE_DESTRUCTIVE": ButtonRendererStyle.STYLE_DESTRUCTIVE,
  "STYLE_TEXT": ButtonRendererStyle.STYLE_TEXT
});

class PublishedTimeText {
  PublishedTimeText({
    this.simpleText,
  });

  final String simpleText;

  factory PublishedTimeText.fromRawJson(String str) =>
      PublishedTimeText.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PublishedTimeText.fromJson(Map<String, dynamic> json) =>
      PublishedTimeText(
        simpleText: json["simpleText"] == null ? null : json["simpleText"],
      );

  Map<String, dynamic> toJson() => {
        "simpleText": simpleText == null ? null : simpleText,
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

  final List<ThumbnailElement> thumbnails;

  factory ChannelRendererThumbnail.fromRawJson(String str) =>
      ChannelRendererThumbnail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChannelRendererThumbnail.fromJson(Map<String, dynamic> json) =>
      ChannelRendererThumbnail(
        thumbnails: json["thumbnails"] == null
            ? null
            : List<ThumbnailElement>.from(
                json["thumbnails"].map((x) => ThumbnailElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "thumbnails": thumbnails == null
            ? null
            : List<dynamic>.from(thumbnails.map((x) => x.toJson())),
      };
}

class ThumbnailElement {
  ThumbnailElement({
    this.url,
    this.width,
    this.height,
  });

  final String url;
  final int width;
  final int height;

  factory ThumbnailElement.fromRawJson(String str) =>
      ThumbnailElement.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ThumbnailElement.fromJson(Map<String, dynamic> json) =>
      ThumbnailElement(
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
  final TitleClass query;
  final NavigationEndpointClass searchEndpoint;
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
            json["query"] == null ? null : TitleClass.fromJson(json["query"]),
        searchEndpoint: json["searchEndpoint"] == null
            ? null
            : NavigationEndpointClass.fromJson(json["searchEndpoint"]),
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

class NavigationEndpointClass {
  NavigationEndpointClass({
    this.clickTrackingParams,
    this.commandMetadata,
    this.searchEndpoint,
  });

  final String clickTrackingParams;
  final NavigationEndpointCommandMetadata commandMetadata;
  final NavigationEndpointSearchEndpoint searchEndpoint;

  factory NavigationEndpointClass.fromRawJson(String str) =>
      NavigationEndpointClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NavigationEndpointClass.fromJson(Map<String, dynamic> json) =>
      NavigationEndpointClass(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : NavigationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        searchEndpoint: json["searchEndpoint"] == null
            ? null
            : NavigationEndpointSearchEndpoint.fromJson(json["searchEndpoint"]),
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

class NavigationEndpointSearchEndpoint {
  NavigationEndpointSearchEndpoint({
    this.query,
    this.params,
  });

  final String query;
  final String params;

  factory NavigationEndpointSearchEndpoint.fromRawJson(String str) =>
      NavigationEndpointSearchEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NavigationEndpointSearchEndpoint.fromJson(
          Map<String, dynamic> json) =>
      NavigationEndpointSearchEndpoint(
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

  final AlertMessage title;
  final String trackingParams;
  final SecurityIcon icon;

  factory RichListHeaderRenderer.fromRawJson(String str) =>
      RichListHeaderRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RichListHeaderRenderer.fromJson(Map<String, dynamic> json) =>
      RichListHeaderRenderer(
        title:
            json["title"] == null ? null : AlertMessage.fromJson(json["title"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        icon: json["icon"] == null ? null : SecurityIcon.fromJson(json["icon"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "icon": icon == null ? null : icon.toJson(),
      };
}

class SecurityIcon {
  SecurityIcon({
    this.iconType,
  });

  final String iconType;

  factory SecurityIcon.fromRawJson(String str) =>
      SecurityIcon.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SecurityIcon.fromJson(Map<String, dynamic> json) => SecurityIcon(
        iconType: json["iconType"] == null ? null : json["iconType"],
      );

  Map<String, dynamic> toJson() => {
        "iconType": iconType == null ? null : iconType,
      };
}

class AlertMessage {
  AlertMessage({
    this.runs,
  });

  final List<AlertMessageRun> runs;

  factory AlertMessage.fromRawJson(String str) =>
      AlertMessage.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AlertMessage.fromJson(Map<String, dynamic> json) => AlertMessage(
        runs: json["runs"] == null
            ? null
            : List<AlertMessageRun>.from(
                json["runs"].map((x) => AlertMessageRun.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "runs": runs == null
            ? null
            : List<dynamic>.from(runs.map((x) => x.toJson())),
      };
}

class AlertMessageRun {
  AlertMessageRun({
    this.text,
    this.bold,
  });

  final String text;
  final bool bold;

  factory AlertMessageRun.fromRawJson(String str) =>
      AlertMessageRun.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AlertMessageRun.fromJson(Map<String, dynamic> json) =>
      AlertMessageRun(
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

  final String playlistId;
  final PublishedTimeText title;
  final ChannelRendererThumbnail thumbnail;
  final TitleClass videoCountText;
  final RadioRendererNavigationEndpoint navigationEndpoint;
  final PublishedTimeText shortBylineText;
  final String trackingParams;
  final List<Video> videos;
  final AlertMessage thumbnailText;
  final PublishedTimeText longBylineText;
  final List<RadioRendererThumbnailOverlay> thumbnailOverlays;
  final TitleClass videoCountShortText;

  factory RadioRenderer.fromRawJson(String str) =>
      RadioRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RadioRenderer.fromJson(Map<String, dynamic> json) => RadioRenderer(
        playlistId: json["playlistId"] == null ? null : json["playlistId"],
        title: json["title"] == null
            ? null
            : PublishedTimeText.fromJson(json["title"]),
        thumbnail: json["thumbnail"] == null
            ? null
            : ChannelRendererThumbnail.fromJson(json["thumbnail"]),
        videoCountText: json["videoCountText"] == null
            ? null
            : TitleClass.fromJson(json["videoCountText"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : RadioRendererNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
        shortBylineText: json["shortBylineText"] == null
            ? null
            : PublishedTimeText.fromJson(json["shortBylineText"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        videos: json["videos"] == null
            ? null
            : List<Video>.from(json["videos"].map((x) => Video.fromJson(x))),
        thumbnailText: json["thumbnailText"] == null
            ? null
            : AlertMessage.fromJson(json["thumbnailText"]),
        longBylineText: json["longBylineText"] == null
            ? null
            : PublishedTimeText.fromJson(json["longBylineText"]),
        thumbnailOverlays: json["thumbnailOverlays"] == null
            ? null
            : List<RadioRendererThumbnailOverlay>.from(json["thumbnailOverlays"]
                .map((x) => RadioRendererThumbnailOverlay.fromJson(x))),
        videoCountShortText: json["videoCountShortText"] == null
            ? null
            : TitleClass.fromJson(json["videoCountShortText"]),
      );

  Map<String, dynamic> toJson() => {
        "playlistId": playlistId == null ? null : playlistId,
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
  final NavigationEndpointCommandMetadata commandMetadata;
  final WatchEndpoint watchEndpoint;

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
            : NavigationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        watchEndpoint: json["watchEndpoint"] == null
            ? null
            : WatchEndpoint.fromJson(json["watchEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "watchEndpoint": watchEndpoint == null ? null : watchEndpoint.toJson(),
      };
}

class WatchEndpoint {
  WatchEndpoint({
    this.videoId,
    this.playlistId,
    this.params,
    this.continuePlayback,
  });

  final String videoId;
  final String playlistId;
  final String params;
  final bool continuePlayback;

  factory WatchEndpoint.fromRawJson(String str) =>
      WatchEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WatchEndpoint.fromJson(Map<String, dynamic> json) => WatchEndpoint(
        videoId: json["videoId"] == null ? null : json["videoId"],
        playlistId: json["playlistId"] == null ? null : json["playlistId"],
        params: json["params"] == null ? null : json["params"],
        continuePlayback:
            json["continuePlayback"] == null ? null : json["continuePlayback"],
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId == null ? null : videoId,
        "playlistId": playlistId == null ? null : playlistId,
        "params": params == null ? null : params,
        "continuePlayback": continuePlayback == null ? null : continuePlayback,
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

  final TitleClass text;
  final SecurityIcon icon;

  factory ThumbnailOverlayRenderer.fromRawJson(String str) =>
      ThumbnailOverlayRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ThumbnailOverlayRenderer.fromJson(Map<String, dynamic> json) =>
      ThumbnailOverlayRenderer(
        text: json["text"] == null ? null : TitleClass.fromJson(json["text"]),
        icon: json["icon"] == null ? null : SecurityIcon.fromJson(json["icon"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text.toJson(),
        "icon": icon == null ? null : icon.toJson(),
      };
}

class ThumbnailOverlayNowPlayingRenderer {
  ThumbnailOverlayNowPlayingRenderer({
    this.text,
  });

  final TitleClass text;

  factory ThumbnailOverlayNowPlayingRenderer.fromRawJson(String str) =>
      ThumbnailOverlayNowPlayingRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ThumbnailOverlayNowPlayingRenderer.fromJson(
          Map<String, dynamic> json) =>
      ThumbnailOverlayNowPlayingRenderer(
        text: json["text"] == null ? null : TitleClass.fromJson(json["text"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text.toJson(),
      };
}

class Video {
  Video({
    this.childVideoRenderer,
  });

  final ChildVideoRenderer childVideoRenderer;

  factory Video.fromRawJson(String str) => Video.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Video.fromJson(Map<String, dynamic> json) => Video(
        childVideoRenderer: json["childVideoRenderer"] == null
            ? null
            : ChildVideoRenderer.fromJson(json["childVideoRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "childVideoRenderer":
            childVideoRenderer == null ? null : childVideoRenderer.toJson(),
      };
}

class ChildVideoRenderer {
  ChildVideoRenderer({
    this.title,
    this.navigationEndpoint,
    this.lengthText,
    this.videoId,
  });

  final PublishedTimeText title;
  final RadioRendererNavigationEndpoint navigationEndpoint;
  final LengthTextClass lengthText;
  final String videoId;

  factory ChildVideoRenderer.fromRawJson(String str) =>
      ChildVideoRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChildVideoRenderer.fromJson(Map<String, dynamic> json) =>
      ChildVideoRenderer(
        title: json["title"] == null
            ? null
            : PublishedTimeText.fromJson(json["title"]),
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

class LengthTextClass {
  LengthTextClass({
    this.accessibility,
    this.simpleText,
  });

  final HotkeyAccessibilityLabelClass accessibility;
  final String simpleText;

  factory LengthTextClass.fromRawJson(String str) =>
      LengthTextClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LengthTextClass.fromJson(Map<String, dynamic> json) =>
      LengthTextClass(
        accessibility: json["accessibility"] == null
            ? null
            : HotkeyAccessibilityLabelClass.fromJson(json["accessibility"]),
        simpleText: json["simpleText"] == null ? null : json["simpleText"],
      );

  Map<String, dynamic> toJson() => {
        "accessibility": accessibility == null ? null : accessibility.toJson(),
        "simpleText": simpleText == null ? null : simpleText,
      };
}

class HotkeyAccessibilityLabelClass {
  HotkeyAccessibilityLabelClass({
    this.accessibilityData,
  });

  final ButtonRendererAccessibility accessibilityData;

  factory HotkeyAccessibilityLabelClass.fromRawJson(String str) =>
      HotkeyAccessibilityLabelClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HotkeyAccessibilityLabelClass.fromJson(Map<String, dynamic> json) =>
      HotkeyAccessibilityLabelClass(
        accessibilityData: json["accessibilityData"] == null
            ? null
            : ButtonRendererAccessibility.fromJson(json["accessibilityData"]),
      );

  Map<String, dynamic> toJson() => {
        "accessibilityData":
            accessibilityData == null ? null : accessibilityData.toJson(),
      };
}

class ShelfRenderer {
  ShelfRenderer({
    this.title,
    this.content,
    this.trackingParams,
  });

  final PublishedTimeText title;
  final ShelfRendererContent content;
  final String trackingParams;

  factory ShelfRenderer.fromRawJson(String str) =>
      ShelfRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ShelfRenderer.fromJson(Map<String, dynamic> json) => ShelfRenderer(
        title: json["title"] == null
            ? null
            : PublishedTimeText.fromJson(json["title"]),
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

  final List<PurpleContent> items;
  final int collapsedItemCount;
  final Title collapsedStateButtonText;
  final String trackingParams;

  factory VerticalListRenderer.fromRawJson(String str) =>
      VerticalListRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VerticalListRenderer.fromJson(Map<String, dynamic> json) =>
      VerticalListRenderer(
        items: json["items"] == null
            ? null
            : List<PurpleContent>.from(
                json["items"].map((x) => PurpleContent.fromJson(x))),
        collapsedItemCount: json["collapsedItemCount"] == null
            ? null
            : json["collapsedItemCount"],
        collapsedStateButtonText: json["collapsedStateButtonText"] == null
            ? null
            : Title.fromJson(json["collapsedStateButtonText"]),
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

class Title {
  Title({
    this.runs,
    this.accessibility,
  });

  final List<TextRun> runs;
  final HotkeyAccessibilityLabelClass accessibility;

  factory Title.fromRawJson(String str) => Title.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Title.fromJson(Map<String, dynamic> json) => Title(
        runs: json["runs"] == null
            ? null
            : List<TextRun>.from(json["runs"].map((x) => TextRun.fromJson(x))),
        accessibility: json["accessibility"] == null
            ? null
            : HotkeyAccessibilityLabelClass.fromJson(json["accessibility"]),
      );

  Map<String, dynamic> toJson() => {
        "runs": runs == null
            ? null
            : List<dynamic>.from(runs.map((x) => x.toJson())),
        "accessibility": accessibility == null ? null : accessibility.toJson(),
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
    this.publishedTimeText,
    this.badges,
    this.richThumbnail,
    this.topStandaloneBadge,
  });

  final String videoId;
  final ChannelRendererThumbnail thumbnail;
  final Title title;
  final TitleClass descriptionSnippet;
  final Text longBylineText;
  final LengthTextClass lengthText;
  final PublishedTimeText viewCountText;
  final VideoRendererNavigationEndpoint navigationEndpoint;
  final List<OwnerBadge> ownerBadges;
  final Text ownerText;
  final Text shortBylineText;
  final String trackingParams;
  final bool showActionMenu;
  final PublishedTimeText shortViewCountText;
  final PurpleMenu menu;
  final ChannelThumbnailSupportedRenderers channelThumbnailSupportedRenderers;
  final List<VideoRendererThumbnailOverlay> thumbnailOverlays;
  final PublishedTimeText publishedTimeText;
  final List<Badge> badges;
  final RichThumbnail richThumbnail;
  final Badge topStandaloneBadge;

  factory ItemVideoRenderer.fromRawJson(String str) =>
      ItemVideoRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ItemVideoRenderer.fromJson(Map<String, dynamic> json) =>
      ItemVideoRenderer(
        videoId: json["videoId"] == null ? null : json["videoId"],
        thumbnail: json["thumbnail"] == null
            ? null
            : ChannelRendererThumbnail.fromJson(json["thumbnail"]),
        title: json["title"] == null ? null : Title.fromJson(json["title"]),
        descriptionSnippet: json["descriptionSnippet"] == null
            ? null
            : TitleClass.fromJson(json["descriptionSnippet"]),
        longBylineText: json["longBylineText"] == null
            ? null
            : Text.fromJson(json["longBylineText"]),
        lengthText: json["lengthText"] == null
            ? null
            : LengthTextClass.fromJson(json["lengthText"]),
        viewCountText: json["viewCountText"] == null
            ? null
            : PublishedTimeText.fromJson(json["viewCountText"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : VideoRendererNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
        ownerBadges: json["ownerBadges"] == null
            ? null
            : List<OwnerBadge>.from(
                json["ownerBadges"].map((x) => OwnerBadge.fromJson(x))),
        ownerText:
            json["ownerText"] == null ? null : Text.fromJson(json["ownerText"]),
        shortBylineText: json["shortBylineText"] == null
            ? null
            : Text.fromJson(json["shortBylineText"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        showActionMenu:
            json["showActionMenu"] == null ? null : json["showActionMenu"],
        shortViewCountText: json["shortViewCountText"] == null
            ? null
            : PublishedTimeText.fromJson(json["shortViewCountText"]),
        menu: json["menu"] == null ? null : PurpleMenu.fromJson(json["menu"]),
        channelThumbnailSupportedRenderers:
            json["channelThumbnailSupportedRenderers"] == null
                ? null
                : ChannelThumbnailSupportedRenderers.fromJson(
                    json["channelThumbnailSupportedRenderers"]),
        thumbnailOverlays: json["thumbnailOverlays"] == null
            ? null
            : List<VideoRendererThumbnailOverlay>.from(json["thumbnailOverlays"]
                .map((x) => VideoRendererThumbnailOverlay.fromJson(x))),
        publishedTimeText: json["publishedTimeText"] == null
            ? null
            : PublishedTimeText.fromJson(json["publishedTimeText"]),
        badges: json["badges"] == null
            ? null
            : List<Badge>.from(json["badges"].map((x) => Badge.fromJson(x))),
        richThumbnail: json["richThumbnail"] == null
            ? null
            : RichThumbnail.fromJson(json["richThumbnail"]),
        topStandaloneBadge: json["topStandaloneBadge"] == null
            ? null
            : Badge.fromJson(json["topStandaloneBadge"]),
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId == null ? null : videoId,
        "thumbnail": thumbnail == null ? null : thumbnail.toJson(),
        "title": title == null ? null : title.toJson(),
        "descriptionSnippet":
            descriptionSnippet == null ? null : descriptionSnippet.toJson(),
        "longBylineText":
            longBylineText == null ? null : longBylineText.toJson(),
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
        "publishedTimeText":
            publishedTimeText == null ? null : publishedTimeText.toJson(),
        "badges": badges == null
            ? null
            : List<dynamic>.from(badges.map((x) => x.toJson())),
        "richThumbnail": richThumbnail == null ? null : richThumbnail.toJson(),
        "topStandaloneBadge":
            topStandaloneBadge == null ? null : topStandaloneBadge.toJson(),
      };
}

class Badge {
  Badge({
    this.metadataBadgeRenderer,
  });

  final BadgeMetadataBadgeRenderer metadataBadgeRenderer;

  factory Badge.fromRawJson(String str) => Badge.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Badge.fromJson(Map<String, dynamic> json) => Badge(
        metadataBadgeRenderer: json["metadataBadgeRenderer"] == null
            ? null
            : BadgeMetadataBadgeRenderer.fromJson(
                json["metadataBadgeRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "metadataBadgeRenderer": metadataBadgeRenderer == null
            ? null
            : metadataBadgeRenderer.toJson(),
      };
}

class BadgeMetadataBadgeRenderer {
  BadgeMetadataBadgeRenderer({
    this.style,
    this.label,
    this.trackingParams,
  });

  final PurpleStyle style;
  final String label;
  final String trackingParams;

  factory BadgeMetadataBadgeRenderer.fromRawJson(String str) =>
      BadgeMetadataBadgeRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BadgeMetadataBadgeRenderer.fromJson(Map<String, dynamic> json) =>
      BadgeMetadataBadgeRenderer(
        style:
            json["style"] == null ? null : purpleStyleValues.map[json["style"]],
        label: json["label"] == null ? null : json["label"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "style": style == null ? null : purpleStyleValues.reverse[style],
        "label": label == null ? null : label,
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

enum PurpleStyle {
  BADGE_STYLE_TYPE_SIMPLE,
  BADGE_STYLE_TYPE_COLLECTION,
  BADGE_STYLE_TYPE_LIVE_NOW
}

final purpleStyleValues = EnumValues({
  "BADGE_STYLE_TYPE_COLLECTION": PurpleStyle.BADGE_STYLE_TYPE_COLLECTION,
  "BADGE_STYLE_TYPE_LIVE_NOW": PurpleStyle.BADGE_STYLE_TYPE_LIVE_NOW,
  "BADGE_STYLE_TYPE_SIMPLE": PurpleStyle.BADGE_STYLE_TYPE_SIMPLE
});

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
  final RunNavigationEndpoint navigationEndpoint;
  final HotkeyAccessibilityLabelClass accessibility;

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
            : RunNavigationEndpoint.fromJson(json["navigationEndpoint"]),
        accessibility: json["accessibility"] == null
            ? null
            : HotkeyAccessibilityLabelClass.fromJson(json["accessibility"]),
      );

  Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail == null ? null : thumbnail.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "accessibility": accessibility == null ? null : accessibility.toJson(),
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
  final HotkeyAccessibilityLabelClass accessibility;

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
            : HotkeyAccessibilityLabelClass.fromJson(json["accessibility"]),
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

  final TitleClass text;
  final SecurityIcon icon;
  final PurpleServiceEndpoint serviceEndpoint;
  final String trackingParams;

  factory PurpleMenuServiceItemRenderer.fromRawJson(String str) =>
      PurpleMenuServiceItemRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleMenuServiceItemRenderer.fromJson(Map<String, dynamic> json) =>
      PurpleMenuServiceItemRenderer(
        text: json["text"] == null ? null : TitleClass.fromJson(json["text"]),
        icon: json["icon"] == null ? null : SecurityIcon.fromJson(json["icon"]),
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

class PurpleServiceEndpoint {
  PurpleServiceEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signalServiceEndpoint,
  });

  final String clickTrackingParams;
  final CommandCommandMetadata commandMetadata;
  final ServiceEndpointSignalServiceEndpoint signalServiceEndpoint;

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
            : CommandCommandMetadata.fromJson(json["commandMetadata"]),
        signalServiceEndpoint: json["signalServiceEndpoint"] == null
            ? null
            : ServiceEndpointSignalServiceEndpoint.fromJson(
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

class ServiceEndpointSignalServiceEndpoint {
  ServiceEndpointSignalServiceEndpoint({
    this.signal,
    this.actions,
  });

  final SignalEnum signal;
  final List<FluffyAction> actions;

  factory ServiceEndpointSignalServiceEndpoint.fromRawJson(String str) =>
      ServiceEndpointSignalServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ServiceEndpointSignalServiceEndpoint.fromJson(
          Map<String, dynamic> json) =>
      ServiceEndpointSignalServiceEndpoint(
        signal: json["signal"] == null
            ? null
            : signalEnumValues.map[json["signal"]],
        actions: json["actions"] == null
            ? null
            : List<FluffyAction>.from(
                json["actions"].map((x) => FluffyAction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "signal": signal == null ? null : signalEnumValues.reverse[signal],
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toJson())),
      };
}

class FluffyAction {
  FluffyAction({
    this.clickTrackingParams,
    this.addToPlaylistCommand,
  });

  final String clickTrackingParams;
  final AddToPlaylistCommand addToPlaylistCommand;

  factory FluffyAction.fromRawJson(String str) =>
      FluffyAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyAction.fromJson(Map<String, dynamic> json) => FluffyAction(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        addToPlaylistCommand: json["addToPlaylistCommand"] == null
            ? null
            : AddToPlaylistCommand.fromJson(json["addToPlaylistCommand"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "addToPlaylistCommand":
            addToPlaylistCommand == null ? null : addToPlaylistCommand.toJson(),
      };
}

class AddToPlaylistCommand {
  AddToPlaylistCommand({
    this.openMiniplayer,
    this.videoId,
    this.listType,
    this.onCreateListCommand,
    this.videoIds,
  });

  final bool openMiniplayer;
  final String videoId;
  final ListType listType;
  final OnCreateListCommand onCreateListCommand;
  final List<String> videoIds;

  factory AddToPlaylistCommand.fromRawJson(String str) =>
      AddToPlaylistCommand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddToPlaylistCommand.fromJson(Map<String, dynamic> json) =>
      AddToPlaylistCommand(
        openMiniplayer:
            json["openMiniplayer"] == null ? null : json["openMiniplayer"],
        videoId: json["videoId"] == null ? null : json["videoId"],
        listType: json["listType"] == null
            ? null
            : listTypeValues.map[json["listType"]],
        onCreateListCommand: json["onCreateListCommand"] == null
            ? null
            : OnCreateListCommand.fromJson(json["onCreateListCommand"]),
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

enum ListType { PLAYLIST_EDIT_LIST_TYPE_QUEUE }

final listTypeValues = EnumValues(
    {"PLAYLIST_EDIT_LIST_TYPE_QUEUE": ListType.PLAYLIST_EDIT_LIST_TYPE_QUEUE});

class OnCreateListCommand {
  OnCreateListCommand({
    this.clickTrackingParams,
    this.commandMetadata,
    this.createPlaylistServiceEndpoint,
  });

  final String clickTrackingParams;
  final ContinuationEndpointCommandMetadata commandMetadata;
  final CreatePlaylistServiceEndpoint createPlaylistServiceEndpoint;

  factory OnCreateListCommand.fromRawJson(String str) =>
      OnCreateListCommand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OnCreateListCommand.fromJson(Map<String, dynamic> json) =>
      OnCreateListCommand(
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

class CreatePlaylistServiceEndpoint {
  CreatePlaylistServiceEndpoint({
    this.videoIds,
    this.params,
  });

  final List<String> videoIds;
  final Params params;

  factory CreatePlaylistServiceEndpoint.fromRawJson(String str) =>
      CreatePlaylistServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CreatePlaylistServiceEndpoint.fromJson(Map<String, dynamic> json) =>
      CreatePlaylistServiceEndpoint(
        videoIds: json["videoIds"] == null
            ? null
            : List<String>.from(json["videoIds"].map((x) => x)),
        params:
            json["params"] == null ? null : paramsValues.map[json["params"]],
      );

  Map<String, dynamic> toJson() => {
        "videoIds": videoIds == null
            ? null
            : List<dynamic>.from(videoIds.map((x) => x)),
        "params": params == null ? null : paramsValues.reverse[params],
      };
}

enum Params { CAQ_3_D }

final paramsValues = EnumValues({"CAQ%3D": Params.CAQ_3_D});

class VideoRendererNavigationEndpoint {
  VideoRendererNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.watchEndpoint,
  });

  final String clickTrackingParams;
  final NavigationEndpointCommandMetadata commandMetadata;
  final WatchEndpointClass watchEndpoint;

  factory VideoRendererNavigationEndpoint.fromRawJson(String str) =>
      VideoRendererNavigationEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VideoRendererNavigationEndpoint.fromJson(Map<String, dynamic> json) =>
      VideoRendererNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : NavigationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        watchEndpoint: json["watchEndpoint"] == null
            ? null
            : WatchEndpointClass.fromJson(json["watchEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "watchEndpoint": watchEndpoint == null ? null : watchEndpoint.toJson(),
      };
}

class WatchEndpointClass {
  WatchEndpointClass({
    this.videoId,
  });

  final String videoId;

  factory WatchEndpointClass.fromRawJson(String str) =>
      WatchEndpointClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WatchEndpointClass.fromJson(Map<String, dynamic> json) =>
      WatchEndpointClass(
        videoId: json["videoId"] == null ? null : json["videoId"],
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId == null ? null : videoId,
      };
}

class OwnerBadge {
  OwnerBadge({
    this.metadataBadgeRenderer,
  });

  final OwnerBadgeMetadataBadgeRenderer metadataBadgeRenderer;

  factory OwnerBadge.fromRawJson(String str) =>
      OwnerBadge.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OwnerBadge.fromJson(Map<String, dynamic> json) => OwnerBadge(
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
  });

  final SecurityIcon icon;
  final FluffyStyle style;
  final Tooltip tooltip;
  final String trackingParams;

  factory OwnerBadgeMetadataBadgeRenderer.fromRawJson(String str) =>
      OwnerBadgeMetadataBadgeRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OwnerBadgeMetadataBadgeRenderer.fromJson(Map<String, dynamic> json) =>
      OwnerBadgeMetadataBadgeRenderer(
        icon: json["icon"] == null ? null : SecurityIcon.fromJson(json["icon"]),
        style:
            json["style"] == null ? null : fluffyStyleValues.map[json["style"]],
        tooltip:
            json["tooltip"] == null ? null : tooltipValues.map[json["tooltip"]],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "icon": icon == null ? null : icon.toJson(),
        "style": style == null ? null : fluffyStyleValues.reverse[style],
        "tooltip": tooltip == null ? null : tooltipValues.reverse[tooltip],
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

enum FluffyStyle { BADGE_STYLE_TYPE_VERIFIED_ARTIST, BADGE_STYLE_TYPE_VERIFIED }

final fluffyStyleValues = EnumValues({
  "BADGE_STYLE_TYPE_VERIFIED": FluffyStyle.BADGE_STYLE_TYPE_VERIFIED,
  "BADGE_STYLE_TYPE_VERIFIED_ARTIST":
      FluffyStyle.BADGE_STYLE_TYPE_VERIFIED_ARTIST
});

enum Tooltip { OFFICIAL_ARTIST_CHANNEL, VERIFIED }

final tooltipValues = EnumValues({
  "Official Artist Channel": Tooltip.OFFICIAL_ARTIST_CHANNEL,
  "Verified": Tooltip.VERIFIED
});

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

  final List<ThumbnailElement> thumbnails;
  final bool logAsMovingThumbnail;

  factory MovingThumbnailDetails.fromRawJson(String str) =>
      MovingThumbnailDetails.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MovingThumbnailDetails.fromJson(Map<String, dynamic> json) =>
      MovingThumbnailDetails(
        thumbnails: json["thumbnails"] == null
            ? null
            : List<ThumbnailElement>.from(
                json["thumbnails"].map((x) => ThumbnailElement.fromJson(x))),
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
  final SecurityIcon untoggledIcon;
  final SecurityIcon toggledIcon;
  final UntoggledTooltip untoggledTooltip;
  final ToggledTooltip toggledTooltip;
  final UntoggledServiceEndpoint untoggledServiceEndpoint;
  final ToggledServiceEndpoint toggledServiceEndpoint;
  final HotkeyAccessibilityLabelClass untoggledAccessibility;
  final HotkeyAccessibilityLabelClass toggledAccessibility;
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
            : SecurityIcon.fromJson(json["untoggledIcon"]),
        toggledIcon: json["toggledIcon"] == null
            ? null
            : SecurityIcon.fromJson(json["toggledIcon"]),
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
            : HotkeyAccessibilityLabelClass.fromJson(
                json["untoggledAccessibility"]),
        toggledAccessibility: json["toggledAccessibility"] == null
            ? null
            : HotkeyAccessibilityLabelClass.fromJson(
                json["toggledAccessibility"]),
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
  final List<TentacledAction> actions;

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
            : List<TentacledAction>.from(
                json["actions"].map((x) => TentacledAction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "playlistId":
            playlistId == null ? null : playlistIdValues.reverse[playlistId],
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toJson())),
      };
}

class TentacledAction {
  TentacledAction({
    this.action,
    this.removedVideoId,
  });

  final IndecentAction action;
  final String removedVideoId;

  factory TentacledAction.fromRawJson(String str) =>
      TentacledAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledAction.fromJson(Map<String, dynamic> json) =>
      TentacledAction(
        action: json["action"] == null
            ? null
            : indecentActionValues.map[json["action"]],
        removedVideoId:
            json["removedVideoId"] == null ? null : json["removedVideoId"],
      );

  Map<String, dynamic> toJson() => {
        "action": action == null ? null : indecentActionValues.reverse[action],
        "removedVideoId": removedVideoId == null ? null : removedVideoId,
      };
}

enum IndecentAction { ACTION_REMOVE_VIDEO_BY_VIDEO_ID }

final indecentActionValues = EnumValues({
  "ACTION_REMOVE_VIDEO_BY_VIDEO_ID":
      IndecentAction.ACTION_REMOVE_VIDEO_BY_VIDEO_ID
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
  final ServiceEndpointSignalServiceEndpoint signalServiceEndpoint;

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
            : ServiceEndpointSignalServiceEndpoint.fromJson(
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
  final List<StickyAction> actions;

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
    this.addedVideoId,
    this.action,
  });

  final String addedVideoId;
  final HilariousAction action;

  factory StickyAction.fromRawJson(String str) =>
      StickyAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StickyAction.fromJson(Map<String, dynamic> json) => StickyAction(
        addedVideoId:
            json["addedVideoId"] == null ? null : json["addedVideoId"],
        action: json["action"] == null
            ? null
            : hilariousActionValues.map[json["action"]],
      );

  Map<String, dynamic> toJson() => {
        "addedVideoId": addedVideoId == null ? null : addedVideoId,
        "action": action == null ? null : hilariousActionValues.reverse[action],
      };
}

enum HilariousAction { ACTION_ADD_VIDEO }

final hilariousActionValues =
    EnumValues({"ACTION_ADD_VIDEO": HilariousAction.ACTION_ADD_VIDEO});

enum UntoggledTooltip { WATCH_LATER, ADD_TO_QUEUE }

final untoggledTooltipValues = EnumValues({
  "Add to queue": UntoggledTooltip.ADD_TO_QUEUE,
  "Watch later": UntoggledTooltip.WATCH_LATER
});

class PurpleVideoRenderer {
  PurpleVideoRenderer({
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
  final Title title;
  final AlertMessage descriptionSnippet;
  final Text longBylineText;
  final PublishedTimeText publishedTimeText;
  final LengthTextClass lengthText;
  final ViewCountText viewCountText;
  final VideoRendererNavigationEndpoint navigationEndpoint;
  final List<OwnerBadge> ownerBadges;
  final Text ownerText;
  final Text shortBylineText;
  final String trackingParams;
  final bool showActionMenu;
  final ViewCountText shortViewCountText;
  final PurpleMenu menu;
  final ChannelThumbnailSupportedRenderers channelThumbnailSupportedRenderers;
  final List<VideoRendererThumbnailOverlay> thumbnailOverlays;
  final RichThumbnail richThumbnail;
  final List<Badge> badges;

  factory PurpleVideoRenderer.fromRawJson(String str) =>
      PurpleVideoRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleVideoRenderer.fromJson(Map<String, dynamic> json) =>
      PurpleVideoRenderer(
        videoId: json["videoId"] == null ? null : json["videoId"],
        thumbnail: json["thumbnail"] == null
            ? null
            : ChannelRendererThumbnail.fromJson(json["thumbnail"]),
        title: json["title"] == null ? null : Title.fromJson(json["title"]),
        descriptionSnippet: json["descriptionSnippet"] == null
            ? null
            : AlertMessage.fromJson(json["descriptionSnippet"]),
        longBylineText: json["longBylineText"] == null
            ? null
            : Text.fromJson(json["longBylineText"]),
        publishedTimeText: json["publishedTimeText"] == null
            ? null
            : PublishedTimeText.fromJson(json["publishedTimeText"]),
        lengthText: json["lengthText"] == null
            ? null
            : LengthTextClass.fromJson(json["lengthText"]),
        viewCountText: json["viewCountText"] == null
            ? null
            : ViewCountText.fromJson(json["viewCountText"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : VideoRendererNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
        ownerBadges: json["ownerBadges"] == null
            ? null
            : List<OwnerBadge>.from(
                json["ownerBadges"].map((x) => OwnerBadge.fromJson(x))),
        ownerText:
            json["ownerText"] == null ? null : Text.fromJson(json["ownerText"]),
        shortBylineText: json["shortBylineText"] == null
            ? null
            : Text.fromJson(json["shortBylineText"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        showActionMenu:
            json["showActionMenu"] == null ? null : json["showActionMenu"],
        shortViewCountText: json["shortViewCountText"] == null
            ? null
            : ViewCountText.fromJson(json["shortViewCountText"]),
        menu: json["menu"] == null ? null : PurpleMenu.fromJson(json["menu"]),
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
            : List<Badge>.from(json["badges"].map((x) => Badge.fromJson(x))),
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

class ViewCountText {
  ViewCountText({
    this.simpleText,
    this.runs,
  });

  final String simpleText;
  final List<TextRun> runs;

  factory ViewCountText.fromRawJson(String str) =>
      ViewCountText.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ViewCountText.fromJson(Map<String, dynamic> json) => ViewCountText(
        simpleText: json["simpleText"] == null ? null : json["simpleText"],
        runs: json["runs"] == null
            ? null
            : List<TextRun>.from(json["runs"].map((x) => TextRun.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "simpleText": simpleText == null ? null : simpleText,
        "runs": runs == null
            ? null
            : List<dynamic>.from(runs.map((x) => x.toJson())),
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

  final TitleClass title;
  final List<Group> groups;
  final String trackingParams;
  final Button button;

  factory SearchSubMenuRenderer.fromRawJson(String str) =>
      SearchSubMenuRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SearchSubMenuRenderer.fromJson(Map<String, dynamic> json) =>
      SearchSubMenuRenderer(
        title:
            json["title"] == null ? null : TitleClass.fromJson(json["title"]),
        groups: json["groups"] == null
            ? null
            : List<Group>.from(json["groups"].map((x) => Group.fromJson(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        button: json["button"] == null ? null : Button.fromJson(json["button"]),
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

class Button {
  Button({
    this.toggleButtonRenderer,
  });

  final ToggleButtonRenderer toggleButtonRenderer;

  factory Button.fromRawJson(String str) => Button.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Button.fromJson(Map<String, dynamic> json) => Button(
        toggleButtonRenderer: json["toggleButtonRenderer"] == null
            ? null
            : ToggleButtonRenderer.fromJson(json["toggleButtonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "toggleButtonRenderer":
            toggleButtonRenderer == null ? null : toggleButtonRenderer.toJson(),
      };
}

class ToggleButtonRenderer {
  ToggleButtonRenderer({
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
  final SecurityIcon defaultIcon;
  final TitleClass defaultText;
  final ButtonRendererAccessibility accessibility;
  final String trackingParams;
  final String defaultTooltip;
  final String toggledTooltip;
  final ToggledStyleClass toggledStyle;
  final HotkeyAccessibilityLabelClass accessibilityData;

  factory ToggleButtonRenderer.fromRawJson(String str) =>
      ToggleButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ToggleButtonRenderer.fromJson(Map<String, dynamic> json) =>
      ToggleButtonRenderer(
        style: json["style"] == null
            ? null
            : ToggledStyleClass.fromJson(json["style"]),
        isToggled: json["isToggled"] == null ? null : json["isToggled"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        defaultIcon: json["defaultIcon"] == null
            ? null
            : SecurityIcon.fromJson(json["defaultIcon"]),
        defaultText: json["defaultText"] == null
            ? null
            : TitleClass.fromJson(json["defaultText"]),
        accessibility: json["accessibility"] == null
            ? null
            : ButtonRendererAccessibility.fromJson(json["accessibility"]),
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
            : HotkeyAccessibilityLabelClass.fromJson(json["accessibilityData"]),
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

  final PublishedTimeText title;
  final List<Filter> filters;
  final String trackingParams;

  factory SearchFilterGroupRenderer.fromRawJson(String str) =>
      SearchFilterGroupRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SearchFilterGroupRenderer.fromJson(Map<String, dynamic> json) =>
      SearchFilterGroupRenderer(
        title: json["title"] == null
            ? null
            : PublishedTimeText.fromJson(json["title"]),
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

  final PublishedTimeText label;
  final NavigationEndpointClass navigationEndpoint;
  final String tooltip;
  final String trackingParams;
  final String status;

  factory SearchFilterRenderer.fromRawJson(String str) =>
      SearchFilterRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SearchFilterRenderer.fromJson(Map<String, dynamic> json) =>
      SearchFilterRenderer(
        label: json["label"] == null
            ? null
            : PublishedTimeText.fromJson(json["label"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : NavigationEndpointClass.fromJson(json["navigationEndpoint"]),
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

class OnResponseReceivedCommand {
  OnResponseReceivedCommand({
    this.clickTrackingParams,
    this.appendContinuationItemsAction,
  });

  final String clickTrackingParams;
  final AppendContinuationItemsAction appendContinuationItemsAction;

  factory OnResponseReceivedCommand.fromRawJson(String str) =>
      OnResponseReceivedCommand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OnResponseReceivedCommand.fromJson(Map<String, dynamic> json) =>
      OnResponseReceivedCommand(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        appendContinuationItemsAction:
            json["appendContinuationItemsAction"] == null
                ? null
                : AppendContinuationItemsAction.fromJson(
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

class AppendContinuationItemsAction {
  AppendContinuationItemsAction({
    this.continuationItems,
    this.targetId,
  });

  final List<ContinuationItem> continuationItems;
  final String targetId;

  factory AppendContinuationItemsAction.fromRawJson(String str) =>
      AppendContinuationItemsAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AppendContinuationItemsAction.fromJson(Map<String, dynamic> json) =>
      AppendContinuationItemsAction(
        continuationItems: json["continuationItems"] == null
            ? null
            : List<ContinuationItem>.from(json["continuationItems"]
                .map((x) => ContinuationItem.fromJson(x))),
        targetId: json["targetId"] == null ? null : json["targetId"],
      );

  Map<String, dynamic> toJson() => {
        "continuationItems": continuationItems == null
            ? null
            : List<dynamic>.from(continuationItems.map((x) => x.toJson())),
        "targetId": targetId == null ? null : targetId,
      };
}

class ContinuationItem {
  ContinuationItem({
    this.itemSectionRenderer,
    this.continuationItemRenderer,
  });

  final ContinuationItemItemSectionRenderer itemSectionRenderer;
  final ContinuationItemRenderer continuationItemRenderer;

  factory ContinuationItem.fromRawJson(String str) =>
      ContinuationItem.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ContinuationItem.fromJson(Map<String, dynamic> json) =>
      ContinuationItem(
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

  final List<PurpleContent> contents;
  final String trackingParams;

  factory ContinuationItemItemSectionRenderer.fromRawJson(String str) =>
      ContinuationItemItemSectionRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ContinuationItemItemSectionRenderer.fromJson(
          Map<String, dynamic> json) =>
      ContinuationItemItemSectionRenderer(
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

class FluffyContent {
  FluffyContent({
    this.videoRenderer,
  });

  final FluffyVideoRenderer videoRenderer;

  factory FluffyContent.fromRawJson(String str) =>
      FluffyContent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyContent.fromJson(Map<String, dynamic> json) => FluffyContent(
        videoRenderer: json["videoRenderer"] == null
            ? null
            : FluffyVideoRenderer.fromJson(json["videoRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "videoRenderer": videoRenderer == null ? null : videoRenderer.toJson(),
      };
}

class FluffyVideoRenderer {
  FluffyVideoRenderer({
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
  final Title title;
  final AlertMessage descriptionSnippet;
  final Text longBylineText;
  final PublishedTimeText publishedTimeText;
  final LengthTextClass lengthText;
  final PublishedTimeText viewCountText;
  final VideoRendererNavigationEndpoint navigationEndpoint;
  final List<Badge> badges;
  final List<OwnerBadge> ownerBadges;
  final Text ownerText;
  final Text shortBylineText;
  final String trackingParams;
  final bool showActionMenu;
  final PublishedTimeText shortViewCountText;
  final FluffyMenu menu;
  final ChannelThumbnailSupportedRenderers channelThumbnailSupportedRenderers;
  final List<VideoRendererThumbnailOverlay> thumbnailOverlays;
  final RichThumbnail richThumbnail;

  factory FluffyVideoRenderer.fromRawJson(String str) =>
      FluffyVideoRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyVideoRenderer.fromJson(Map<String, dynamic> json) =>
      FluffyVideoRenderer(
        videoId: json["videoId"] == null ? null : json["videoId"],
        thumbnail: json["thumbnail"] == null
            ? null
            : ChannelRendererThumbnail.fromJson(json["thumbnail"]),
        title: json["title"] == null ? null : Title.fromJson(json["title"]),
        descriptionSnippet: json["descriptionSnippet"] == null
            ? null
            : AlertMessage.fromJson(json["descriptionSnippet"]),
        longBylineText: json["longBylineText"] == null
            ? null
            : Text.fromJson(json["longBylineText"]),
        publishedTimeText: json["publishedTimeText"] == null
            ? null
            : PublishedTimeText.fromJson(json["publishedTimeText"]),
        lengthText: json["lengthText"] == null
            ? null
            : LengthTextClass.fromJson(json["lengthText"]),
        viewCountText: json["viewCountText"] == null
            ? null
            : PublishedTimeText.fromJson(json["viewCountText"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : VideoRendererNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
        badges: json["badges"] == null
            ? null
            : List<Badge>.from(json["badges"].map((x) => Badge.fromJson(x))),
        ownerBadges: json["ownerBadges"] == null
            ? null
            : List<OwnerBadge>.from(
                json["ownerBadges"].map((x) => OwnerBadge.fromJson(x))),
        ownerText:
            json["ownerText"] == null ? null : Text.fromJson(json["ownerText"]),
        shortBylineText: json["shortBylineText"] == null
            ? null
            : Text.fromJson(json["shortBylineText"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        showActionMenu:
            json["showActionMenu"] == null ? null : json["showActionMenu"],
        shortViewCountText: json["shortViewCountText"] == null
            ? null
            : PublishedTimeText.fromJson(json["shortViewCountText"]),
        menu: json["menu"] == null ? null : FluffyMenu.fromJson(json["menu"]),
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

class FluffyMenu {
  FluffyMenu({
    this.menuRenderer,
  });

  final FluffyMenuRenderer menuRenderer;

  factory FluffyMenu.fromRawJson(String str) =>
      FluffyMenu.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyMenu.fromJson(Map<String, dynamic> json) => FluffyMenu(
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
  final HotkeyAccessibilityLabelClass accessibility;

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
            : HotkeyAccessibilityLabelClass.fromJson(json["accessibility"]),
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
    this.hasSeparator,
  });

  final TitleClass text;
  final SecurityIcon icon;
  final FluffyServiceEndpoint serviceEndpoint;
  final String trackingParams;
  final bool hasSeparator;

  factory FluffyMenuServiceItemRenderer.fromRawJson(String str) =>
      FluffyMenuServiceItemRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyMenuServiceItemRenderer.fromJson(Map<String, dynamic> json) =>
      FluffyMenuServiceItemRenderer(
        text: json["text"] == null ? null : TitleClass.fromJson(json["text"]),
        icon: json["icon"] == null ? null : SecurityIcon.fromJson(json["icon"]),
        serviceEndpoint: json["serviceEndpoint"] == null
            ? null
            : FluffyServiceEndpoint.fromJson(json["serviceEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        hasSeparator:
            json["hasSeparator"] == null ? null : json["hasSeparator"],
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text.toJson(),
        "icon": icon == null ? null : icon.toJson(),
        "serviceEndpoint":
            serviceEndpoint == null ? null : serviceEndpoint.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "hasSeparator": hasSeparator == null ? null : hasSeparator,
      };
}

class FluffyServiceEndpoint {
  FluffyServiceEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signalServiceEndpoint,
    this.playlistEditEndpoint,
    this.addToPlaylistServiceEndpoint,
    this.getReportFormEndpoint,
  });

  final String clickTrackingParams;
  final ContinuationEndpointCommandMetadata commandMetadata;
  final ServiceEndpointSignalServiceEndpoint signalServiceEndpoint;
  final UntoggledServiceEndpointPlaylistEditEndpoint playlistEditEndpoint;
  final WatchEndpointClass addToPlaylistServiceEndpoint;
  final GetReportFormEndpoint getReportFormEndpoint;

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
            : ContinuationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        signalServiceEndpoint: json["signalServiceEndpoint"] == null
            ? null
            : ServiceEndpointSignalServiceEndpoint.fromJson(
                json["signalServiceEndpoint"]),
        playlistEditEndpoint: json["playlistEditEndpoint"] == null
            ? null
            : UntoggledServiceEndpointPlaylistEditEndpoint.fromJson(
                json["playlistEditEndpoint"]),
        addToPlaylistServiceEndpoint: json["addToPlaylistServiceEndpoint"] ==
                null
            ? null
            : WatchEndpointClass.fromJson(json["addToPlaylistServiceEndpoint"]),
        getReportFormEndpoint: json["getReportFormEndpoint"] == null
            ? null
            : GetReportFormEndpoint.fromJson(json["getReportFormEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "signalServiceEndpoint": signalServiceEndpoint == null
            ? null
            : signalServiceEndpoint.toJson(),
        "playlistEditEndpoint":
            playlistEditEndpoint == null ? null : playlistEditEndpoint.toJson(),
        "addToPlaylistServiceEndpoint": addToPlaylistServiceEndpoint == null
            ? null
            : addToPlaylistServiceEndpoint.toJson(),
        "getReportFormEndpoint": getReportFormEndpoint == null
            ? null
            : getReportFormEndpoint.toJson(),
      };
}

class GetReportFormEndpoint {
  GetReportFormEndpoint({
    this.params,
  });

  final String params;

  factory GetReportFormEndpoint.fromRawJson(String str) =>
      GetReportFormEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetReportFormEndpoint.fromJson(Map<String, dynamic> json) =>
      GetReportFormEndpoint(
        params: json["params"] == null ? null : json["params"],
      );

  Map<String, dynamic> toJson() => {
        "params": params == null ? null : params,
      };
}

class ResponseContext {
  ResponseContext({
    this.serviceTrackingParams,
    this.webResponseContextExtensionData,
  });

  final List<ServiceTrackingParam> serviceTrackingParams;
  final WebResponseContextExtensionData webResponseContextExtensionData;

  factory ResponseContext.fromRawJson(String str) =>
      ResponseContext.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ResponseContext.fromJson(Map<String, dynamic> json) =>
      ResponseContext(
        serviceTrackingParams: json["serviceTrackingParams"] == null
            ? null
            : List<ServiceTrackingParam>.from(json["serviceTrackingParams"]
                .map((x) => ServiceTrackingParam.fromJson(x))),
        webResponseContextExtensionData:
            json["webResponseContextExtensionData"] == null
                ? null
                : WebResponseContextExtensionData.fromJson(
                    json["webResponseContextExtensionData"]),
      );

  Map<String, dynamic> toJson() => {
        "serviceTrackingParams": serviceTrackingParams == null
            ? null
            : List<dynamic>.from(serviceTrackingParams.map((x) => x.toJson())),
        "webResponseContextExtensionData":
            webResponseContextExtensionData == null
                ? null
                : webResponseContextExtensionData.toJson(),
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
    this.ytConfigData,
    this.hasDecorated,
  });

  final YtConfigData ytConfigData;
  final bool hasDecorated;

  factory WebResponseContextExtensionData.fromRawJson(String str) =>
      WebResponseContextExtensionData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WebResponseContextExtensionData.fromJson(Map<String, dynamic> json) =>
      WebResponseContextExtensionData(
        ytConfigData: json["ytConfigData"] == null
            ? null
            : YtConfigData.fromJson(json["ytConfigData"]),
        hasDecorated:
            json["hasDecorated"] == null ? null : json["hasDecorated"],
      );

  Map<String, dynamic> toJson() => {
        "ytConfigData": ytConfigData == null ? null : ytConfigData.toJson(),
        "hasDecorated": hasDecorated == null ? null : hasDecorated,
      };
}

class YtConfigData {
  YtConfigData({
    this.csn,
    this.visitorData,
    this.rootVisualElementType,
  });

  final String csn;
  final String visitorData;
  final int rootVisualElementType;

  factory YtConfigData.fromRawJson(String str) =>
      YtConfigData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory YtConfigData.fromJson(Map<String, dynamic> json) => YtConfigData(
        csn: json["csn"] == null ? null : json["csn"],
        visitorData: json["visitorData"] == null ? null : json["visitorData"],
        rootVisualElementType: json["rootVisualElementType"] == null
            ? null
            : json["rootVisualElementType"],
      );

  Map<String, dynamic> toJson() => {
        "csn": csn == null ? null : csn,
        "visitorData": visitorData == null ? null : visitorData,
        "rootVisualElementType":
            rootVisualElementType == null ? null : rootVisualElementType,
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
    this.interstitial,
    this.countryCode,
    this.topbarButtons,
    this.hotkeyDialog,
    this.backButton,
    this.forwardButton,
    this.a11YSkipNavigationButton,
  });

  final Logo logo;
  final Searchbox searchbox;
  final String trackingParams;
  final Interstitial interstitial;
  final String countryCode;
  final List<TopbarButton> topbarButtons;
  final HotkeyDialog hotkeyDialog;
  final BackButtonClass backButton;
  final BackButtonClass forwardButton;
  final A11YSkipNavigationButtonClass a11YSkipNavigationButton;

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
        interstitial: json["interstitial"] == null
            ? null
            : Interstitial.fromJson(json["interstitial"]),
        countryCode: json["countryCode"] == null ? null : json["countryCode"],
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
      );

  Map<String, dynamic> toJson() => {
        "logo": logo == null ? null : logo.toJson(),
        "searchbox": searchbox == null ? null : searchbox.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "interstitial": interstitial == null ? null : interstitial.toJson(),
        "countryCode": countryCode == null ? null : countryCode,
        "topbarButtons": topbarButtons == null
            ? null
            : List<dynamic>.from(topbarButtons.map((x) => x.toJson())),
        "hotkeyDialog": hotkeyDialog == null ? null : hotkeyDialog.toJson(),
        "backButton": backButton == null ? null : backButton.toJson(),
        "forwardButton": forwardButton == null ? null : forwardButton.toJson(),
        "a11ySkipNavigationButton": a11YSkipNavigationButton == null
            ? null
            : a11YSkipNavigationButton.toJson(),
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
  final Command command;

  factory BackButtonButtonRenderer.fromRawJson(String str) =>
      BackButtonButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BackButtonButtonRenderer.fromJson(Map<String, dynamic> json) =>
      BackButtonButtonRenderer(
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        command:
            json["command"] == null ? null : Command.fromJson(json["command"]),
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

  final TitleClass title;
  final List<HotkeyDialogRendererSection> sections;
  final A11YSkipNavigationButtonClass dismissButton;
  final String trackingParams;

  factory HotkeyDialogRenderer.fromRawJson(String str) =>
      HotkeyDialogRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HotkeyDialogRenderer.fromJson(Map<String, dynamic> json) =>
      HotkeyDialogRenderer(
        title:
            json["title"] == null ? null : TitleClass.fromJson(json["title"]),
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

  final TitleClass title;
  final List<Option> options;

  factory HotkeyDialogSectionRenderer.fromRawJson(String str) =>
      HotkeyDialogSectionRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HotkeyDialogSectionRenderer.fromJson(Map<String, dynamic> json) =>
      HotkeyDialogSectionRenderer(
        title:
            json["title"] == null ? null : TitleClass.fromJson(json["title"]),
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

  final TitleClass label;
  final String hotkey;
  final HotkeyAccessibilityLabelClass hotkeyAccessibilityLabel;

  factory HotkeyDialogSectionOptionRenderer.fromRawJson(String str) =>
      HotkeyDialogSectionOptionRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HotkeyDialogSectionOptionRenderer.fromJson(
          Map<String, dynamic> json) =>
      HotkeyDialogSectionOptionRenderer(
        label:
            json["label"] == null ? null : TitleClass.fromJson(json["label"]),
        hotkey: json["hotkey"] == null ? null : json["hotkey"],
        hotkeyAccessibilityLabel: json["hotkeyAccessibilityLabel"] == null
            ? null
            : HotkeyAccessibilityLabelClass.fromJson(
                json["hotkeyAccessibilityLabel"]),
      );

  Map<String, dynamic> toJson() => {
        "label": label == null ? null : label.toJson(),
        "hotkey": hotkey == null ? null : hotkey,
        "hotkeyAccessibilityLabel": hotkeyAccessibilityLabel == null
            ? null
            : hotkeyAccessibilityLabel.toJson(),
      };
}

class Interstitial {
  Interstitial({
    this.consentBumpRenderer,
  });

  final ConsentBumpRenderer consentBumpRenderer;

  factory Interstitial.fromRawJson(String str) =>
      Interstitial.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Interstitial.fromJson(Map<String, dynamic> json) => Interstitial(
        consentBumpRenderer: json["consentBumpRenderer"] == null
            ? null
            : ConsentBumpRenderer.fromJson(json["consentBumpRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "consentBumpRenderer":
            consentBumpRenderer == null ? null : consentBumpRenderer.toJson(),
      };
}

class ConsentBumpRenderer {
  ConsentBumpRenderer({
    this.forceConsent,
    this.securityIcon,
    this.alertMessage,
    this.remindMeLaterButton,
    this.reviewButton,
    this.iframeUrl,
    this.trackingParams,
  });

  final bool forceConsent;
  final SecurityIcon securityIcon;
  final AlertMessage alertMessage;
  final A11YSkipNavigationButtonClass remindMeLaterButton;
  final A11YSkipNavigationButtonClass reviewButton;
  final String iframeUrl;
  final String trackingParams;

  factory ConsentBumpRenderer.fromRawJson(String str) =>
      ConsentBumpRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ConsentBumpRenderer.fromJson(Map<String, dynamic> json) =>
      ConsentBumpRenderer(
        forceConsent:
            json["forceConsent"] == null ? null : json["forceConsent"],
        securityIcon: json["securityIcon"] == null
            ? null
            : SecurityIcon.fromJson(json["securityIcon"]),
        alertMessage: json["alertMessage"] == null
            ? null
            : AlertMessage.fromJson(json["alertMessage"]),
        remindMeLaterButton: json["remindMeLaterButton"] == null
            ? null
            : A11YSkipNavigationButtonClass.fromJson(
                json["remindMeLaterButton"]),
        reviewButton: json["reviewButton"] == null
            ? null
            : A11YSkipNavigationButtonClass.fromJson(json["reviewButton"]),
        iframeUrl: json["iframeUrl"] == null ? null : json["iframeUrl"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "forceConsent": forceConsent == null ? null : forceConsent,
        "securityIcon": securityIcon == null ? null : securityIcon.toJson(),
        "alertMessage": alertMessage == null ? null : alertMessage.toJson(),
        "remindMeLaterButton":
            remindMeLaterButton == null ? null : remindMeLaterButton.toJson(),
        "reviewButton": reviewButton == null ? null : reviewButton.toJson(),
        "iframeUrl": iframeUrl == null ? null : iframeUrl,
        "trackingParams": trackingParams == null ? null : trackingParams,
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

  final SecurityIcon iconImage;
  final TitleClass tooltipText;
  final Endpoint endpoint;
  final String trackingParams;

  factory TopbarLogoRenderer.fromRawJson(String str) =>
      TopbarLogoRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TopbarLogoRenderer.fromJson(Map<String, dynamic> json) =>
      TopbarLogoRenderer(
        iconImage: json["iconImage"] == null
            ? null
            : SecurityIcon.fromJson(json["iconImage"]),
        tooltipText: json["tooltipText"] == null
            ? null
            : TitleClass.fromJson(json["tooltipText"]),
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

class Endpoint {
  Endpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.browseEndpoint,
  });

  final String clickTrackingParams;
  final NavigationEndpointCommandMetadata commandMetadata;
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
            : NavigationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
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

  final SecurityIcon icon;
  final TitleClass placeholderText;
  final Config config;
  final String trackingParams;
  final NextEndpointClass searchEndpoint;

  factory FusionSearchboxRenderer.fromRawJson(String str) =>
      FusionSearchboxRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FusionSearchboxRenderer.fromJson(Map<String, dynamic> json) =>
      FusionSearchboxRenderer(
        icon: json["icon"] == null ? null : SecurityIcon.fromJson(json["icon"]),
        placeholderText: json["placeholderText"] == null
            ? null
            : TitleClass.fromJson(json["placeholderText"]),
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
    this.notificationTopbarButtonRenderer,
  });

  final TopbarMenuButtonRenderer topbarMenuButtonRenderer;
  final TopbarButtonButtonRenderer buttonRenderer;
  final NotificationTopbarButtonRenderer notificationTopbarButtonRenderer;

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
        notificationTopbarButtonRenderer:
            json["notificationTopbarButtonRenderer"] == null
                ? null
                : NotificationTopbarButtonRenderer.fromJson(
                    json["notificationTopbarButtonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "topbarMenuButtonRenderer": topbarMenuButtonRenderer == null
            ? null
            : topbarMenuButtonRenderer.toJson(),
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toJson(),
        "notificationTopbarButtonRenderer":
            notificationTopbarButtonRenderer == null
                ? null
                : notificationTopbarButtonRenderer.toJson(),
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
  final TitleClass text;
  final SecurityIcon icon;
  final FluffyNavigationEndpoint navigationEndpoint;
  final String trackingParams;
  final String targetId;

  factory TopbarButtonButtonRenderer.fromRawJson(String str) =>
      TopbarButtonButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TopbarButtonButtonRenderer.fromJson(Map<String, dynamic> json) =>
      TopbarButtonButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        text: json["text"] == null ? null : TitleClass.fromJson(json["text"]),
        icon: json["icon"] == null ? null : SecurityIcon.fromJson(json["icon"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : FluffyNavigationEndpoint.fromJson(json["navigationEndpoint"]),
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

class FluffyNavigationEndpoint {
  FluffyNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signInEndpoint,
  });

  final String clickTrackingParams;
  final NavigationEndpointCommandMetadata commandMetadata;
  final FluffySignInEndpoint signInEndpoint;

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
            : NavigationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
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

class FluffySignInEndpoint {
  FluffySignInEndpoint({
    this.idamTag,
  });

  final String idamTag;

  factory FluffySignInEndpoint.fromRawJson(String str) =>
      FluffySignInEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffySignInEndpoint.fromJson(Map<String, dynamic> json) =>
      FluffySignInEndpoint(
        idamTag: json["idamTag"] == null ? null : json["idamTag"],
      );

  Map<String, dynamic> toJson() => {
        "idamTag": idamTag == null ? null : idamTag,
      };
}

class NotificationTopbarButtonRenderer {
  NotificationTopbarButtonRenderer({
    this.icon,
    this.menuRequest,
    this.style,
    this.trackingParams,
    this.accessibility,
    this.tooltip,
    this.updateUnseenCountEndpoint,
    this.notificationCount,
    this.handlerDatas,
  });

  final SecurityIcon icon;
  final MenuRequest menuRequest;
  final String style;
  final String trackingParams;
  final HotkeyAccessibilityLabelClass accessibility;
  final String tooltip;
  final UpdateUnseenCountEndpoint updateUnseenCountEndpoint;
  final int notificationCount;
  final List<String> handlerDatas;

  factory NotificationTopbarButtonRenderer.fromRawJson(String str) =>
      NotificationTopbarButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NotificationTopbarButtonRenderer.fromJson(
          Map<String, dynamic> json) =>
      NotificationTopbarButtonRenderer(
        icon: json["icon"] == null ? null : SecurityIcon.fromJson(json["icon"]),
        menuRequest: json["menuRequest"] == null
            ? null
            : MenuRequest.fromJson(json["menuRequest"]),
        style: json["style"] == null ? null : json["style"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        accessibility: json["accessibility"] == null
            ? null
            : HotkeyAccessibilityLabelClass.fromJson(json["accessibility"]),
        tooltip: json["tooltip"] == null ? null : json["tooltip"],
        updateUnseenCountEndpoint: json["updateUnseenCountEndpoint"] == null
            ? null
            : UpdateUnseenCountEndpoint.fromJson(
                json["updateUnseenCountEndpoint"]),
        notificationCount: json["notificationCount"] == null
            ? null
            : json["notificationCount"],
        handlerDatas: json["handlerDatas"] == null
            ? null
            : List<String>.from(json["handlerDatas"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "icon": icon == null ? null : icon.toJson(),
        "menuRequest": menuRequest == null ? null : menuRequest.toJson(),
        "style": style == null ? null : style,
        "trackingParams": trackingParams == null ? null : trackingParams,
        "accessibility": accessibility == null ? null : accessibility.toJson(),
        "tooltip": tooltip == null ? null : tooltip,
        "updateUnseenCountEndpoint": updateUnseenCountEndpoint == null
            ? null
            : updateUnseenCountEndpoint.toJson(),
        "notificationCount":
            notificationCount == null ? null : notificationCount,
        "handlerDatas": handlerDatas == null
            ? null
            : List<dynamic>.from(handlerDatas.map((x) => x)),
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
  final List<IndigoAction> actions;

  factory MenuRequestSignalServiceEndpoint.fromRawJson(String str) =>
      MenuRequestSignalServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MenuRequestSignalServiceEndpoint.fromJson(
          Map<String, dynamic> json) =>
      MenuRequestSignalServiceEndpoint(
        signal: json["signal"] == null ? null : json["signal"],
        actions: json["actions"] == null
            ? null
            : List<IndigoAction>.from(
                json["actions"].map((x) => IndigoAction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "signal": signal == null ? null : signal,
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toJson())),
      };
}

class IndigoAction {
  IndigoAction({
    this.clickTrackingParams,
    this.openPopupAction,
  });

  final String clickTrackingParams;
  final OpenPopupAction openPopupAction;

  factory IndigoAction.fromRawJson(String str) =>
      IndigoAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IndigoAction.fromJson(Map<String, dynamic> json) => IndigoAction(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        openPopupAction: json["openPopupAction"] == null
            ? null
            : OpenPopupAction.fromJson(json["openPopupAction"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "openPopupAction":
            openPopupAction == null ? null : openPopupAction.toJson(),
      };
}

class OpenPopupAction {
  OpenPopupAction({
    this.popup,
    this.popupType,
    this.beReused,
  });

  final Popup popup;
  final String popupType;
  final bool beReused;

  factory OpenPopupAction.fromRawJson(String str) =>
      OpenPopupAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OpenPopupAction.fromJson(Map<String, dynamic> json) =>
      OpenPopupAction(
        popup: json["popup"] == null ? null : Popup.fromJson(json["popup"]),
        popupType: json["popupType"] == null ? null : json["popupType"],
        beReused: json["beReused"] == null ? null : json["beReused"],
      );

  Map<String, dynamic> toJson() => {
        "popup": popup == null ? null : popup.toJson(),
        "popupType": popupType == null ? null : popupType,
        "beReused": beReused == null ? null : beReused,
      };
}

class Popup {
  Popup({
    this.multiPageMenuRenderer,
  });

  final PopupMultiPageMenuRenderer multiPageMenuRenderer;

  factory Popup.fromRawJson(String str) => Popup.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Popup.fromJson(Map<String, dynamic> json) => Popup(
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

class UpdateUnseenCountEndpoint {
  UpdateUnseenCountEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signalServiceEndpoint,
  });

  final String clickTrackingParams;
  final ContinuationEndpointCommandMetadata commandMetadata;
  final Signal signalServiceEndpoint;

  factory UpdateUnseenCountEndpoint.fromRawJson(String str) =>
      UpdateUnseenCountEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UpdateUnseenCountEndpoint.fromJson(Map<String, dynamic> json) =>
      UpdateUnseenCountEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : ContinuationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        signalServiceEndpoint: json["signalServiceEndpoint"] == null
            ? null
            : Signal.fromJson(json["signalServiceEndpoint"]),
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
    this.avatar,
  });

  final SecurityIcon icon;
  final TopbarMenuButtonRendererMenuRenderer menuRenderer;
  final String trackingParams;
  final HotkeyAccessibilityLabelClass accessibility;
  final String tooltip;
  final ButtonRendererStyle style;
  final String targetId;
  final MenuRequest menuRequest;
  final Avatar avatar;

  factory TopbarMenuButtonRenderer.fromRawJson(String str) =>
      TopbarMenuButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TopbarMenuButtonRenderer.fromJson(Map<String, dynamic> json) =>
      TopbarMenuButtonRenderer(
        icon: json["icon"] == null ? null : SecurityIcon.fromJson(json["icon"]),
        menuRenderer: json["menuRenderer"] == null
            ? null
            : TopbarMenuButtonRendererMenuRenderer.fromJson(
                json["menuRenderer"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        accessibility: json["accessibility"] == null
            ? null
            : HotkeyAccessibilityLabelClass.fromJson(json["accessibility"]),
        tooltip: json["tooltip"] == null ? null : json["tooltip"],
        style: json["style"] == null
            ? null
            : buttonRendererStyleValues.map[json["style"]],
        targetId: json["targetId"] == null ? null : json["targetId"],
        menuRequest: json["menuRequest"] == null
            ? null
            : MenuRequest.fromJson(json["menuRequest"]),
        avatar: json["avatar"] == null ? null : Avatar.fromJson(json["avatar"]),
      );

  Map<String, dynamic> toJson() => {
        "icon": icon == null ? null : icon.toJson(),
        "menuRenderer": menuRenderer == null ? null : menuRenderer.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "accessibility": accessibility == null ? null : accessibility.toJson(),
        "tooltip": tooltip == null ? null : tooltip,
        "style":
            style == null ? null : buttonRendererStyleValues.reverse[style],
        "targetId": targetId == null ? null : targetId,
        "menuRequest": menuRequest == null ? null : menuRequest.toJson(),
        "avatar": avatar == null ? null : avatar.toJson(),
      };
}

class Avatar {
  Avatar({
    this.thumbnails,
    this.accessibility,
  });

  final List<ThumbnailElement> thumbnails;
  final HotkeyAccessibilityLabelClass accessibility;

  factory Avatar.fromRawJson(String str) => Avatar.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Avatar.fromJson(Map<String, dynamic> json) => Avatar(
        thumbnails: json["thumbnails"] == null
            ? null
            : List<ThumbnailElement>.from(
                json["thumbnails"].map((x) => ThumbnailElement.fromJson(x))),
        accessibility: json["accessibility"] == null
            ? null
            : HotkeyAccessibilityLabelClass.fromJson(json["accessibility"]),
      );

  Map<String, dynamic> toJson() => {
        "thumbnails": thumbnails == null
            ? null
            : List<dynamic>.from(thumbnails.map((x) => x.toJson())),
        "accessibility": accessibility == null ? null : accessibility.toJson(),
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
    this.style,
  });

  final List<MultiPageMenuRendererSection> sections;
  final String trackingParams;
  final String style;

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
        style: json["style"] == null ? null : json["style"],
      );

  Map<String, dynamic> toJson() => {
        "sections": sections == null
            ? null
            : List<dynamic>.from(sections.map((x) => x.toJson())),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "style": style == null ? null : style,
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
    this.style,
  });

  final SecurityIcon icon;
  final TitleClass title;
  final CompactLinkRendererNavigationEndpoint navigationEndpoint;
  final String trackingParams;
  final String style;

  factory CompactLinkRenderer.fromRawJson(String str) =>
      CompactLinkRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CompactLinkRenderer.fromJson(Map<String, dynamic> json) =>
      CompactLinkRenderer(
        icon: json["icon"] == null ? null : SecurityIcon.fromJson(json["icon"]),
        title:
            json["title"] == null ? null : TitleClass.fromJson(json["title"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : CompactLinkRendererNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        style: json["style"] == null ? null : json["style"],
      );

  Map<String, dynamic> toJson() => {
        "icon": icon == null ? null : icon.toJson(),
        "title": title == null ? null : title.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "style": style == null ? null : style,
      };
}

class CompactLinkRendererNavigationEndpoint {
  CompactLinkRendererNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signInEndpoint,
    this.urlEndpoint,
    this.uploadEndpoint,
    this.signalNavigationEndpoint,
  });

  final String clickTrackingParams;
  final NavigationEndpointCommandMetadata commandMetadata;
  final TentacledSignInEndpoint signInEndpoint;
  final NavigationEndpointUrlEndpoint urlEndpoint;
  final UploadEndpoint uploadEndpoint;
  final Signal signalNavigationEndpoint;

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
            : NavigationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        signInEndpoint: json["signInEndpoint"] == null
            ? null
            : TentacledSignInEndpoint.fromJson(json["signInEndpoint"]),
        urlEndpoint: json["urlEndpoint"] == null
            ? null
            : NavigationEndpointUrlEndpoint.fromJson(json["urlEndpoint"]),
        uploadEndpoint: json["uploadEndpoint"] == null
            ? null
            : UploadEndpoint.fromJson(json["uploadEndpoint"]),
        signalNavigationEndpoint: json["signalNavigationEndpoint"] == null
            ? null
            : Signal.fromJson(json["signalNavigationEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "signInEndpoint":
            signInEndpoint == null ? null : signInEndpoint.toJson(),
        "urlEndpoint": urlEndpoint == null ? null : urlEndpoint.toJson(),
        "uploadEndpoint":
            uploadEndpoint == null ? null : uploadEndpoint.toJson(),
        "signalNavigationEndpoint": signalNavigationEndpoint == null
            ? null
            : signalNavigationEndpoint.toJson(),
      };
}

class TentacledSignInEndpoint {
  TentacledSignInEndpoint({
    this.nextEndpoint,
  });

  final NextEndpoint nextEndpoint;

  factory TentacledSignInEndpoint.fromRawJson(String str) =>
      TentacledSignInEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledSignInEndpoint.fromJson(Map<String, dynamic> json) =>
      TentacledSignInEndpoint(
        nextEndpoint: json["nextEndpoint"] == null
            ? null
            : NextEndpoint.fromJson(json["nextEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "nextEndpoint": nextEndpoint == null ? null : nextEndpoint.toJson(),
      };
}

class NextEndpoint {
  NextEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.urlEndpoint,
  });

  final String clickTrackingParams;
  final NavigationEndpointCommandMetadata commandMetadata;
  final NextEndpointUrlEndpoint urlEndpoint;

  factory NextEndpoint.fromRawJson(String str) =>
      NextEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NextEndpoint.fromJson(Map<String, dynamic> json) => NextEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : NavigationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        urlEndpoint: json["urlEndpoint"] == null
            ? null
            : NextEndpointUrlEndpoint.fromJson(json["urlEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "urlEndpoint": urlEndpoint == null ? null : urlEndpoint.toJson(),
      };
}

class NextEndpointUrlEndpoint {
  NextEndpointUrlEndpoint({
    this.url,
  });

  final String url;

  factory NextEndpointUrlEndpoint.fromRawJson(String str) =>
      NextEndpointUrlEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NextEndpointUrlEndpoint.fromJson(Map<String, dynamic> json) =>
      NextEndpointUrlEndpoint(
        url: json["url"] == null ? null : json["url"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
      };
}

class UploadEndpoint {
  UploadEndpoint({
    this.hack,
  });

  final bool hack;

  factory UploadEndpoint.fromRawJson(String str) =>
      UploadEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UploadEndpoint.fromJson(Map<String, dynamic> json) => UploadEndpoint(
        hack: json["hack"] == null ? null : json["hack"],
      );

  Map<String, dynamic> toJson() => {
        "hack": hack == null ? null : hack,
      };
}

class NavigationEndpointUrlEndpoint {
  NavigationEndpointUrlEndpoint({
    this.url,
    this.target,
  });

  final String url;
  final Target target;

  factory NavigationEndpointUrlEndpoint.fromRawJson(String str) =>
      NavigationEndpointUrlEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NavigationEndpointUrlEndpoint.fromJson(Map<String, dynamic> json) =>
      NavigationEndpointUrlEndpoint(
        url: json["url"] == null ? null : json["url"],
        target:
            json["target"] == null ? null : targetValues.map[json["target"]],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "target": target == null ? null : targetValues.reverse[target],
      };
}

enum Target { TARGET_NEW_WINDOW }

final targetValues =
    EnumValues({"TARGET_NEW_WINDOW": Target.TARGET_NEW_WINDOW});

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
