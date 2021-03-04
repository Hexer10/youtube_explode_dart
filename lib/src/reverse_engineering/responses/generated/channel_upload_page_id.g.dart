// @dart=2.9

// To parse this JSON data, do
//
//     final channelUploadPageId = channelUploadPageIdFromJson(jsonString);

import 'dart:convert';

class ChannelUploadPageId {
  ChannelUploadPageId({
    this.page,
    this.xsrfToken,
    this.endpoint,
    this.response,
    this.timing,
    this.responseContext,
    this.contents,
    this.header,
    this.metadata,
    this.trackingParams,
    this.topbar,
    this.microformat,
  });

  final String page;
  final String xsrfToken;
  final ChannelUploadPageIdEndpoint endpoint;
  final Response response;
  final Timing timing;
  final ChannelUploadPageIdResponseContext responseContext;
  final Contents contents;
  final Header header;
  final Metadata metadata;
  final String trackingParams;
  final Topbar topbar;
  final Microformat microformat;

  factory ChannelUploadPageId.fromRawJson(String str) =>
      ChannelUploadPageId.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChannelUploadPageId.fromJson(Map<String, dynamic> json) =>
      ChannelUploadPageId(
        page: json["page"] == null ? null : json["page"],
        xsrfToken: json["xsrf_token"] == null ? null : json["xsrf_token"],
        endpoint: json["endpoint"] == null
            ? null
            : ChannelUploadPageIdEndpoint.fromJson(json["endpoint"]),
        response: json["response"] == null
            ? null
            : Response.fromJson(json["response"]),
        timing: json["timing"] == null ? null : Timing.fromJson(json["timing"]),
        responseContext: json["responseContext"] == null
            ? null
            : ChannelUploadPageIdResponseContext.fromJson(
                json["responseContext"]),
        contents: json["contents"] == null
            ? null
            : Contents.fromJson(json["contents"]),
        header: json["header"] == null ? null : Header.fromJson(json["header"]),
        metadata: json["metadata"] == null
            ? null
            : Metadata.fromJson(json["metadata"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        topbar: json["topbar"] == null ? null : Topbar.fromJson(json["topbar"]),
        microformat: json["microformat"] == null
            ? null
            : Microformat.fromJson(json["microformat"]),
      );

  Map<String, dynamic> toJson() => {
        "page": page == null ? null : page,
        "xsrf_token": xsrfToken == null ? null : xsrfToken,
        "endpoint": endpoint == null ? null : endpoint.toJson(),
        "response": response == null ? null : response.toJson(),
        "timing": timing == null ? null : timing.toJson(),
        "responseContext":
            responseContext == null ? null : responseContext.toJson(),
        "contents": contents == null ? null : contents.toJson(),
        "header": header == null ? null : header.toJson(),
        "metadata": metadata == null ? null : metadata.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "topbar": topbar == null ? null : topbar.toJson(),
        "microformat": microformat == null ? null : microformat.toJson(),
      };
}

class Contents {
  Contents({
    this.twoColumnBrowseResultsRenderer,
  });

  final TwoColumnBrowseResultsRenderer twoColumnBrowseResultsRenderer;

  factory Contents.fromRawJson(String str) =>
      Contents.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Contents.fromJson(Map<String, dynamic> json) => Contents(
        twoColumnBrowseResultsRenderer:
            json["twoColumnBrowseResultsRenderer"] == null
                ? null
                : TwoColumnBrowseResultsRenderer.fromJson(
                    json["twoColumnBrowseResultsRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "twoColumnBrowseResultsRenderer": twoColumnBrowseResultsRenderer == null
            ? null
            : twoColumnBrowseResultsRenderer.toJson(),
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
    this.expandableTabRenderer,
  });

  final TabRenderer tabRenderer;
  final ExpandableTabRenderer expandableTabRenderer;

  factory Tab.fromRawJson(String str) => Tab.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Tab.fromJson(Map<String, dynamic> json) => Tab(
        tabRenderer: json["tabRenderer"] == null
            ? null
            : TabRenderer.fromJson(json["tabRenderer"]),
        expandableTabRenderer: json["expandableTabRenderer"] == null
            ? null
            : ExpandableTabRenderer.fromJson(json["expandableTabRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "tabRenderer": tabRenderer == null ? null : tabRenderer.toJson(),
        "expandableTabRenderer": expandableTabRenderer == null
            ? null
            : expandableTabRenderer.toJson(),
      };
}

class ExpandableTabRenderer {
  ExpandableTabRenderer({
    this.endpoint,
    this.title,
    this.selected,
  });

  final NavigationEndpointClass endpoint;
  final String title;
  final bool selected;

  factory ExpandableTabRenderer.fromRawJson(String str) =>
      ExpandableTabRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ExpandableTabRenderer.fromJson(Map<String, dynamic> json) =>
      ExpandableTabRenderer(
        endpoint: json["endpoint"] == null
            ? null
            : NavigationEndpointClass.fromJson(json["endpoint"]),
        title: json["title"] == null ? null : json["title"],
        selected: json["selected"] == null ? null : json["selected"],
      );

  Map<String, dynamic> toJson() => {
        "endpoint": endpoint == null ? null : endpoint.toJson(),
        "title": title == null ? null : title,
        "selected": selected == null ? null : selected,
      };
}

class NavigationEndpointClass {
  NavigationEndpointClass({
    this.clickTrackingParams,
    this.commandMetadata,
    this.browseEndpoint,
  });

  final String clickTrackingParams;
  final NextEndpointCommandMetadata commandMetadata;
  final NextEndpointBrowseEndpoint browseEndpoint;

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
            : NextEndpointCommandMetadata.fromJson(json["commandMetadata"]),
        browseEndpoint: json["browseEndpoint"] == null
            ? null
            : NextEndpointBrowseEndpoint.fromJson(json["browseEndpoint"]),
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

class NextEndpointBrowseEndpoint {
  NextEndpointBrowseEndpoint({
    this.browseId,
    this.params,
    this.canonicalBaseUrl,
  });

  final Id browseId;
  final String params;
  final CanonicalBaseUrl canonicalBaseUrl;

  factory NextEndpointBrowseEndpoint.fromRawJson(String str) =>
      NextEndpointBrowseEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NextEndpointBrowseEndpoint.fromJson(Map<String, dynamic> json) =>
      NextEndpointBrowseEndpoint(
        browseId:
            json["browseId"] == null ? null : idValues.map[json["browseId"]],
        params: json["params"] == null ? null : json["params"],
        canonicalBaseUrl: json["canonicalBaseUrl"] == null
            ? null
            : canonicalBaseUrlValues.map[json["canonicalBaseUrl"]],
      );

  Map<String, dynamic> toJson() => {
        "browseId": browseId == null ? null : idValues.reverse[browseId],
        "params": params == null ? null : params,
        "canonicalBaseUrl": canonicalBaseUrl == null
            ? null
            : canonicalBaseUrlValues.reverse[canonicalBaseUrl],
      };
}

enum Id { U_CS7_O9_S_OU_QI_BG_BXAA_AGU_IWIG, UCSFC5_CIO8_ZA_LQDF_PX_A7_Y_HQ }

final idValues = EnumValues({
  "UCSFC5Cio8zaLQDFPxA7y_HQ": Id.UCSFC5_CIO8_ZA_LQDF_PX_A7_Y_HQ,
  "UCs7O9sOUQiBGBxaaAguIwig": Id.U_CS7_O9_S_OU_QI_BG_BXAA_AGU_IWIG
});

enum CanonicalBaseUrl { C_PATRIK_PIETSCHMANN, C_FAVIJ_TV }

final canonicalBaseUrlValues = EnumValues({
  "/c/FavijTV": CanonicalBaseUrl.C_FAVIJ_TV,
  "/c/PatrikPietschmann": CanonicalBaseUrl.C_PATRIK_PIETSCHMANN
});

class NextEndpointCommandMetadata {
  NextEndpointCommandMetadata({
    this.webCommandMetadata,
  });

  final PurpleWebCommandMetadata webCommandMetadata;

  factory NextEndpointCommandMetadata.fromRawJson(String str) =>
      NextEndpointCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NextEndpointCommandMetadata.fromJson(Map<String, dynamic> json) =>
      NextEndpointCommandMetadata(
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
    this.webPageType,
    this.rootVe,
  });

  final String url;
  final WebPageType webPageType;
  final int rootVe;

  factory PurpleWebCommandMetadata.fromRawJson(String str) =>
      PurpleWebCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleWebCommandMetadata.fromJson(Map<String, dynamic> json) =>
      PurpleWebCommandMetadata(
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
  WEB_PAGE_TYPE_WATCH,
  WEB_PAGE_TYPE_UNKNOWN,
  WEB_PAGE_TYPE_BROWSE,
  WEB_PAGE_TYPE_SEARCH
}

final webPageTypeValues = EnumValues({
  "WEB_PAGE_TYPE_BROWSE": WebPageType.WEB_PAGE_TYPE_BROWSE,
  "WEB_PAGE_TYPE_CHANNEL": WebPageType.WEB_PAGE_TYPE_CHANNEL,
  "WEB_PAGE_TYPE_SEARCH": WebPageType.WEB_PAGE_TYPE_SEARCH,
  "WEB_PAGE_TYPE_UNKNOWN": WebPageType.WEB_PAGE_TYPE_UNKNOWN,
  "WEB_PAGE_TYPE_WATCH": WebPageType.WEB_PAGE_TYPE_WATCH
});

class TabRenderer {
  TabRenderer({
    this.endpoint,
    this.title,
    this.selected,
    this.trackingParams,
    this.content,
  });

  final NavigationEndpointClass endpoint;
  final String title;
  final bool selected;
  final String trackingParams;
  final TabRendererContent content;

  factory TabRenderer.fromRawJson(String str) =>
      TabRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TabRenderer.fromJson(Map<String, dynamic> json) => TabRenderer(
        endpoint: json["endpoint"] == null
            ? null
            : NavigationEndpointClass.fromJson(json["endpoint"]),
        title: json["title"] == null ? null : json["title"],
        selected: json["selected"] == null ? null : json["selected"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        content: json["content"] == null
            ? null
            : TabRendererContent.fromJson(json["content"]),
      );

  Map<String, dynamic> toJson() => {
        "endpoint": endpoint == null ? null : endpoint.toJson(),
        "title": title == null ? null : title,
        "selected": selected == null ? null : selected,
        "trackingParams": trackingParams == null ? null : trackingParams,
        "content": content == null ? null : content.toJson(),
      };
}

class TabRendererContent {
  TabRendererContent({
    this.sectionListRenderer,
  });

  final SectionListRenderer sectionListRenderer;

  factory TabRendererContent.fromRawJson(String str) =>
      TabRendererContent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TabRendererContent.fromJson(Map<String, dynamic> json) =>
      TabRendererContent(
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
  });

  final List<SectionListRendererContent> contents;
  final String trackingParams;
  final SubMenu subMenu;

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
      );

  Map<String, dynamic> toJson() => {
        "contents": contents == null
            ? null
            : List<dynamic>.from(contents.map((x) => x.toJson())),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "subMenu": subMenu == null ? null : subMenu.toJson(),
      };
}

class SectionListRendererContent {
  SectionListRendererContent({
    this.itemSectionRenderer,
  });

  final ItemSectionRenderer itemSectionRenderer;

  factory SectionListRendererContent.fromRawJson(String str) =>
      SectionListRendererContent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SectionListRendererContent.fromJson(Map<String, dynamic> json) =>
      SectionListRendererContent(
        itemSectionRenderer: json["itemSectionRenderer"] == null
            ? null
            : ItemSectionRenderer.fromJson(json["itemSectionRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "itemSectionRenderer":
            itemSectionRenderer == null ? null : itemSectionRenderer.toJson(),
      };
}

class ItemSectionRenderer {
  ItemSectionRenderer({
    this.contents,
    this.trackingParams,
  });

  final List<ItemSectionRendererContent> contents;
  final String trackingParams;

  factory ItemSectionRenderer.fromRawJson(String str) =>
      ItemSectionRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ItemSectionRenderer.fromJson(Map<String, dynamic> json) =>
      ItemSectionRenderer(
        contents: json["contents"] == null
            ? null
            : List<ItemSectionRendererContent>.from(json["contents"]
                .map((x) => ItemSectionRendererContent.fromJson(x))),
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

class ItemSectionRendererContent {
  ItemSectionRendererContent({
    this.gridRenderer,
  });

  final GridRenderer gridRenderer;

  factory ItemSectionRendererContent.fromRawJson(String str) =>
      ItemSectionRendererContent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ItemSectionRendererContent.fromJson(Map<String, dynamic> json) =>
      ItemSectionRendererContent(
        gridRenderer: json["gridRenderer"] == null
            ? null
            : GridRenderer.fromJson(json["gridRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "gridRenderer": gridRenderer == null ? null : gridRenderer.toJson(),
      };
}

class GridRenderer {
  GridRenderer({
    this.items,
    this.continuations,
    this.trackingParams,
  });

  final List<GridRendererItem> items;
  final List<Continuation> continuations;
  final String trackingParams;

  factory GridRenderer.fromRawJson(String str) =>
      GridRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GridRenderer.fromJson(Map<String, dynamic> json) => GridRenderer(
        items: json["items"] == null
            ? null
            : List<GridRendererItem>.from(
                json["items"].map((x) => GridRendererItem.fromJson(x))),
        continuations: json["continuations"] == null
            ? null
            : List<Continuation>.from(
                json["continuations"].map((x) => Continuation.fromJson(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "items": items == null
            ? null
            : List<dynamic>.from(items.map((x) => x.toJson())),
        "continuations": continuations == null
            ? null
            : List<dynamic>.from(continuations.map((x) => x.toJson())),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class Continuation {
  Continuation({
    this.nextContinuationData,
  });

  final NextContinuationData nextContinuationData;

  factory Continuation.fromRawJson(String str) =>
      Continuation.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Continuation.fromJson(Map<String, dynamic> json) => Continuation(
        nextContinuationData: json["nextContinuationData"] == null
            ? null
            : NextContinuationData.fromJson(json["nextContinuationData"]),
      );

  Map<String, dynamic> toJson() => {
        "nextContinuationData":
            nextContinuationData == null ? null : nextContinuationData.toJson(),
      };
}

class NextContinuationData {
  NextContinuationData({
    this.continuation,
    this.clickTrackingParams,
  });

  final String continuation;
  final String clickTrackingParams;

  factory NextContinuationData.fromRawJson(String str) =>
      NextContinuationData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NextContinuationData.fromJson(Map<String, dynamic> json) =>
      NextContinuationData(
        continuation:
            json["continuation"] == null ? null : json["continuation"],
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "continuation": continuation == null ? null : continuation,
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
      };
}

class GridRendererItem {
  GridRendererItem({
    this.gridVideoRenderer,
  });

  final PurpleGridVideoRenderer gridVideoRenderer;

  factory GridRendererItem.fromRawJson(String str) =>
      GridRendererItem.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GridRendererItem.fromJson(Map<String, dynamic> json) =>
      GridRendererItem(
        gridVideoRenderer: json["gridVideoRenderer"] == null
            ? null
            : PurpleGridVideoRenderer.fromJson(json["gridVideoRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "gridVideoRenderer":
            gridVideoRenderer == null ? null : gridVideoRenderer.toJson(),
      };
}

class PurpleGridVideoRenderer {
  PurpleGridVideoRenderer({
    this.videoId,
    this.thumbnail,
    this.title,
    this.publishedTimeText,
    this.viewCountText,
    this.navigationEndpoint,
    this.ownerBadges,
    this.trackingParams,
    this.shortViewCountText,
    this.menu,
    this.thumbnailOverlays,
    this.shortBylineText,
    this.richThumbnail,
  });

  final String videoId;
  final Avatar thumbnail;
  final PurpleTitle title;
  final PublishedTimeTextClass publishedTimeText;
  final SubscriberCountText viewCountText;
  final GridVideoRendererNavigationEndpoint navigationEndpoint;
  final List<Badge> ownerBadges;
  final String trackingParams;
  final SubscriberCountText shortViewCountText;
  final Menu menu;
  final List<PurpleThumbnailOverlay> thumbnailOverlays;
  final ShortBylineText shortBylineText;
  final RichThumbnail richThumbnail;

  factory PurpleGridVideoRenderer.fromRawJson(String str) =>
      PurpleGridVideoRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleGridVideoRenderer.fromJson(Map<String, dynamic> json) =>
      PurpleGridVideoRenderer(
        videoId: json["videoId"] == null ? null : json["videoId"],
        thumbnail: json["thumbnail"] == null
            ? null
            : Avatar.fromJson(json["thumbnail"]),
        title:
            json["title"] == null ? null : PurpleTitle.fromJson(json["title"]),
        publishedTimeText: json["publishedTimeText"] == null
            ? null
            : PublishedTimeTextClass.fromJson(json["publishedTimeText"]),
        viewCountText: json["viewCountText"] == null
            ? null
            : SubscriberCountText.fromJson(json["viewCountText"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : GridVideoRendererNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
        ownerBadges: json["ownerBadges"] == null
            ? null
            : List<Badge>.from(
                json["ownerBadges"].map((x) => Badge.fromJson(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        shortViewCountText: json["shortViewCountText"] == null
            ? null
            : SubscriberCountText.fromJson(json["shortViewCountText"]),
        menu: json["menu"] == null ? null : Menu.fromJson(json["menu"]),
        thumbnailOverlays: json["thumbnailOverlays"] == null
            ? null
            : List<PurpleThumbnailOverlay>.from(json["thumbnailOverlays"]
                .map((x) => PurpleThumbnailOverlay.fromJson(x))),
        shortBylineText: json["shortBylineText"] == null
            ? null
            : ShortBylineText.fromJson(json["shortBylineText"]),
        richThumbnail: json["richThumbnail"] == null
            ? null
            : RichThumbnail.fromJson(json["richThumbnail"]),
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId == null ? null : videoId,
        "thumbnail": thumbnail == null ? null : thumbnail.toJson(),
        "title": title == null ? null : title.toJson(),
        "publishedTimeText":
            publishedTimeText == null ? null : publishedTimeText.toJson(),
        "viewCountText": viewCountText == null ? null : viewCountText.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "ownerBadges": ownerBadges == null
            ? null
            : List<dynamic>.from(ownerBadges.map((x) => x.toJson())),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "shortViewCountText":
            shortViewCountText == null ? null : shortViewCountText.toJson(),
        "menu": menu == null ? null : menu.toJson(),
        "thumbnailOverlays": thumbnailOverlays == null
            ? null
            : List<dynamic>.from(thumbnailOverlays.map((x) => x.toJson())),
        "shortBylineText":
            shortBylineText == null ? null : shortBylineText.toJson(),
        "richThumbnail": richThumbnail == null ? null : richThumbnail.toJson(),
      };
}

class Menu {
  Menu({
    this.menuRenderer,
  });

  final MenuMenuRenderer menuRenderer;

  factory Menu.fromRawJson(String str) => Menu.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Menu.fromJson(Map<String, dynamic> json) => Menu(
        menuRenderer: json["menuRenderer"] == null
            ? null
            : MenuMenuRenderer.fromJson(json["menuRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "menuRenderer": menuRenderer == null ? null : menuRenderer.toJson(),
      };
}

class MenuMenuRenderer {
  MenuMenuRenderer({
    this.items,
    this.trackingParams,
    this.accessibility,
  });

  final List<MenuRendererItem> items;
  final String trackingParams;
  final AccessibilityData accessibility;

  factory MenuMenuRenderer.fromRawJson(String str) =>
      MenuMenuRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MenuMenuRenderer.fromJson(Map<String, dynamic> json) =>
      MenuMenuRenderer(
        items: json["items"] == null
            ? null
            : List<MenuRendererItem>.from(
                json["items"].map((x) => MenuRendererItem.fromJson(x))),
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

class AccessibilityData {
  AccessibilityData({
    this.accessibilityData,
  });

  final AccessibilityDataAccessibilityData accessibilityData;

  factory AccessibilityData.fromRawJson(String str) =>
      AccessibilityData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AccessibilityData.fromJson(Map<String, dynamic> json) =>
      AccessibilityData(
        accessibilityData: json["accessibilityData"] == null
            ? null
            : AccessibilityDataAccessibilityData.fromJson(
                json["accessibilityData"]),
      );

  Map<String, dynamic> toJson() => {
        "accessibilityData":
            accessibilityData == null ? null : accessibilityData.toJson(),
      };
}

class AccessibilityDataAccessibilityData {
  AccessibilityDataAccessibilityData({
    this.label,
  });

  final String label;

  factory AccessibilityDataAccessibilityData.fromRawJson(String str) =>
      AccessibilityDataAccessibilityData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AccessibilityDataAccessibilityData.fromJson(
          Map<String, dynamic> json) =>
      AccessibilityDataAccessibilityData(
        label: json["label"] == null ? null : json["label"],
      );

  Map<String, dynamic> toJson() => {
        "label": label == null ? null : label,
      };
}

class MenuRendererItem {
  MenuRendererItem({
    this.menuServiceItemRenderer,
  });

  final MenuServiceItemRenderer menuServiceItemRenderer;

  factory MenuRendererItem.fromRawJson(String str) =>
      MenuRendererItem.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MenuRendererItem.fromJson(Map<String, dynamic> json) =>
      MenuRendererItem(
        menuServiceItemRenderer: json["menuServiceItemRenderer"] == null
            ? null
            : MenuServiceItemRenderer.fromJson(json["menuServiceItemRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "menuServiceItemRenderer": menuServiceItemRenderer == null
            ? null
            : menuServiceItemRenderer.toJson(),
      };
}

class MenuServiceItemRenderer {
  MenuServiceItemRenderer({
    this.text,
    this.icon,
    this.serviceEndpoint,
    this.trackingParams,
  });

  final Text text;
  final IconImage icon;
  final ServiceEndpoint serviceEndpoint;
  final String trackingParams;

  factory MenuServiceItemRenderer.fromRawJson(String str) =>
      MenuServiceItemRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MenuServiceItemRenderer.fromJson(Map<String, dynamic> json) =>
      MenuServiceItemRenderer(
        text: json["text"] == null ? null : Text.fromJson(json["text"]),
        icon: json["icon"] == null ? null : IconImage.fromJson(json["icon"]),
        serviceEndpoint: json["serviceEndpoint"] == null
            ? null
            : ServiceEndpoint.fromJson(json["serviceEndpoint"]),
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

  final IconType iconType;

  factory IconImage.fromRawJson(String str) =>
      IconImage.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IconImage.fromJson(Map<String, dynamic> json) => IconImage(
        iconType: json["iconType"] == null
            ? null
            : iconTypeValues.map[json["iconType"]],
      );

  Map<String, dynamic> toJson() => {
        "iconType": iconType == null ? null : iconTypeValues.reverse[iconType],
      };
}

enum IconType {
  ADD_TO_QUEUE_TAIL,
  OFFICIAL_ARTIST_BADGE,
  CHECK_CIRCLE_THICK,
  LIVE,
  CHECK,
  PLAYLIST_ADD_CHECK,
  WATCH_LATER,
  SORT,
  YOUTUBE_LOGO,
  SEARCH,
  AVATAR_LOGGED_OUT,
  VIDEO_CALL,
  APPS,
  MORE_VERT,
  CREATION_UPLOAD,
  CREATION_LIVE,
  UNPLUGGED_LOGO,
  YOUTUBE_MUSIC,
  YOUTUBE_KIDS_ROUND,
  YOUTUBE_ROUND
}

final iconTypeValues = EnumValues({
  "ADD_TO_QUEUE_TAIL": IconType.ADD_TO_QUEUE_TAIL,
  "APPS": IconType.APPS,
  "AVATAR_LOGGED_OUT": IconType.AVATAR_LOGGED_OUT,
  "CHECK": IconType.CHECK,
  "CHECK_CIRCLE_THICK": IconType.CHECK_CIRCLE_THICK,
  "CREATION_LIVE": IconType.CREATION_LIVE,
  "CREATION_UPLOAD": IconType.CREATION_UPLOAD,
  "LIVE": IconType.LIVE,
  "MORE_VERT": IconType.MORE_VERT,
  "OFFICIAL_ARTIST_BADGE": IconType.OFFICIAL_ARTIST_BADGE,
  "PLAYLIST_ADD_CHECK": IconType.PLAYLIST_ADD_CHECK,
  "SEARCH": IconType.SEARCH,
  "SORT": IconType.SORT,
  "UNPLUGGED_LOGO": IconType.UNPLUGGED_LOGO,
  "VIDEO_CALL": IconType.VIDEO_CALL,
  "WATCH_LATER": IconType.WATCH_LATER,
  "YOUTUBE_KIDS_ROUND": IconType.YOUTUBE_KIDS_ROUND,
  "YOUTUBE_LOGO": IconType.YOUTUBE_LOGO,
  "YOUTUBE_MUSIC": IconType.YOUTUBE_MUSIC,
  "YOUTUBE_ROUND": IconType.YOUTUBE_ROUND
});

class ServiceEndpoint {
  ServiceEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signalServiceEndpoint,
  });

  final String clickTrackingParams;
  final ServiceEndpointCommandMetadata commandMetadata;
  final ServiceEndpointSignalServiceEndpoint signalServiceEndpoint;

  factory ServiceEndpoint.fromRawJson(String str) =>
      ServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ServiceEndpoint.fromJson(Map<String, dynamic> json) =>
      ServiceEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : ServiceEndpointCommandMetadata.fromJson(json["commandMetadata"]),
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

class ServiceEndpointCommandMetadata {
  ServiceEndpointCommandMetadata({
    this.webCommandMetadata,
  });

  final FluffyWebCommandMetadata webCommandMetadata;

  factory ServiceEndpointCommandMetadata.fromRawJson(String str) =>
      ServiceEndpointCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ServiceEndpointCommandMetadata.fromJson(Map<String, dynamic> json) =>
      ServiceEndpointCommandMetadata(
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
    this.sendPost,
  });

  final Url url;
  final bool sendPost;

  factory FluffyWebCommandMetadata.fromRawJson(String str) =>
      FluffyWebCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyWebCommandMetadata.fromJson(Map<String, dynamic> json) =>
      FluffyWebCommandMetadata(
        url: json["url"] == null ? null : urlValues.map[json["url"]],
        sendPost: json["sendPost"] == null ? null : json["sendPost"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : urlValues.reverse[url],
        "sendPost": sendPost == null ? null : sendPost,
      };
}

enum Url { SERVICE_AJAX }

final urlValues = EnumValues({"/service_ajax": Url.SERVICE_AJAX});

class ServiceEndpointSignalServiceEndpoint {
  ServiceEndpointSignalServiceEndpoint({
    this.signal,
    this.actions,
  });

  final Signal signal;
  final List<PurpleAction> actions;

  factory ServiceEndpointSignalServiceEndpoint.fromRawJson(String str) =>
      ServiceEndpointSignalServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ServiceEndpointSignalServiceEndpoint.fromJson(
          Map<String, dynamic> json) =>
      ServiceEndpointSignalServiceEndpoint(
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
    this.addToPlaylistCommand,
  });

  final AddToPlaylistCommand addToPlaylistCommand;

  factory PurpleAction.fromRawJson(String str) =>
      PurpleAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleAction.fromJson(Map<String, dynamic> json) => PurpleAction(
        addToPlaylistCommand: json["addToPlaylistCommand"] == null
            ? null
            : AddToPlaylistCommand.fromJson(json["addToPlaylistCommand"]),
      );

  Map<String, dynamic> toJson() => {
        "addToPlaylistCommand":
            addToPlaylistCommand == null ? null : addToPlaylistCommand.toJson(),
      };
}

class AddToPlaylistCommand {
  AddToPlaylistCommand({
    this.openMiniplayer,
    this.openListPanel,
    this.videoId,
    this.listType,
    this.onCreateListCommand,
    this.videoIds,
  });

  final bool openMiniplayer;
  final bool openListPanel;
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
        openListPanel:
            json["openListPanel"] == null ? null : json["openListPanel"],
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
        "openListPanel": openListPanel == null ? null : openListPanel,
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
  final OnCreateListCommandCommandMetadata commandMetadata;
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
            : OnCreateListCommandCommandMetadata.fromJson(
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

class OnCreateListCommandCommandMetadata {
  OnCreateListCommandCommandMetadata({
    this.webCommandMetadata,
  });

  final TentacledWebCommandMetadata webCommandMetadata;

  factory OnCreateListCommandCommandMetadata.fromRawJson(String str) =>
      OnCreateListCommandCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OnCreateListCommandCommandMetadata.fromJson(
          Map<String, dynamic> json) =>
      OnCreateListCommandCommandMetadata(
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
    this.apiUrl,
  });

  final Url url;
  final bool sendPost;
  final ApiUrl apiUrl;

  factory TentacledWebCommandMetadata.fromRawJson(String str) =>
      TentacledWebCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledWebCommandMetadata.fromJson(Map<String, dynamic> json) =>
      TentacledWebCommandMetadata(
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
  YOUTUBEI_V1_PLAYLIST_CREATE,
  YOUTUBEI_V1_BROWSE_EDIT_PLAYLIST,
  YOUTUBEI_V1_ACCOUNT_ACCOUNT_MENU
}

final apiUrlValues = EnumValues({
  "/youtubei/v1/account/account_menu": ApiUrl.YOUTUBEI_V1_ACCOUNT_ACCOUNT_MENU,
  "/youtubei/v1/browse/edit_playlist": ApiUrl.YOUTUBEI_V1_BROWSE_EDIT_PLAYLIST,
  "/youtubei/v1/playlist/create": ApiUrl.YOUTUBEI_V1_PLAYLIST_CREATE
});

class CreatePlaylistServiceEndpoint {
  CreatePlaylistServiceEndpoint({
    this.videoIds,
    this.hack,
    this.params,
  });

  final List<String> videoIds;
  final bool hack;
  final Params params;

  factory CreatePlaylistServiceEndpoint.fromRawJson(String str) =>
      CreatePlaylistServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CreatePlaylistServiceEndpoint.fromJson(Map<String, dynamic> json) =>
      CreatePlaylistServiceEndpoint(
        videoIds: json["videoIds"] == null
            ? null
            : List<String>.from(json["videoIds"].map((x) => x)),
        hack: json["hack"] == null ? null : json["hack"],
        params:
            json["params"] == null ? null : paramsValues.map[json["params"]],
      );

  Map<String, dynamic> toJson() => {
        "videoIds": videoIds == null
            ? null
            : List<dynamic>.from(videoIds.map((x) => x)),
        "hack": hack == null ? null : hack,
        "params": params == null ? null : paramsValues.reverse[params],
      };
}

enum Params { CAQ_3_D }

final paramsValues = EnumValues({"CAQ%3D": Params.CAQ_3_D});

enum Signal { CLIENT_SIGNAL }

final signalValues = EnumValues({"CLIENT_SIGNAL": Signal.CLIENT_SIGNAL});

class Text {
  Text({
    this.runs,
  });

  final List<TextRun> runs;

  factory Text.fromRawJson(String str) => Text.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Text.fromJson(Map<String, dynamic> json) => Text(
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

class GridVideoRendererNavigationEndpoint {
  GridVideoRendererNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.watchEndpoint,
  });

  final String clickTrackingParams;
  final NextEndpointCommandMetadata commandMetadata;
  final WatchEndpoint watchEndpoint;

  factory GridVideoRendererNavigationEndpoint.fromRawJson(String str) =>
      GridVideoRendererNavigationEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GridVideoRendererNavigationEndpoint.fromJson(
          Map<String, dynamic> json) =>
      GridVideoRendererNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : NextEndpointCommandMetadata.fromJson(json["commandMetadata"]),
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
  });

  final String videoId;

  factory WatchEndpoint.fromRawJson(String str) =>
      WatchEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WatchEndpoint.fromJson(Map<String, dynamic> json) => WatchEndpoint(
        videoId: json["videoId"] == null ? null : json["videoId"],
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId == null ? null : videoId,
      };
}

class Badge {
  Badge({
    this.metadataBadgeRenderer,
  });

  final MetadataBadgeRenderer metadataBadgeRenderer;

  factory Badge.fromRawJson(String str) => Badge.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Badge.fromJson(Map<String, dynamic> json) => Badge(
        metadataBadgeRenderer: json["metadataBadgeRenderer"] == null
            ? null
            : MetadataBadgeRenderer.fromJson(json["metadataBadgeRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "metadataBadgeRenderer": metadataBadgeRenderer == null
            ? null
            : metadataBadgeRenderer.toJson(),
      };
}

class MetadataBadgeRenderer {
  MetadataBadgeRenderer({
    this.icon,
    this.style,
    this.tooltip,
    this.trackingParams,
  });

  final IconImage icon;
  final MetadataBadgeRendererStyle style;
  final Tooltip tooltip;
  final String trackingParams;

  factory MetadataBadgeRenderer.fromRawJson(String str) =>
      MetadataBadgeRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MetadataBadgeRenderer.fromJson(Map<String, dynamic> json) =>
      MetadataBadgeRenderer(
        icon: json["icon"] == null ? null : IconImage.fromJson(json["icon"]),
        style: json["style"] == null
            ? null
            : metadataBadgeRendererStyleValues.map[json["style"]],
        tooltip:
            json["tooltip"] == null ? null : tooltipValues.map[json["tooltip"]],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "icon": icon == null ? null : icon.toJson(),
        "style": style == null
            ? null
            : metadataBadgeRendererStyleValues.reverse[style],
        "tooltip": tooltip == null ? null : tooltipValues.reverse[tooltip],
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

enum MetadataBadgeRendererStyle {
  BADGE_STYLE_TYPE_VERIFIED_ARTIST,
  BADGE_STYLE_TYPE_VERIFIED
}

final metadataBadgeRendererStyleValues = EnumValues({
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

class PublishedTimeTextClass {
  PublishedTimeTextClass({
    this.simpleText,
  });

  final String simpleText;

  factory PublishedTimeTextClass.fromRawJson(String str) =>
      PublishedTimeTextClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PublishedTimeTextClass.fromJson(Map<String, dynamic> json) =>
      PublishedTimeTextClass(
        simpleText: json["simpleText"] == null ? null : json["simpleText"],
      );

  Map<String, dynamic> toJson() => {
        "simpleText": simpleText == null ? null : simpleText,
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

  final List<Thumbnail> thumbnails;
  final bool logAsMovingThumbnail;

  factory MovingThumbnailDetails.fromRawJson(String str) =>
      MovingThumbnailDetails.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MovingThumbnailDetails.fromJson(Map<String, dynamic> json) =>
      MovingThumbnailDetails(
        thumbnails: json["thumbnails"] == null
            ? null
            : List<Thumbnail>.from(
                json["thumbnails"].map((x) => Thumbnail.fromJson(x))),
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

class Thumbnail {
  Thumbnail({
    this.url,
    this.width,
    this.height,
  });

  final String url;
  final int width;
  final int height;

  factory Thumbnail.fromRawJson(String str) =>
      Thumbnail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Thumbnail.fromJson(Map<String, dynamic> json) => Thumbnail(
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

class ShortBylineText {
  ShortBylineText({
    this.runs,
  });

  final List<ShortBylineTextRun> runs;

  factory ShortBylineText.fromRawJson(String str) =>
      ShortBylineText.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ShortBylineText.fromJson(Map<String, dynamic> json) =>
      ShortBylineText(
        runs: json["runs"] == null
            ? null
            : List<ShortBylineTextRun>.from(
                json["runs"].map((x) => ShortBylineTextRun.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "runs": runs == null
            ? null
            : List<dynamic>.from(runs.map((x) => x.toJson())),
      };
}

class ShortBylineTextRun {
  ShortBylineTextRun({
    this.text,
    this.navigationEndpoint,
  });

  final String text;
  final RunNavigationEndpoint navigationEndpoint;

  factory ShortBylineTextRun.fromRawJson(String str) =>
      ShortBylineTextRun.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ShortBylineTextRun.fromJson(Map<String, dynamic> json) =>
      ShortBylineTextRun(
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
  final NextEndpointCommandMetadata commandMetadata;
  final PurpleBrowseEndpoint browseEndpoint;

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
            : NextEndpointCommandMetadata.fromJson(json["commandMetadata"]),
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

  final Id browseId;
  final CanonicalBaseUrl canonicalBaseUrl;

  factory PurpleBrowseEndpoint.fromRawJson(String str) =>
      PurpleBrowseEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleBrowseEndpoint.fromJson(Map<String, dynamic> json) =>
      PurpleBrowseEndpoint(
        browseId:
            json["browseId"] == null ? null : idValues.map[json["browseId"]],
        canonicalBaseUrl: json["canonicalBaseUrl"] == null
            ? null
            : canonicalBaseUrlValues.map[json["canonicalBaseUrl"]],
      );

  Map<String, dynamic> toJson() => {
        "browseId": browseId == null ? null : idValues.reverse[browseId],
        "canonicalBaseUrl": canonicalBaseUrl == null
            ? null
            : canonicalBaseUrlValues.reverse[canonicalBaseUrl],
      };
}

class SubscriberCountText {
  SubscriberCountText({
    this.simpleText,
    this.runs,
  });

  final String simpleText;
  final List<TextRun> runs;

  factory SubscriberCountText.fromRawJson(String str) =>
      SubscriberCountText.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SubscriberCountText.fromJson(Map<String, dynamic> json) =>
      SubscriberCountText(
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

class Avatar {
  Avatar({
    this.thumbnails,
  });

  final List<Thumbnail> thumbnails;

  factory Avatar.fromRawJson(String str) => Avatar.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Avatar.fromJson(Map<String, dynamic> json) => Avatar(
        thumbnails: json["thumbnails"] == null
            ? null
            : List<Thumbnail>.from(
                json["thumbnails"].map((x) => Thumbnail.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "thumbnails": thumbnails == null
            ? null
            : List<dynamic>.from(thumbnails.map((x) => x.toJson())),
      };
}

class PurpleThumbnailOverlay {
  PurpleThumbnailOverlay({
    this.thumbnailOverlayTimeStatusRenderer,
    this.thumbnailOverlayToggleButtonRenderer,
    this.thumbnailOverlayNowPlayingRenderer,
  });

  final PurpleThumbnailOverlayTimeStatusRenderer
      thumbnailOverlayTimeStatusRenderer;
  final ThumbnailOverlayToggleButtonRenderer
      thumbnailOverlayToggleButtonRenderer;
  final ThumbnailOverlayNowPlayingRenderer thumbnailOverlayNowPlayingRenderer;

  factory PurpleThumbnailOverlay.fromRawJson(String str) =>
      PurpleThumbnailOverlay.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleThumbnailOverlay.fromJson(Map<String, dynamic> json) =>
      PurpleThumbnailOverlay(
        thumbnailOverlayTimeStatusRenderer:
            json["thumbnailOverlayTimeStatusRenderer"] == null
                ? null
                : PurpleThumbnailOverlayTimeStatusRenderer.fromJson(
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

class ThumbnailOverlayNowPlayingRenderer {
  ThumbnailOverlayNowPlayingRenderer({
    this.text,
  });

  final Text text;

  factory ThumbnailOverlayNowPlayingRenderer.fromRawJson(String str) =>
      ThumbnailOverlayNowPlayingRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ThumbnailOverlayNowPlayingRenderer.fromJson(
          Map<String, dynamic> json) =>
      ThumbnailOverlayNowPlayingRenderer(
        text: json["text"] == null ? null : Text.fromJson(json["text"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text.toJson(),
      };
}

class PurpleThumbnailOverlayTimeStatusRenderer {
  PurpleThumbnailOverlayTimeStatusRenderer({
    this.text,
    this.style,
    this.icon,
  });

  final PurpleTitle text;
  final ThumbnailOverlayTimeStatusRendererStyle style;
  final IconImage icon;

  factory PurpleThumbnailOverlayTimeStatusRenderer.fromRawJson(String str) =>
      PurpleThumbnailOverlayTimeStatusRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleThumbnailOverlayTimeStatusRenderer.fromJson(
          Map<String, dynamic> json) =>
      PurpleThumbnailOverlayTimeStatusRenderer(
        text: json["text"] == null ? null : PurpleTitle.fromJson(json["text"]),
        style: json["style"] == null
            ? null
            : thumbnailOverlayTimeStatusRendererStyleValues.map[json["style"]],
        icon: json["icon"] == null ? null : IconImage.fromJson(json["icon"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text.toJson(),
        "style": style == null
            ? null
            : thumbnailOverlayTimeStatusRendererStyleValues.reverse[style],
        "icon": icon == null ? null : icon.toJson(),
      };
}

enum ThumbnailOverlayTimeStatusRendererStyle { DEFAULT, LIVE }

final thumbnailOverlayTimeStatusRendererStyleValues = EnumValues({
  "DEFAULT": ThumbnailOverlayTimeStatusRendererStyle.DEFAULT,
  "LIVE": ThumbnailOverlayTimeStatusRendererStyle.LIVE
});

class PurpleTitle {
  PurpleTitle({
    this.accessibility,
    this.simpleText,
    this.runs,
  });

  final AccessibilityData accessibility;
  final String simpleText;
  final List<TextRun> runs;

  factory PurpleTitle.fromRawJson(String str) =>
      PurpleTitle.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleTitle.fromJson(Map<String, dynamic> json) => PurpleTitle(
        accessibility: json["accessibility"] == null
            ? null
            : AccessibilityData.fromJson(json["accessibility"]),
        simpleText: json["simpleText"] == null ? null : json["simpleText"],
        runs: json["runs"] == null
            ? null
            : List<TextRun>.from(json["runs"].map((x) => TextRun.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "accessibility": accessibility == null ? null : accessibility.toJson(),
        "simpleText": simpleText == null ? null : simpleText,
        "runs": runs == null
            ? null
            : List<dynamic>.from(runs.map((x) => x.toJson())),
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
  final OnCreateListCommandCommandMetadata commandMetadata;
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
            : OnCreateListCommandCommandMetadata.fromJson(
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
  final List<FluffyAction> actions;

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
            : List<FluffyAction>.from(
                json["actions"].map((x) => FluffyAction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "playlistId":
            playlistId == null ? null : playlistIdValues.reverse[playlistId],
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toJson())),
      };
}

class FluffyAction {
  FluffyAction({
    this.action,
    this.removedVideoId,
  });

  final IndecentAction action;
  final String removedVideoId;

  factory FluffyAction.fromRawJson(String str) =>
      FluffyAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyAction.fromJson(Map<String, dynamic> json) => FluffyAction(
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
  final OnCreateListCommandCommandMetadata commandMetadata;
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
            : OnCreateListCommandCommandMetadata.fromJson(
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
  final List<TentacledAction> actions;

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
    this.addedVideoId,
    this.action,
  });

  final String addedVideoId;
  final HilariousAction action;

  factory TentacledAction.fromRawJson(String str) =>
      TentacledAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledAction.fromJson(Map<String, dynamic> json) =>
      TentacledAction(
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

class SubMenu {
  SubMenu({
    this.channelSubMenuRenderer,
  });

  final ChannelSubMenuRenderer channelSubMenuRenderer;

  factory SubMenu.fromRawJson(String str) => SubMenu.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SubMenu.fromJson(Map<String, dynamic> json) => SubMenu(
        channelSubMenuRenderer: json["channelSubMenuRenderer"] == null
            ? null
            : ChannelSubMenuRenderer.fromJson(json["channelSubMenuRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "channelSubMenuRenderer": channelSubMenuRenderer == null
            ? null
            : channelSubMenuRenderer.toJson(),
      };
}

class ChannelSubMenuRenderer {
  ChannelSubMenuRenderer({
    this.contentTypeSubMenuItems,
    this.flowSubMenuItems,
    this.playAllButton,
    this.sortSetting,
  });

  final List<ExpandableTabRenderer> contentTypeSubMenuItems;
  final List<ExpandableTabRenderer> flowSubMenuItems;
  final DismissButtonClass playAllButton;
  final SortSetting sortSetting;

  factory ChannelSubMenuRenderer.fromRawJson(String str) =>
      ChannelSubMenuRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChannelSubMenuRenderer.fromJson(Map<String, dynamic> json) =>
      ChannelSubMenuRenderer(
        contentTypeSubMenuItems: json["contentTypeSubMenuItems"] == null
            ? null
            : List<ExpandableTabRenderer>.from(json["contentTypeSubMenuItems"]
                .map((x) => ExpandableTabRenderer.fromJson(x))),
        flowSubMenuItems: json["flowSubMenuItems"] == null
            ? null
            : List<ExpandableTabRenderer>.from(json["flowSubMenuItems"]
                .map((x) => ExpandableTabRenderer.fromJson(x))),
        playAllButton: json["playAllButton"] == null
            ? null
            : DismissButtonClass.fromJson(json["playAllButton"]),
        sortSetting: json["sortSetting"] == null
            ? null
            : SortSetting.fromJson(json["sortSetting"]),
      );

  Map<String, dynamic> toJson() => {
        "contentTypeSubMenuItems": contentTypeSubMenuItems == null
            ? null
            : List<dynamic>.from(
                contentTypeSubMenuItems.map((x) => x.toJson())),
        "flowSubMenuItems": flowSubMenuItems == null
            ? null
            : List<dynamic>.from(flowSubMenuItems.map((x) => x.toJson())),
        "playAllButton": playAllButton == null ? null : playAllButton.toJson(),
        "sortSetting": sortSetting == null ? null : sortSetting.toJson(),
      };
}

class DismissButtonClass {
  DismissButtonClass({
    this.buttonRenderer,
  });

  final DismissButtonButtonRenderer buttonRenderer;

  factory DismissButtonClass.fromRawJson(String str) =>
      DismissButtonClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DismissButtonClass.fromJson(Map<String, dynamic> json) =>
      DismissButtonClass(
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : DismissButtonButtonRenderer.fromJson(json["buttonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toJson(),
      };
}

class DismissButtonButtonRenderer {
  DismissButtonButtonRenderer({
    this.style,
    this.size,
    this.isDisabled,
    this.text,
    this.navigationEndpoint,
    this.trackingParams,
  });

  final String style;
  final String size;
  final bool isDisabled;
  final SubscriberCountText text;
  final PurpleNavigationEndpoint navigationEndpoint;
  final String trackingParams;

  factory DismissButtonButtonRenderer.fromRawJson(String str) =>
      DismissButtonButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DismissButtonButtonRenderer.fromJson(Map<String, dynamic> json) =>
      DismissButtonButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        text: json["text"] == null
            ? null
            : SubscriberCountText.fromJson(json["text"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : PurpleNavigationEndpoint.fromJson(json["navigationEndpoint"]),
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

class PurpleNavigationEndpoint {
  PurpleNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.watchPlaylistEndpoint,
  });

  final String clickTrackingParams;
  final NextEndpointCommandMetadata commandMetadata;
  final WatchPlaylistEndpoint watchPlaylistEndpoint;

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
            : NextEndpointCommandMetadata.fromJson(json["commandMetadata"]),
        watchPlaylistEndpoint: json["watchPlaylistEndpoint"] == null
            ? null
            : WatchPlaylistEndpoint.fromJson(json["watchPlaylistEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "watchPlaylistEndpoint": watchPlaylistEndpoint == null
            ? null
            : watchPlaylistEndpoint.toJson(),
      };
}

class WatchPlaylistEndpoint {
  WatchPlaylistEndpoint({
    this.playlistId,
  });

  final String playlistId;

  factory WatchPlaylistEndpoint.fromRawJson(String str) =>
      WatchPlaylistEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WatchPlaylistEndpoint.fromJson(Map<String, dynamic> json) =>
      WatchPlaylistEndpoint(
        playlistId: json["playlistId"] == null ? null : json["playlistId"],
      );

  Map<String, dynamic> toJson() => {
        "playlistId": playlistId == null ? null : playlistId,
      };
}

class SortSetting {
  SortSetting({
    this.sortFilterSubMenuRenderer,
  });

  final SortFilterSubMenuRenderer sortFilterSubMenuRenderer;

  factory SortSetting.fromRawJson(String str) =>
      SortSetting.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SortSetting.fromJson(Map<String, dynamic> json) => SortSetting(
        sortFilterSubMenuRenderer: json["sortFilterSubMenuRenderer"] == null
            ? null
            : SortFilterSubMenuRenderer.fromJson(
                json["sortFilterSubMenuRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "sortFilterSubMenuRenderer": sortFilterSubMenuRenderer == null
            ? null
            : sortFilterSubMenuRenderer.toJson(),
      };
}

class SortFilterSubMenuRenderer {
  SortFilterSubMenuRenderer({
    this.subMenuItems,
    this.title,
    this.icon,
    this.accessibility,
    this.trackingParams,
  });

  final List<SubMenuItem> subMenuItems;
  final String title;
  final IconImage icon;
  final AccessibilityData accessibility;
  final String trackingParams;

  factory SortFilterSubMenuRenderer.fromRawJson(String str) =>
      SortFilterSubMenuRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SortFilterSubMenuRenderer.fromJson(Map<String, dynamic> json) =>
      SortFilterSubMenuRenderer(
        subMenuItems: json["subMenuItems"] == null
            ? null
            : List<SubMenuItem>.from(
                json["subMenuItems"].map((x) => SubMenuItem.fromJson(x))),
        title: json["title"] == null ? null : json["title"],
        icon: json["icon"] == null ? null : IconImage.fromJson(json["icon"]),
        accessibility: json["accessibility"] == null
            ? null
            : AccessibilityData.fromJson(json["accessibility"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "subMenuItems": subMenuItems == null
            ? null
            : List<dynamic>.from(subMenuItems.map((x) => x.toJson())),
        "title": title == null ? null : title,
        "icon": icon == null ? null : icon.toJson(),
        "accessibility": accessibility == null ? null : accessibility.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class SubMenuItem {
  SubMenuItem({
    this.title,
    this.selected,
    this.navigationEndpoint,
  });

  final String title;
  final bool selected;
  final NavigationEndpointClass navigationEndpoint;

  factory SubMenuItem.fromRawJson(String str) =>
      SubMenuItem.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SubMenuItem.fromJson(Map<String, dynamic> json) => SubMenuItem(
        title: json["title"] == null ? null : json["title"],
        selected: json["selected"] == null ? null : json["selected"],
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : NavigationEndpointClass.fromJson(json["navigationEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title,
        "selected": selected == null ? null : selected,
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
      };
}

class ChannelUploadPageIdEndpoint {
  ChannelUploadPageIdEndpoint({
    this.commandMetadata,
    this.urlEndpoint,
  });

  final PurpleCommandMetadata commandMetadata;
  final UrlEndpoint urlEndpoint;

  factory ChannelUploadPageIdEndpoint.fromRawJson(String str) =>
      ChannelUploadPageIdEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChannelUploadPageIdEndpoint.fromJson(Map<String, dynamic> json) =>
      ChannelUploadPageIdEndpoint(
        commandMetadata: json["commandMetadata"] == null
            ? null
            : PurpleCommandMetadata.fromJson(json["commandMetadata"]),
        urlEndpoint: json["urlEndpoint"] == null
            ? null
            : UrlEndpoint.fromJson(json["urlEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "urlEndpoint": urlEndpoint == null ? null : urlEndpoint.toJson(),
      };
}

class PurpleCommandMetadata {
  PurpleCommandMetadata({
    this.webCommandMetadata,
  });

  final StickyWebCommandMetadata webCommandMetadata;

  factory PurpleCommandMetadata.fromRawJson(String str) =>
      PurpleCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleCommandMetadata.fromJson(Map<String, dynamic> json) =>
      PurpleCommandMetadata(
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
  });

  final String url;
  final WebPageType webPageType;

  factory StickyWebCommandMetadata.fromRawJson(String str) =>
      StickyWebCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StickyWebCommandMetadata.fromJson(Map<String, dynamic> json) =>
      StickyWebCommandMetadata(
        url: json["url"] == null ? null : json["url"],
        webPageType: json["webPageType"] == null
            ? null
            : webPageTypeValues.map[json["webPageType"]],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "webPageType":
            webPageType == null ? null : webPageTypeValues.reverse[webPageType],
      };
}

class UrlEndpoint {
  UrlEndpoint({
    this.url,
  });

  final String url;

  factory UrlEndpoint.fromRawJson(String str) =>
      UrlEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UrlEndpoint.fromJson(Map<String, dynamic> json) => UrlEndpoint(
        url: json["url"] == null ? null : json["url"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
      };
}

class Header {
  Header({
    this.c4TabbedHeaderRenderer,
  });

  final C4TabbedHeaderRenderer c4TabbedHeaderRenderer;

  factory Header.fromRawJson(String str) => Header.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Header.fromJson(Map<String, dynamic> json) => Header(
        c4TabbedHeaderRenderer: json["c4TabbedHeaderRenderer"] == null
            ? null
            : C4TabbedHeaderRenderer.fromJson(json["c4TabbedHeaderRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "c4TabbedHeaderRenderer": c4TabbedHeaderRenderer == null
            ? null
            : c4TabbedHeaderRenderer.toJson(),
      };
}

class C4TabbedHeaderRenderer {
  C4TabbedHeaderRenderer({
    this.channelId,
    this.title,
    this.navigationEndpoint,
    this.avatar,
    this.banner,
    this.badges,
    this.headerLinks,
    this.subscribeButton,
    this.subscriberCountText,
    this.tvBanner,
    this.mobileBanner,
    this.trackingParams,
    this.visitTracking,
    this.sponsorButton,
  });

  final Id channelId;
  final String title;
  final RunNavigationEndpoint navigationEndpoint;
  final Avatar avatar;
  final Avatar banner;
  final List<Badge> badges;
  final HeaderLinks headerLinks;
  final SubscribeButton subscribeButton;
  final SubscriberCountText subscriberCountText;
  final Avatar tvBanner;
  final Avatar mobileBanner;
  final String trackingParams;
  final VisitTracking visitTracking;
  final SponsorButton sponsorButton;

  factory C4TabbedHeaderRenderer.fromRawJson(String str) =>
      C4TabbedHeaderRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory C4TabbedHeaderRenderer.fromJson(Map<String, dynamic> json) =>
      C4TabbedHeaderRenderer(
        channelId:
            json["channelId"] == null ? null : idValues.map[json["channelId"]],
        title: json["title"] == null ? null : json["title"],
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : RunNavigationEndpoint.fromJson(json["navigationEndpoint"]),
        avatar: json["avatar"] == null ? null : Avatar.fromJson(json["avatar"]),
        banner: json["banner"] == null ? null : Avatar.fromJson(json["banner"]),
        badges: json["badges"] == null
            ? null
            : List<Badge>.from(json["badges"].map((x) => Badge.fromJson(x))),
        headerLinks: json["headerLinks"] == null
            ? null
            : HeaderLinks.fromJson(json["headerLinks"]),
        subscribeButton: json["subscribeButton"] == null
            ? null
            : SubscribeButton.fromJson(json["subscribeButton"]),
        subscriberCountText: json["subscriberCountText"] == null
            ? null
            : SubscriberCountText.fromJson(json["subscriberCountText"]),
        tvBanner:
            json["tvBanner"] == null ? null : Avatar.fromJson(json["tvBanner"]),
        mobileBanner: json["mobileBanner"] == null
            ? null
            : Avatar.fromJson(json["mobileBanner"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        visitTracking: json["visitTracking"] == null
            ? null
            : VisitTracking.fromJson(json["visitTracking"]),
        sponsorButton: json["sponsorButton"] == null
            ? null
            : SponsorButton.fromJson(json["sponsorButton"]),
      );

  Map<String, dynamic> toJson() => {
        "channelId": channelId == null ? null : idValues.reverse[channelId],
        "title": title == null ? null : title,
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "avatar": avatar == null ? null : avatar.toJson(),
        "banner": banner == null ? null : banner.toJson(),
        "badges": badges == null
            ? null
            : List<dynamic>.from(badges.map((x) => x.toJson())),
        "headerLinks": headerLinks == null ? null : headerLinks.toJson(),
        "subscribeButton":
            subscribeButton == null ? null : subscribeButton.toJson(),
        "subscriberCountText":
            subscriberCountText == null ? null : subscriberCountText.toJson(),
        "tvBanner": tvBanner == null ? null : tvBanner.toJson(),
        "mobileBanner": mobileBanner == null ? null : mobileBanner.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "visitTracking": visitTracking == null ? null : visitTracking.toJson(),
        "sponsorButton": sponsorButton == null ? null : sponsorButton.toJson(),
      };
}

class HeaderLinks {
  HeaderLinks({
    this.channelHeaderLinksRenderer,
  });

  final ChannelHeaderLinksRenderer channelHeaderLinksRenderer;

  factory HeaderLinks.fromRawJson(String str) =>
      HeaderLinks.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HeaderLinks.fromJson(Map<String, dynamic> json) => HeaderLinks(
        channelHeaderLinksRenderer: json["channelHeaderLinksRenderer"] == null
            ? null
            : ChannelHeaderLinksRenderer.fromJson(
                json["channelHeaderLinksRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "channelHeaderLinksRenderer": channelHeaderLinksRenderer == null
            ? null
            : channelHeaderLinksRenderer.toJson(),
      };
}

class ChannelHeaderLinksRenderer {
  ChannelHeaderLinksRenderer({
    this.hack,
    this.primaryLinks,
    this.secondaryLinks,
  });

  final bool hack;
  final List<PrimaryLink> primaryLinks;
  final List<SecondaryLink> secondaryLinks;

  factory ChannelHeaderLinksRenderer.fromRawJson(String str) =>
      ChannelHeaderLinksRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChannelHeaderLinksRenderer.fromJson(Map<String, dynamic> json) =>
      ChannelHeaderLinksRenderer(
        hack: json["hack"] == null ? null : json["hack"],
        primaryLinks: json["primaryLinks"] == null
            ? null
            : List<PrimaryLink>.from(
                json["primaryLinks"].map((x) => PrimaryLink.fromJson(x))),
        secondaryLinks: json["secondaryLinks"] == null
            ? null
            : List<SecondaryLink>.from(
                json["secondaryLinks"].map((x) => SecondaryLink.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "hack": hack == null ? null : hack,
        "primaryLinks": primaryLinks == null
            ? null
            : List<dynamic>.from(primaryLinks.map((x) => x.toJson())),
        "secondaryLinks": secondaryLinks == null
            ? null
            : List<dynamic>.from(secondaryLinks.map((x) => x.toJson())),
      };
}

class PrimaryLink {
  PrimaryLink({
    this.navigationEndpoint,
    this.icon,
    this.title,
  });

  final PrimaryLinkNavigationEndpoint navigationEndpoint;
  final Icon icon;
  final PublishedTimeTextClass title;

  factory PrimaryLink.fromRawJson(String str) =>
      PrimaryLink.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PrimaryLink.fromJson(Map<String, dynamic> json) => PrimaryLink(
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : PrimaryLinkNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
        icon: json["icon"] == null ? null : Icon.fromJson(json["icon"]),
        title: json["title"] == null
            ? null
            : PublishedTimeTextClass.fromJson(json["title"]),
      );

  Map<String, dynamic> toJson() => {
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "icon": icon == null ? null : icon.toJson(),
        "title": title == null ? null : title.toJson(),
      };
}

class Icon {
  Icon({
    this.thumbnails,
  });

  final List<UrlEndpoint> thumbnails;

  factory Icon.fromRawJson(String str) => Icon.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Icon.fromJson(Map<String, dynamic> json) => Icon(
        thumbnails: json["thumbnails"] == null
            ? null
            : List<UrlEndpoint>.from(
                json["thumbnails"].map((x) => UrlEndpoint.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "thumbnails": thumbnails == null
            ? null
            : List<dynamic>.from(thumbnails.map((x) => x.toJson())),
      };
}

class PrimaryLinkNavigationEndpoint {
  PrimaryLinkNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.urlEndpoint,
  });

  final String clickTrackingParams;
  final NextEndpointCommandMetadata commandMetadata;
  final PurpleUrlEndpoint urlEndpoint;

  factory PrimaryLinkNavigationEndpoint.fromRawJson(String str) =>
      PrimaryLinkNavigationEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PrimaryLinkNavigationEndpoint.fromJson(Map<String, dynamic> json) =>
      PrimaryLinkNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : NextEndpointCommandMetadata.fromJson(json["commandMetadata"]),
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
    this.nofollow,
  });

  final String url;
  final bool nofollow;

  factory PurpleUrlEndpoint.fromRawJson(String str) =>
      PurpleUrlEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleUrlEndpoint.fromJson(Map<String, dynamic> json) =>
      PurpleUrlEndpoint(
        url: json["url"] == null ? null : json["url"],
        nofollow: json["nofollow"] == null ? null : json["nofollow"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "nofollow": nofollow == null ? null : nofollow,
      };
}

class SecondaryLink {
  SecondaryLink({
    this.navigationEndpoint,
    this.icon,
    this.title,
  });

  final SecondaryLinkNavigationEndpoint navigationEndpoint;
  final Icon icon;
  final PublishedTimeTextClass title;

  factory SecondaryLink.fromRawJson(String str) =>
      SecondaryLink.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SecondaryLink.fromJson(Map<String, dynamic> json) => SecondaryLink(
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : SecondaryLinkNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
        icon: json["icon"] == null ? null : Icon.fromJson(json["icon"]),
        title: json["title"] == null
            ? null
            : PublishedTimeTextClass.fromJson(json["title"]),
      );

  Map<String, dynamic> toJson() => {
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "icon": icon == null ? null : icon.toJson(),
        "title": title == null ? null : title.toJson(),
      };
}

class SecondaryLinkNavigationEndpoint {
  SecondaryLinkNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.urlEndpoint,
  });

  final String clickTrackingParams;
  final NextEndpointCommandMetadata commandMetadata;
  final FluffyUrlEndpoint urlEndpoint;

  factory SecondaryLinkNavigationEndpoint.fromRawJson(String str) =>
      SecondaryLinkNavigationEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SecondaryLinkNavigationEndpoint.fromJson(Map<String, dynamic> json) =>
      SecondaryLinkNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : NextEndpointCommandMetadata.fromJson(json["commandMetadata"]),
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
    this.nofollow,
  });

  final String url;
  final Target target;
  final bool nofollow;

  factory FluffyUrlEndpoint.fromRawJson(String str) =>
      FluffyUrlEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyUrlEndpoint.fromJson(Map<String, dynamic> json) =>
      FluffyUrlEndpoint(
        url: json["url"] == null ? null : json["url"],
        target:
            json["target"] == null ? null : targetValues.map[json["target"]],
        nofollow: json["nofollow"] == null ? null : json["nofollow"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "target": target == null ? null : targetValues.reverse[target],
        "nofollow": nofollow == null ? null : nofollow,
      };
}

enum Target { TARGET_NEW_WINDOW }

final targetValues =
    EnumValues({"TARGET_NEW_WINDOW": Target.TARGET_NEW_WINDOW});

class SponsorButton {
  SponsorButton({
    this.buttonRenderer,
  });

  final SponsorButtonButtonRenderer buttonRenderer;

  factory SponsorButton.fromRawJson(String str) =>
      SponsorButton.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SponsorButton.fromJson(Map<String, dynamic> json) => SponsorButton(
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : SponsorButtonButtonRenderer.fromJson(json["buttonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toJson(),
      };
}

class SponsorButtonButtonRenderer {
  SponsorButtonButtonRenderer({
    this.style,
    this.size,
    this.isDisabled,
    this.text,
    this.navigationEndpoint,
    this.trackingParams,
    this.hint,
    this.accessibilityData,
    this.targetId,
  });

  final String style;
  final String size;
  final bool isDisabled;
  final Text text;
  final FluffyNavigationEndpoint navigationEndpoint;
  final String trackingParams;
  final Hint hint;
  final AccessibilityData accessibilityData;
  final String targetId;

  factory SponsorButtonButtonRenderer.fromRawJson(String str) =>
      SponsorButtonButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SponsorButtonButtonRenderer.fromJson(Map<String, dynamic> json) =>
      SponsorButtonButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        text: json["text"] == null ? null : Text.fromJson(json["text"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : FluffyNavigationEndpoint.fromJson(json["navigationEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        hint: json["hint"] == null ? null : Hint.fromJson(json["hint"]),
        accessibilityData: json["accessibilityData"] == null
            ? null
            : AccessibilityData.fromJson(json["accessibilityData"]),
        targetId: json["targetId"] == null ? null : json["targetId"],
      );

  Map<String, dynamic> toJson() => {
        "style": style == null ? null : style,
        "size": size == null ? null : size,
        "isDisabled": isDisabled == null ? null : isDisabled,
        "text": text == null ? null : text.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "hint": hint == null ? null : hint.toJson(),
        "accessibilityData":
            accessibilityData == null ? null : accessibilityData.toJson(),
        "targetId": targetId == null ? null : targetId,
      };
}

class Hint {
  Hint({
    this.hintRenderer,
  });

  final HintRenderer hintRenderer;

  factory Hint.fromRawJson(String str) => Hint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Hint.fromJson(Map<String, dynamic> json) => Hint(
        hintRenderer: json["hintRenderer"] == null
            ? null
            : HintRenderer.fromJson(json["hintRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "hintRenderer": hintRenderer == null ? null : hintRenderer.toJson(),
      };
}

class HintRenderer {
  HintRenderer({
    this.hintId,
    this.dwellTimeMs,
    this.hintCap,
    this.trackingParams,
  });

  final String hintId;
  final String dwellTimeMs;
  final HintCap hintCap;
  final String trackingParams;

  factory HintRenderer.fromRawJson(String str) =>
      HintRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HintRenderer.fromJson(Map<String, dynamic> json) => HintRenderer(
        hintId: json["hintId"] == null ? null : json["hintId"],
        dwellTimeMs: json["dwellTimeMs"] == null ? null : json["dwellTimeMs"],
        hintCap:
            json["hintCap"] == null ? null : HintCap.fromJson(json["hintCap"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "hintId": hintId == null ? null : hintId,
        "dwellTimeMs": dwellTimeMs == null ? null : dwellTimeMs,
        "hintCap": hintCap == null ? null : hintCap.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class HintCap {
  HintCap({
    this.impressionCap,
  });

  final String impressionCap;

  factory HintCap.fromRawJson(String str) => HintCap.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HintCap.fromJson(Map<String, dynamic> json) => HintCap(
        impressionCap:
            json["impressionCap"] == null ? null : json["impressionCap"],
      );

  Map<String, dynamic> toJson() => {
        "impressionCap": impressionCap == null ? null : impressionCap,
      };
}

class FluffyNavigationEndpoint {
  FluffyNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.modalEndpoint,
  });

  final String clickTrackingParams;
  final FluffyCommandMetadata commandMetadata;
  final PurpleModalEndpoint modalEndpoint;

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
            : FluffyCommandMetadata.fromJson(json["commandMetadata"]),
        modalEndpoint: json["modalEndpoint"] == null
            ? null
            : PurpleModalEndpoint.fromJson(json["modalEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "modalEndpoint": modalEndpoint == null ? null : modalEndpoint.toJson(),
      };
}

class FluffyCommandMetadata {
  FluffyCommandMetadata({
    this.webCommandMetadata,
  });

  final IndigoWebCommandMetadata webCommandMetadata;

  factory FluffyCommandMetadata.fromRawJson(String str) =>
      FluffyCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyCommandMetadata.fromJson(Map<String, dynamic> json) =>
      FluffyCommandMetadata(
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
    this.ignoreNavigation,
  });

  final bool ignoreNavigation;

  factory IndigoWebCommandMetadata.fromRawJson(String str) =>
      IndigoWebCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IndigoWebCommandMetadata.fromJson(Map<String, dynamic> json) =>
      IndigoWebCommandMetadata(
        ignoreNavigation:
            json["ignoreNavigation"] == null ? null : json["ignoreNavigation"],
      );

  Map<String, dynamic> toJson() => {
        "ignoreNavigation": ignoreNavigation == null ? null : ignoreNavigation,
      };
}

class PurpleModalEndpoint {
  PurpleModalEndpoint({
    this.modal,
  });

  final PurpleModal modal;

  factory PurpleModalEndpoint.fromRawJson(String str) =>
      PurpleModalEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleModalEndpoint.fromJson(Map<String, dynamic> json) =>
      PurpleModalEndpoint(
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

  final Text title;
  final Text content;
  final PurpleButton button;

  factory PurpleModalWithTitleAndButtonRenderer.fromRawJson(String str) =>
      PurpleModalWithTitleAndButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleModalWithTitleAndButtonRenderer.fromJson(
          Map<String, dynamic> json) =>
      PurpleModalWithTitleAndButtonRenderer(
        title: json["title"] == null ? null : Text.fromJson(json["title"]),
        content:
            json["content"] == null ? null : Text.fromJson(json["content"]),
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
  final bool isDisabled;
  final PublishedTimeTextClass text;
  final TentacledNavigationEndpoint navigationEndpoint;
  final String trackingParams;

  factory PurpleButtonRenderer.fromRawJson(String str) =>
      PurpleButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleButtonRenderer.fromJson(Map<String, dynamic> json) =>
      PurpleButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        text: json["text"] == null
            ? null
            : PublishedTimeTextClass.fromJson(json["text"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : TentacledNavigationEndpoint.fromJson(json["navigationEndpoint"]),
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

class TentacledNavigationEndpoint {
  TentacledNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signInEndpoint,
  });

  final String clickTrackingParams;
  final NextEndpointCommandMetadata commandMetadata;
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
            : NextEndpointCommandMetadata.fromJson(json["commandMetadata"]),
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
    this.hack,
  });

  final bool hack;

  factory PurpleSignInEndpoint.fromRawJson(String str) =>
      PurpleSignInEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleSignInEndpoint.fromJson(Map<String, dynamic> json) =>
      PurpleSignInEndpoint(
        hack: json["hack"] == null ? null : json["hack"],
      );

  Map<String, dynamic> toJson() => {
        "hack": hack == null ? null : hack,
      };
}

class SubscribeButton {
  SubscribeButton({
    this.buttonRenderer,
  });

  final SubscribeButtonButtonRenderer buttonRenderer;

  factory SubscribeButton.fromRawJson(String str) =>
      SubscribeButton.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SubscribeButton.fromJson(Map<String, dynamic> json) =>
      SubscribeButton(
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : SubscribeButtonButtonRenderer.fromJson(json["buttonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toJson(),
      };
}

class SubscribeButtonButtonRenderer {
  SubscribeButtonButtonRenderer({
    this.style,
    this.size,
    this.isDisabled,
    this.text,
    this.navigationEndpoint,
    this.trackingParams,
  });

  final String style;
  final String size;
  final bool isDisabled;
  final SubscriberCountText text;
  final StickyNavigationEndpoint navigationEndpoint;
  final String trackingParams;

  factory SubscribeButtonButtonRenderer.fromRawJson(String str) =>
      SubscribeButtonButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SubscribeButtonButtonRenderer.fromJson(Map<String, dynamic> json) =>
      SubscribeButtonButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        text: json["text"] == null
            ? null
            : SubscriberCountText.fromJson(json["text"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : StickyNavigationEndpoint.fromJson(json["navigationEndpoint"]),
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

class StickyNavigationEndpoint {
  StickyNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.modalEndpoint,
  });

  final String clickTrackingParams;
  final FluffyCommandMetadata commandMetadata;
  final FluffyModalEndpoint modalEndpoint;

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
            : FluffyCommandMetadata.fromJson(json["commandMetadata"]),
        modalEndpoint: json["modalEndpoint"] == null
            ? null
            : FluffyModalEndpoint.fromJson(json["modalEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "modalEndpoint": modalEndpoint == null ? null : modalEndpoint.toJson(),
      };
}

class FluffyModalEndpoint {
  FluffyModalEndpoint({
    this.modal,
  });

  final FluffyModal modal;

  factory FluffyModalEndpoint.fromRawJson(String str) =>
      FluffyModalEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyModalEndpoint.fromJson(Map<String, dynamic> json) =>
      FluffyModalEndpoint(
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

  final SubscriberCountText title;
  final SubscriberCountText content;
  final FluffyButton button;

  factory FluffyModalWithTitleAndButtonRenderer.fromRawJson(String str) =>
      FluffyModalWithTitleAndButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyModalWithTitleAndButtonRenderer.fromJson(
          Map<String, dynamic> json) =>
      FluffyModalWithTitleAndButtonRenderer(
        title: json["title"] == null
            ? null
            : SubscriberCountText.fromJson(json["title"]),
        content: json["content"] == null
            ? null
            : SubscriberCountText.fromJson(json["content"]),
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
  final bool isDisabled;
  final PublishedTimeTextClass text;
  final IndigoNavigationEndpoint navigationEndpoint;
  final String trackingParams;

  factory FluffyButtonRenderer.fromRawJson(String str) =>
      FluffyButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyButtonRenderer.fromJson(Map<String, dynamic> json) =>
      FluffyButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        text: json["text"] == null
            ? null
            : PublishedTimeTextClass.fromJson(json["text"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : IndigoNavigationEndpoint.fromJson(json["navigationEndpoint"]),
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

class IndigoNavigationEndpoint {
  IndigoNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signInEndpoint,
  });

  final String clickTrackingParams;
  final NextEndpointCommandMetadata commandMetadata;
  final FluffySignInEndpoint signInEndpoint;

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
            : NextEndpointCommandMetadata.fromJson(json["commandMetadata"]),
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
    this.nextEndpoint,
    this.continueAction,
    this.idamTag,
  });

  final NavigationEndpointClass nextEndpoint;
  final String continueAction;
  final String idamTag;

  factory FluffySignInEndpoint.fromRawJson(String str) =>
      FluffySignInEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffySignInEndpoint.fromJson(Map<String, dynamic> json) =>
      FluffySignInEndpoint(
        nextEndpoint: json["nextEndpoint"] == null
            ? null
            : NavigationEndpointClass.fromJson(json["nextEndpoint"]),
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

class VisitTracking {
  VisitTracking({
    this.remarketingPing,
  });

  final String remarketingPing;

  factory VisitTracking.fromRawJson(String str) =>
      VisitTracking.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VisitTracking.fromJson(Map<String, dynamic> json) => VisitTracking(
        remarketingPing:
            json["remarketingPing"] == null ? null : json["remarketingPing"],
      );

  Map<String, dynamic> toJson() => {
        "remarketingPing": remarketingPing == null ? null : remarketingPing,
      };
}

class Metadata {
  Metadata({
    this.channelMetadataRenderer,
  });

  final ChannelMetadataRenderer channelMetadataRenderer;

  factory Metadata.fromRawJson(String str) =>
      Metadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Metadata.fromJson(Map<String, dynamic> json) => Metadata(
        channelMetadataRenderer: json["channelMetadataRenderer"] == null
            ? null
            : ChannelMetadataRenderer.fromJson(json["channelMetadataRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "channelMetadataRenderer": channelMetadataRenderer == null
            ? null
            : channelMetadataRenderer.toJson(),
      };
}

class ChannelMetadataRenderer {
  ChannelMetadataRenderer({
    this.title,
    this.description,
    this.externalId,
    this.keywords,
    this.ownerUrls,
    this.avatar,
    this.channelUrl,
    this.isFamilySafe,
    this.availableCountryCodes,
    this.musicArtistName,
    this.androidDeepLink,
    this.androidAppindexingLink,
    this.iosAppindexingLink,
    this.tabPath,
    this.vanityChannelUrl,
    this.rssUrl,
    this.channelConversionUrl,
    this.doubleclickTrackingUsername,
    this.facebookProfileId,
  });

  final String title;
  final String description;
  final Id externalId;
  final String keywords;
  final List<String> ownerUrls;
  final Avatar avatar;
  final String channelUrl;
  final bool isFamilySafe;
  final List<String> availableCountryCodes;
  final String musicArtistName;
  final String androidDeepLink;
  final String androidAppindexingLink;
  final String iosAppindexingLink;
  final String tabPath;
  final String vanityChannelUrl;
  final String rssUrl;
  final String channelConversionUrl;
  final String doubleclickTrackingUsername;
  final String facebookProfileId;

  factory ChannelMetadataRenderer.fromRawJson(String str) =>
      ChannelMetadataRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChannelMetadataRenderer.fromJson(Map<String, dynamic> json) =>
      ChannelMetadataRenderer(
        title: json["title"] == null ? null : json["title"],
        description: json["description"] == null ? null : json["description"],
        externalId: json["externalId"] == null
            ? null
            : idValues.map[json["externalId"]],
        keywords: json["keywords"] == null ? null : json["keywords"],
        ownerUrls: json["ownerUrls"] == null
            ? null
            : List<String>.from(json["ownerUrls"].map((x) => x)),
        avatar: json["avatar"] == null ? null : Avatar.fromJson(json["avatar"]),
        channelUrl: json["channelUrl"] == null ? null : json["channelUrl"],
        isFamilySafe:
            json["isFamilySafe"] == null ? null : json["isFamilySafe"],
        availableCountryCodes: json["availableCountryCodes"] == null
            ? null
            : List<String>.from(json["availableCountryCodes"].map((x) => x)),
        musicArtistName:
            json["musicArtistName"] == null ? null : json["musicArtistName"],
        androidDeepLink:
            json["androidDeepLink"] == null ? null : json["androidDeepLink"],
        androidAppindexingLink: json["androidAppindexingLink"] == null
            ? null
            : json["androidAppindexingLink"],
        iosAppindexingLink: json["iosAppindexingLink"] == null
            ? null
            : json["iosAppindexingLink"],
        tabPath: json["tabPath"] == null ? null : json["tabPath"],
        vanityChannelUrl:
            json["vanityChannelUrl"] == null ? null : json["vanityChannelUrl"],
        rssUrl: json["rssUrl"] == null ? null : json["rssUrl"],
        channelConversionUrl: json["channelConversionUrl"] == null
            ? null
            : json["channelConversionUrl"],
        doubleclickTrackingUsername: json["doubleclickTrackingUsername"] == null
            ? null
            : json["doubleclickTrackingUsername"],
        facebookProfileId: json["facebookProfileId"] == null
            ? null
            : json["facebookProfileId"],
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title,
        "description": description == null ? null : description,
        "externalId": externalId == null ? null : idValues.reverse[externalId],
        "keywords": keywords == null ? null : keywords,
        "ownerUrls": ownerUrls == null
            ? null
            : List<dynamic>.from(ownerUrls.map((x) => x)),
        "avatar": avatar == null ? null : avatar.toJson(),
        "channelUrl": channelUrl == null ? null : channelUrl,
        "isFamilySafe": isFamilySafe == null ? null : isFamilySafe,
        "availableCountryCodes": availableCountryCodes == null
            ? null
            : List<dynamic>.from(availableCountryCodes.map((x) => x)),
        "musicArtistName": musicArtistName == null ? null : musicArtistName,
        "androidDeepLink": androidDeepLink == null ? null : androidDeepLink,
        "androidAppindexingLink":
            androidAppindexingLink == null ? null : androidAppindexingLink,
        "iosAppindexingLink":
            iosAppindexingLink == null ? null : iosAppindexingLink,
        "tabPath": tabPath == null ? null : tabPath,
        "vanityChannelUrl": vanityChannelUrl == null ? null : vanityChannelUrl,
        "rssUrl": rssUrl == null ? null : rssUrl,
        "channelConversionUrl":
            channelConversionUrl == null ? null : channelConversionUrl,
        "doubleclickTrackingUsername": doubleclickTrackingUsername == null
            ? null
            : doubleclickTrackingUsername,
        "facebookProfileId":
            facebookProfileId == null ? null : facebookProfileId,
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
    this.familySafe,
    this.tags,
    this.availableCountries,
  });

  final String urlCanonical;
  final String title;
  final String description;
  final Avatar thumbnail;
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
  final bool noindex;
  final bool unlisted;
  final List<LinkAlternate> linkAlternates;
  final bool familySafe;
  final List<String> tags;
  final List<String> availableCountries;

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
            : Avatar.fromJson(json["thumbnail"]),
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
        familySafe: json["familySafe"] == null ? null : json["familySafe"],
        tags: json["tags"] == null
            ? null
            : List<String>.from(json["tags"].map((x) => x)),
        availableCountries: json["availableCountries"] == null
            ? null
            : List<String>.from(json["availableCountries"].map((x) => x)),
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
        "familySafe": familySafe == null ? null : familySafe,
        "tags": tags == null ? null : List<dynamic>.from(tags.map((x) => x)),
        "availableCountries": availableCountries == null
            ? null
            : List<dynamic>.from(availableCountries.map((x) => x)),
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

class Response {
  Response({
    this.responseContext,
    this.continuationContents,
    this.metadata,
    this.trackingParams,
    this.microformat,
  });

  final ResponseResponseContext responseContext;
  final ContinuationContents continuationContents;
  final Metadata metadata;
  final String trackingParams;
  final Microformat microformat;

  factory Response.fromRawJson(String str) =>
      Response.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Response.fromJson(Map<String, dynamic> json) => Response(
        responseContext: json["responseContext"] == null
            ? null
            : ResponseResponseContext.fromJson(json["responseContext"]),
        continuationContents: json["continuationContents"] == null
            ? null
            : ContinuationContents.fromJson(json["continuationContents"]),
        metadata: json["metadata"] == null
            ? null
            : Metadata.fromJson(json["metadata"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        microformat: json["microformat"] == null
            ? null
            : Microformat.fromJson(json["microformat"]),
      );

  Map<String, dynamic> toJson() => {
        "responseContext":
            responseContext == null ? null : responseContext.toJson(),
        "continuationContents":
            continuationContents == null ? null : continuationContents.toJson(),
        "metadata": metadata == null ? null : metadata.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "microformat": microformat == null ? null : microformat.toJson(),
      };
}

class ContinuationContents {
  ContinuationContents({
    this.gridContinuation,
  });

  final GridContinuation gridContinuation;

  factory ContinuationContents.fromRawJson(String str) =>
      ContinuationContents.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ContinuationContents.fromJson(Map<String, dynamic> json) =>
      ContinuationContents(
        gridContinuation: json["gridContinuation"] == null
            ? null
            : GridContinuation.fromJson(json["gridContinuation"]),
      );

  Map<String, dynamic> toJson() => {
        "gridContinuation":
            gridContinuation == null ? null : gridContinuation.toJson(),
      };
}

class GridContinuation {
  GridContinuation({
    this.items,
    this.continuations,
    this.trackingParams,
  });

  final List<GridRendererItem> items;
  final List<Continuation> continuations;
  final String trackingParams;

  factory GridContinuation.fromRawJson(String str) =>
      GridContinuation.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GridContinuation.fromJson(Map<String, dynamic> json) =>
      GridContinuation(
        items: json["items"] == null
            ? null
            : List<GridRendererItem>.from(
                json["items"].map((x) => GridRendererItem.fromJson(x))),
        continuations: json["continuations"] == null
            ? null
            : List<Continuation>.from(
                json["continuations"].map((x) => Continuation.fromJson(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "items": items == null
            ? null
            : List<dynamic>.from(items.map((x) => x.toJson())),
        "continuations": continuations == null
            ? null
            : List<dynamic>.from(continuations.map((x) => x.toJson())),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class FluffyGridVideoRenderer {
  FluffyGridVideoRenderer({
    this.videoId,
    this.thumbnail,
    this.title,
    this.publishedTimeText,
    this.viewCountText,
    this.navigationEndpoint,
    this.ownerBadges,
    this.trackingParams,
    this.shortViewCountText,
    this.menu,
    this.thumbnailOverlays,
  });

  final String videoId;
  final Avatar thumbnail;
  final FluffyTitle title;
  final PublishedTimeTextClass publishedTimeText;
  final PublishedTimeTextClass viewCountText;
  final GridVideoRendererNavigationEndpoint navigationEndpoint;
  final List<Badge> ownerBadges;
  final String trackingParams;
  final PublishedTimeTextClass shortViewCountText;
  final Menu menu;
  final List<FluffyThumbnailOverlay> thumbnailOverlays;

  factory FluffyGridVideoRenderer.fromRawJson(String str) =>
      FluffyGridVideoRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyGridVideoRenderer.fromJson(Map<String, dynamic> json) =>
      FluffyGridVideoRenderer(
        videoId: json["videoId"] == null ? null : json["videoId"],
        thumbnail: json["thumbnail"] == null
            ? null
            : Avatar.fromJson(json["thumbnail"]),
        title:
            json["title"] == null ? null : FluffyTitle.fromJson(json["title"]),
        publishedTimeText: json["publishedTimeText"] == null
            ? null
            : PublishedTimeTextClass.fromJson(json["publishedTimeText"]),
        viewCountText: json["viewCountText"] == null
            ? null
            : PublishedTimeTextClass.fromJson(json["viewCountText"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : GridVideoRendererNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
        ownerBadges: json["ownerBadges"] == null
            ? null
            : List<Badge>.from(
                json["ownerBadges"].map((x) => Badge.fromJson(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        shortViewCountText: json["shortViewCountText"] == null
            ? null
            : PublishedTimeTextClass.fromJson(json["shortViewCountText"]),
        menu: json["menu"] == null ? null : Menu.fromJson(json["menu"]),
        thumbnailOverlays: json["thumbnailOverlays"] == null
            ? null
            : List<FluffyThumbnailOverlay>.from(json["thumbnailOverlays"]
                .map((x) => FluffyThumbnailOverlay.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId == null ? null : videoId,
        "thumbnail": thumbnail == null ? null : thumbnail.toJson(),
        "title": title == null ? null : title.toJson(),
        "publishedTimeText":
            publishedTimeText == null ? null : publishedTimeText.toJson(),
        "viewCountText": viewCountText == null ? null : viewCountText.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "ownerBadges": ownerBadges == null
            ? null
            : List<dynamic>.from(ownerBadges.map((x) => x.toJson())),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "shortViewCountText":
            shortViewCountText == null ? null : shortViewCountText.toJson(),
        "menu": menu == null ? null : menu.toJson(),
        "thumbnailOverlays": thumbnailOverlays == null
            ? null
            : List<dynamic>.from(thumbnailOverlays.map((x) => x.toJson())),
      };
}

class FluffyThumbnailOverlay {
  FluffyThumbnailOverlay({
    this.thumbnailOverlayTimeStatusRenderer,
    this.thumbnailOverlayToggleButtonRenderer,
    this.thumbnailOverlayNowPlayingRenderer,
  });

  final FluffyThumbnailOverlayTimeStatusRenderer
      thumbnailOverlayTimeStatusRenderer;
  final ThumbnailOverlayToggleButtonRenderer
      thumbnailOverlayToggleButtonRenderer;
  final ThumbnailOverlayNowPlayingRenderer thumbnailOverlayNowPlayingRenderer;

  factory FluffyThumbnailOverlay.fromRawJson(String str) =>
      FluffyThumbnailOverlay.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyThumbnailOverlay.fromJson(Map<String, dynamic> json) =>
      FluffyThumbnailOverlay(
        thumbnailOverlayTimeStatusRenderer:
            json["thumbnailOverlayTimeStatusRenderer"] == null
                ? null
                : FluffyThumbnailOverlayTimeStatusRenderer.fromJson(
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

class FluffyThumbnailOverlayTimeStatusRenderer {
  FluffyThumbnailOverlayTimeStatusRenderer({
    this.text,
    this.style,
  });

  final FluffyTitle text;
  final ThumbnailOverlayTimeStatusRendererStyle style;

  factory FluffyThumbnailOverlayTimeStatusRenderer.fromRawJson(String str) =>
      FluffyThumbnailOverlayTimeStatusRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyThumbnailOverlayTimeStatusRenderer.fromJson(
          Map<String, dynamic> json) =>
      FluffyThumbnailOverlayTimeStatusRenderer(
        text: json["text"] == null ? null : FluffyTitle.fromJson(json["text"]),
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

class FluffyTitle {
  FluffyTitle({
    this.accessibility,
    this.simpleText,
  });

  final AccessibilityData accessibility;
  final String simpleText;

  factory FluffyTitle.fromRawJson(String str) =>
      FluffyTitle.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyTitle.fromJson(Map<String, dynamic> json) => FluffyTitle(
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

class ResponseResponseContext {
  ResponseResponseContext({
    this.serviceTrackingParams,
    this.maxAgeSeconds,
    this.webResponseContextExtensionData,
  });

  final List<ServiceTrackingParam> serviceTrackingParams;
  final int maxAgeSeconds;
  final PurpleWebResponseContextExtensionData webResponseContextExtensionData;

  factory ResponseResponseContext.fromRawJson(String str) =>
      ResponseResponseContext.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ResponseResponseContext.fromJson(Map<String, dynamic> json) =>
      ResponseResponseContext(
        serviceTrackingParams: json["serviceTrackingParams"] == null
            ? null
            : List<ServiceTrackingParam>.from(json["serviceTrackingParams"]
                .map((x) => ServiceTrackingParam.fromJson(x))),
        maxAgeSeconds:
            json["maxAgeSeconds"] == null ? null : json["maxAgeSeconds"],
        webResponseContextExtensionData:
            json["webResponseContextExtensionData"] == null
                ? null
                : PurpleWebResponseContextExtensionData.fromJson(
                    json["webResponseContextExtensionData"]),
      );

  Map<String, dynamic> toJson() => {
        "serviceTrackingParams": serviceTrackingParams == null
            ? null
            : List<dynamic>.from(serviceTrackingParams.map((x) => x.toJson())),
        "maxAgeSeconds": maxAgeSeconds == null ? null : maxAgeSeconds,
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

class PurpleWebResponseContextExtensionData {
  PurpleWebResponseContextExtensionData({
    this.ytConfigData,
    this.hasDecorated,
  });

  final PurpleYtConfigData ytConfigData;
  final bool hasDecorated;

  factory PurpleWebResponseContextExtensionData.fromRawJson(String str) =>
      PurpleWebResponseContextExtensionData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleWebResponseContextExtensionData.fromJson(
          Map<String, dynamic> json) =>
      PurpleWebResponseContextExtensionData(
        ytConfigData: json["ytConfigData"] == null
            ? null
            : PurpleYtConfigData.fromJson(json["ytConfigData"]),
        hasDecorated:
            json["hasDecorated"] == null ? null : json["hasDecorated"],
      );

  Map<String, dynamic> toJson() => {
        "ytConfigData": ytConfigData == null ? null : ytConfigData.toJson(),
        "hasDecorated": hasDecorated == null ? null : hasDecorated,
      };
}

class PurpleYtConfigData {
  PurpleYtConfigData({
    this.csn,
    this.visitorData,
  });

  final String csn;
  final String visitorData;

  factory PurpleYtConfigData.fromRawJson(String str) =>
      PurpleYtConfigData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleYtConfigData.fromJson(Map<String, dynamic> json) =>
      PurpleYtConfigData(
        csn: json["csn"] == null ? null : json["csn"],
        visitorData: json["visitorData"] == null ? null : json["visitorData"],
      );

  Map<String, dynamic> toJson() => {
        "csn": csn == null ? null : csn,
        "visitorData": visitorData == null ? null : visitorData,
      };
}

class ChannelUploadPageIdResponseContext {
  ChannelUploadPageIdResponseContext({
    this.serviceTrackingParams,
    this.maxAgeSeconds,
    this.webResponseContextExtensionData,
  });

  final List<ServiceTrackingParam> serviceTrackingParams;
  final int maxAgeSeconds;
  final FluffyWebResponseContextExtensionData webResponseContextExtensionData;

  factory ChannelUploadPageIdResponseContext.fromRawJson(String str) =>
      ChannelUploadPageIdResponseContext.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChannelUploadPageIdResponseContext.fromJson(
          Map<String, dynamic> json) =>
      ChannelUploadPageIdResponseContext(
        serviceTrackingParams: json["serviceTrackingParams"] == null
            ? null
            : List<ServiceTrackingParam>.from(json["serviceTrackingParams"]
                .map((x) => ServiceTrackingParam.fromJson(x))),
        maxAgeSeconds:
            json["maxAgeSeconds"] == null ? null : json["maxAgeSeconds"],
        webResponseContextExtensionData:
            json["webResponseContextExtensionData"] == null
                ? null
                : FluffyWebResponseContextExtensionData.fromJson(
                    json["webResponseContextExtensionData"]),
      );

  Map<String, dynamic> toJson() => {
        "serviceTrackingParams": serviceTrackingParams == null
            ? null
            : List<dynamic>.from(serviceTrackingParams.map((x) => x.toJson())),
        "maxAgeSeconds": maxAgeSeconds == null ? null : maxAgeSeconds,
        "webResponseContextExtensionData":
            webResponseContextExtensionData == null
                ? null
                : webResponseContextExtensionData.toJson(),
      };
}

class FluffyWebResponseContextExtensionData {
  FluffyWebResponseContextExtensionData({
    this.ytConfigData,
    this.hasDecorated,
  });

  final FluffyYtConfigData ytConfigData;
  final bool hasDecorated;

  factory FluffyWebResponseContextExtensionData.fromRawJson(String str) =>
      FluffyWebResponseContextExtensionData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyWebResponseContextExtensionData.fromJson(
          Map<String, dynamic> json) =>
      FluffyWebResponseContextExtensionData(
        ytConfigData: json["ytConfigData"] == null
            ? null
            : FluffyYtConfigData.fromJson(json["ytConfigData"]),
        hasDecorated:
            json["hasDecorated"] == null ? null : json["hasDecorated"],
      );

  Map<String, dynamic> toJson() => {
        "ytConfigData": ytConfigData == null ? null : ytConfigData.toJson(),
        "hasDecorated": hasDecorated == null ? null : hasDecorated,
      };
}

class FluffyYtConfigData {
  FluffyYtConfigData({
    this.csn,
    this.visitorData,
    this.rootVisualElementType,
  });

  final String csn;
  final String visitorData;
  final int rootVisualElementType;

  factory FluffyYtConfigData.fromRawJson(String str) =>
      FluffyYtConfigData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyYtConfigData.fromJson(Map<String, dynamic> json) =>
      FluffyYtConfigData(
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

class Timing {
  Timing({
    this.info,
  });

  final Info info;

  factory Timing.fromRawJson(String str) => Timing.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Timing.fromJson(Map<String, dynamic> json) => Timing(
        info: json["info"] == null ? null : Info.fromJson(json["info"]),
      );

  Map<String, dynamic> toJson() => {
        "info": info == null ? null : info.toJson(),
      };
}

class Info {
  Info({
    this.st,
  });

  final int st;

  factory Info.fromRawJson(String str) => Info.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Info.fromJson(Map<String, dynamic> json) => Info(
        st: json["st"] == null ? null : json["st"],
      );

  Map<String, dynamic> toJson() => {
        "st": st == null ? null : st,
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
  final String countryCode;
  final List<TopbarButton> topbarButtons;
  final HotkeyDialog hotkeyDialog;
  final BackButtonClass backButton;
  final BackButtonClass forwardButton;
  final A11YSkipNavigationButton a11YSkipNavigationButton;

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
            : A11YSkipNavigationButton.fromJson(
                json["a11ySkipNavigationButton"]),
      );

  Map<String, dynamic> toJson() => {
        "logo": logo == null ? null : logo.toJson(),
        "searchbox": searchbox == null ? null : searchbox.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
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

class A11YSkipNavigationButton {
  A11YSkipNavigationButton({
    this.buttonRenderer,
  });

  final A11YSkipNavigationButtonButtonRenderer buttonRenderer;

  factory A11YSkipNavigationButton.fromRawJson(String str) =>
      A11YSkipNavigationButton.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory A11YSkipNavigationButton.fromJson(Map<String, dynamic> json) =>
      A11YSkipNavigationButton(
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
    this.trackingParams,
    this.command,
  });

  final String style;
  final String size;
  final bool isDisabled;
  final Text text;
  final String trackingParams;
  final Command command;

  factory A11YSkipNavigationButtonButtonRenderer.fromRawJson(String str) =>
      A11YSkipNavigationButtonButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory A11YSkipNavigationButtonButtonRenderer.fromJson(
          Map<String, dynamic> json) =>
      A11YSkipNavigationButtonButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        text: json["text"] == null ? null : Text.fromJson(json["text"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        command:
            json["command"] == null ? null : Command.fromJson(json["command"]),
      );

  Map<String, dynamic> toJson() => {
        "style": style == null ? null : style,
        "size": size == null ? null : size,
        "isDisabled": isDisabled == null ? null : isDisabled,
        "text": text == null ? null : text.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "command": command == null ? null : command.toJson(),
      };
}

class Command {
  Command({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signalServiceEndpoint,
  });

  final String clickTrackingParams;
  final ServiceEndpointCommandMetadata commandMetadata;
  final CommandSignalServiceEndpoint signalServiceEndpoint;

  factory Command.fromRawJson(String str) => Command.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Command.fromJson(Map<String, dynamic> json) => Command(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : ServiceEndpointCommandMetadata.fromJson(json["commandMetadata"]),
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

class CommandSignalServiceEndpoint {
  CommandSignalServiceEndpoint({
    this.signal,
    this.actions,
  });

  final Signal signal;
  final List<StickyAction> actions;

  factory CommandSignalServiceEndpoint.fromRawJson(String str) =>
      CommandSignalServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CommandSignalServiceEndpoint.fromJson(Map<String, dynamic> json) =>
      CommandSignalServiceEndpoint(
        signal:
            json["signal"] == null ? null : signalValues.map[json["signal"]],
        actions: json["actions"] == null
            ? null
            : List<StickyAction>.from(
                json["actions"].map((x) => StickyAction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "signal": signal == null ? null : signalValues.reverse[signal],
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toJson())),
      };
}

class StickyAction {
  StickyAction({
    this.signalAction,
  });

  final SignalAction signalAction;

  factory StickyAction.fromRawJson(String str) =>
      StickyAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StickyAction.fromJson(Map<String, dynamic> json) => StickyAction(
        signalAction: json["signalAction"] == null
            ? null
            : SignalAction.fromJson(json["signalAction"]),
      );

  Map<String, dynamic> toJson() => {
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

  final Text title;
  final List<HotkeyDialogRendererSection> sections;
  final DismissButtonClass dismissButton;
  final String trackingParams;

  factory HotkeyDialogRenderer.fromRawJson(String str) =>
      HotkeyDialogRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HotkeyDialogRenderer.fromJson(Map<String, dynamic> json) =>
      HotkeyDialogRenderer(
        title: json["title"] == null ? null : Text.fromJson(json["title"]),
        sections: json["sections"] == null
            ? null
            : List<HotkeyDialogRendererSection>.from(json["sections"]
                .map((x) => HotkeyDialogRendererSection.fromJson(x))),
        dismissButton: json["dismissButton"] == null
            ? null
            : DismissButtonClass.fromJson(json["dismissButton"]),
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

  final Text title;
  final List<Option> options;

  factory HotkeyDialogSectionRenderer.fromRawJson(String str) =>
      HotkeyDialogSectionRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HotkeyDialogSectionRenderer.fromJson(Map<String, dynamic> json) =>
      HotkeyDialogSectionRenderer(
        title: json["title"] == null ? null : Text.fromJson(json["title"]),
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

  final Text label;
  final String hotkey;
  final AccessibilityData hotkeyAccessibilityLabel;

  factory HotkeyDialogSectionOptionRenderer.fromRawJson(String str) =>
      HotkeyDialogSectionOptionRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HotkeyDialogSectionOptionRenderer.fromJson(
          Map<String, dynamic> json) =>
      HotkeyDialogSectionOptionRenderer(
        label: json["label"] == null ? null : Text.fromJson(json["label"]),
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
  final Text tooltipText;
  final TopbarLogoRendererEndpoint endpoint;
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
            : Text.fromJson(json["tooltipText"]),
        endpoint: json["endpoint"] == null
            ? null
            : TopbarLogoRendererEndpoint.fromJson(json["endpoint"]),
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

class TopbarLogoRendererEndpoint {
  TopbarLogoRendererEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.browseEndpoint,
  });

  final String clickTrackingParams;
  final NextEndpointCommandMetadata commandMetadata;
  final FluffyBrowseEndpoint browseEndpoint;

  factory TopbarLogoRendererEndpoint.fromRawJson(String str) =>
      TopbarLogoRendererEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TopbarLogoRendererEndpoint.fromJson(Map<String, dynamic> json) =>
      TopbarLogoRendererEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : NextEndpointCommandMetadata.fromJson(json["commandMetadata"]),
        browseEndpoint: json["browseEndpoint"] == null
            ? null
            : FluffyBrowseEndpoint.fromJson(json["browseEndpoint"]),
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

class FluffyBrowseEndpoint {
  FluffyBrowseEndpoint({
    this.browseId,
  });

  final String browseId;

  factory FluffyBrowseEndpoint.fromRawJson(String str) =>
      FluffyBrowseEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyBrowseEndpoint.fromJson(Map<String, dynamic> json) =>
      FluffyBrowseEndpoint(
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

  final IconImage icon;
  final Text placeholderText;
  final Config config;
  final String trackingParams;
  final FusionSearchboxRendererSearchEndpoint searchEndpoint;

  factory FusionSearchboxRenderer.fromRawJson(String str) =>
      FusionSearchboxRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FusionSearchboxRenderer.fromJson(Map<String, dynamic> json) =>
      FusionSearchboxRenderer(
        icon: json["icon"] == null ? null : IconImage.fromJson(json["icon"]),
        placeholderText: json["placeholderText"] == null
            ? null
            : Text.fromJson(json["placeholderText"]),
        config: json["config"] == null ? null : Config.fromJson(json["config"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        searchEndpoint: json["searchEndpoint"] == null
            ? null
            : FusionSearchboxRendererSearchEndpoint.fromJson(
                json["searchEndpoint"]),
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

class FusionSearchboxRendererSearchEndpoint {
  FusionSearchboxRendererSearchEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.searchEndpoint,
  });

  final String clickTrackingParams;
  final NextEndpointCommandMetadata commandMetadata;
  final SearchEndpointSearchEndpoint searchEndpoint;

  factory FusionSearchboxRendererSearchEndpoint.fromRawJson(String str) =>
      FusionSearchboxRendererSearchEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FusionSearchboxRendererSearchEndpoint.fromJson(
          Map<String, dynamic> json) =>
      FusionSearchboxRendererSearchEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : NextEndpointCommandMetadata.fromJson(json["commandMetadata"]),
        searchEndpoint: json["searchEndpoint"] == null
            ? null
            : SearchEndpointSearchEndpoint.fromJson(json["searchEndpoint"]),
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

class SearchEndpointSearchEndpoint {
  SearchEndpointSearchEndpoint({
    this.query,
  });

  final String query;

  factory SearchEndpointSearchEndpoint.fromRawJson(String str) =>
      SearchEndpointSearchEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SearchEndpointSearchEndpoint.fromJson(Map<String, dynamic> json) =>
      SearchEndpointSearchEndpoint(
        query: json["query"] == null ? null : json["query"],
      );

  Map<String, dynamic> toJson() => {
        "query": query == null ? null : query,
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
    this.isDisabled,
    this.text,
    this.icon,
    this.navigationEndpoint,
    this.trackingParams,
    this.targetId,
  });

  final String style;
  final String size;
  final bool isDisabled;
  final SubscriberCountText text;
  final IconImage icon;
  final IndecentNavigationEndpoint navigationEndpoint;
  final String trackingParams;
  final String targetId;

  factory TopbarButtonButtonRenderer.fromRawJson(String str) =>
      TopbarButtonButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TopbarButtonButtonRenderer.fromJson(Map<String, dynamic> json) =>
      TopbarButtonButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        text: json["text"] == null
            ? null
            : SubscriberCountText.fromJson(json["text"]),
        icon: json["icon"] == null ? null : IconImage.fromJson(json["icon"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : IndecentNavigationEndpoint.fromJson(json["navigationEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        targetId: json["targetId"] == null ? null : json["targetId"],
      );

  Map<String, dynamic> toJson() => {
        "style": style == null ? null : style,
        "size": size == null ? null : size,
        "isDisabled": isDisabled == null ? null : isDisabled,
        "text": text == null ? null : text.toJson(),
        "icon": icon == null ? null : icon.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "targetId": targetId == null ? null : targetId,
      };
}

class IndecentNavigationEndpoint {
  IndecentNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signInEndpoint,
  });

  final String clickTrackingParams;
  final NextEndpointCommandMetadata commandMetadata;
  final TentacledSignInEndpoint signInEndpoint;

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
            : NextEndpointCommandMetadata.fromJson(json["commandMetadata"]),
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
    this.hack,
    this.idamTag,
  });

  final bool hack;
  final String idamTag;

  factory TentacledSignInEndpoint.fromRawJson(String str) =>
      TentacledSignInEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledSignInEndpoint.fromJson(Map<String, dynamic> json) =>
      TentacledSignInEndpoint(
        hack: json["hack"] == null ? null : json["hack"],
        idamTag: json["idamTag"] == null ? null : json["idamTag"],
      );

  Map<String, dynamic> toJson() => {
        "hack": hack == null ? null : hack,
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
    this.menuRequest,
    this.targetId,
  });

  final IconImage icon;
  final TopbarMenuButtonRendererMenuRenderer menuRenderer;
  final String trackingParams;
  final AccessibilityData accessibility;
  final String tooltip;
  final String style;
  final MenuRequest menuRequest;
  final String targetId;

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
        menuRequest: json["menuRequest"] == null
            ? null
            : MenuRequest.fromJson(json["menuRequest"]),
        targetId: json["targetId"] == null ? null : json["targetId"],
      );

  Map<String, dynamic> toJson() => {
        "icon": icon == null ? null : icon.toJson(),
        "menuRenderer": menuRenderer == null ? null : menuRenderer.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "accessibility": accessibility == null ? null : accessibility.toJson(),
        "tooltip": tooltip == null ? null : tooltip,
        "style": style == null ? null : style,
        "menuRequest": menuRequest == null ? null : menuRequest.toJson(),
        "targetId": targetId == null ? null : targetId,
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

  final IconImage icon;
  final Text title;
  final CompactLinkRendererNavigationEndpoint navigationEndpoint;
  final String trackingParams;
  final String style;

  factory CompactLinkRenderer.fromRawJson(String str) =>
      CompactLinkRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CompactLinkRenderer.fromJson(Map<String, dynamic> json) =>
      CompactLinkRenderer(
        icon: json["icon"] == null ? null : IconImage.fromJson(json["icon"]),
        title: json["title"] == null ? null : Text.fromJson(json["title"]),
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
  });

  final String clickTrackingParams;
  final NextEndpointCommandMetadata commandMetadata;
  final StickySignInEndpoint signInEndpoint;
  final TentacledUrlEndpoint urlEndpoint;

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
            : NextEndpointCommandMetadata.fromJson(json["commandMetadata"]),
        signInEndpoint: json["signInEndpoint"] == null
            ? null
            : StickySignInEndpoint.fromJson(json["signInEndpoint"]),
        urlEndpoint: json["urlEndpoint"] == null
            ? null
            : TentacledUrlEndpoint.fromJson(json["urlEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "signInEndpoint":
            signInEndpoint == null ? null : signInEndpoint.toJson(),
        "urlEndpoint": urlEndpoint == null ? null : urlEndpoint.toJson(),
      };
}

class StickySignInEndpoint {
  StickySignInEndpoint({
    this.nextEndpoint,
  });

  final NextEndpoint nextEndpoint;

  factory StickySignInEndpoint.fromRawJson(String str) =>
      StickySignInEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StickySignInEndpoint.fromJson(Map<String, dynamic> json) =>
      StickySignInEndpoint(
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
  final NextEndpointCommandMetadata commandMetadata;
  final UrlEndpoint urlEndpoint;

  factory NextEndpoint.fromRawJson(String str) =>
      NextEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NextEndpoint.fromJson(Map<String, dynamic> json) => NextEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : NextEndpointCommandMetadata.fromJson(json["commandMetadata"]),
        urlEndpoint: json["urlEndpoint"] == null
            ? null
            : UrlEndpoint.fromJson(json["urlEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "urlEndpoint": urlEndpoint == null ? null : urlEndpoint.toJson(),
      };
}

class TentacledUrlEndpoint {
  TentacledUrlEndpoint({
    this.url,
    this.target,
  });

  final String url;
  final Target target;

  factory TentacledUrlEndpoint.fromRawJson(String str) =>
      TentacledUrlEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledUrlEndpoint.fromJson(Map<String, dynamic> json) =>
      TentacledUrlEndpoint(
        url: json["url"] == null ? null : json["url"],
        target:
            json["target"] == null ? null : targetValues.map[json["target"]],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "target": target == null ? null : targetValues.reverse[target],
      };
}

class MenuRequest {
  MenuRequest({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signalServiceEndpoint,
  });

  final String clickTrackingParams;
  final OnCreateListCommandCommandMetadata commandMetadata;
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
            : OnCreateListCommandCommandMetadata.fromJson(
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
    this.openPopupAction,
  });

  final OpenPopupAction openPopupAction;

  factory IndigoAction.fromRawJson(String str) =>
      IndigoAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IndigoAction.fromJson(Map<String, dynamic> json) => IndigoAction(
        openPopupAction: json["openPopupAction"] == null
            ? null
            : OpenPopupAction.fromJson(json["openPopupAction"]),
      );

  Map<String, dynamic> toJson() => {
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
