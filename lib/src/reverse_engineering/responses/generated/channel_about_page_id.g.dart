// To parse this JSON data, do
//
//     final channelAboutId = channelAboutIdFromJson(jsonString);

import 'dart:convert';

class ChannelAboutPageId {
  ChannelAboutPageId({
    this.responseContext,
    this.contents,
    this.header,
    this.metadata,
    this.trackingParams,
    this.topbar,
    this.microformat,
    this.onResponseReceivedActions,
    this.frameworkUpdates,
  });

  final ResponseContext responseContext;
  final Contents contents;
  final Header header;
  final Metadata metadata;
  final String trackingParams;
  final Topbar topbar;
  final Microformat microformat;
  final List<OnResponseReceivedAction> onResponseReceivedActions;
  final FrameworkUpdates frameworkUpdates;

  factory ChannelAboutPageId.fromRawJson(String str) =>
      ChannelAboutPageId.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChannelAboutPageId.fromJson(Map<String, dynamic> json) =>
      ChannelAboutPageId(
        responseContext: json["responseContext"] == null
            ? null
            : ResponseContext.fromJson(json["responseContext"]),
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
        onResponseReceivedActions: json["onResponseReceivedActions"] == null
            ? null
            : List<OnResponseReceivedAction>.from(
                json["onResponseReceivedActions"]
                    .map((x) => OnResponseReceivedAction.fromJson(x))),
        frameworkUpdates: json["frameworkUpdates"] == null
            ? null
            : FrameworkUpdates.fromJson(json["frameworkUpdates"]),
      );

  Map<String, dynamic> toJson() => {
        "responseContext":
            responseContext == null ? null : responseContext.toJson(),
        "contents": contents == null ? null : contents.toJson(),
        "header": header == null ? null : header.toJson(),
        "metadata": metadata == null ? null : metadata.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "topbar": topbar == null ? null : topbar.toJson(),
        "microformat": microformat == null ? null : microformat.toJson(),
        "onResponseReceivedActions": onResponseReceivedActions == null
            ? null
            : List<dynamic>.from(
                onResponseReceivedActions.map((x) => x.toJson())),
        "frameworkUpdates":
            frameworkUpdates == null ? null : frameworkUpdates.toJson(),
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

  final ExpandableTabRendererEndpoint endpoint;
  final String title;
  final bool selected;

  factory ExpandableTabRenderer.fromRawJson(String str) =>
      ExpandableTabRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ExpandableTabRenderer.fromJson(Map<String, dynamic> json) =>
      ExpandableTabRenderer(
        endpoint: json["endpoint"] == null
            ? null
            : ExpandableTabRendererEndpoint.fromJson(json["endpoint"]),
        title: json["title"] == null ? null : json["title"],
        selected: json["selected"] == null ? null : json["selected"],
      );

  Map<String, dynamic> toJson() => {
        "endpoint": endpoint == null ? null : endpoint.toJson(),
        "title": title == null ? null : title,
        "selected": selected == null ? null : selected,
      };
}

class ExpandableTabRendererEndpoint {
  ExpandableTabRendererEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.browseEndpoint,
  });

  final String clickTrackingParams;
  final EndpointCommandMetadata commandMetadata;
  final PurpleBrowseEndpoint browseEndpoint;

  factory ExpandableTabRendererEndpoint.fromRawJson(String str) =>
      ExpandableTabRendererEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ExpandableTabRendererEndpoint.fromJson(Map<String, dynamic> json) =>
      ExpandableTabRendererEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : EndpointCommandMetadata.fromJson(json["commandMetadata"]),
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
    this.params,
    this.canonicalBaseUrl,
  });

  final String browseId;
  final String params;
  final String canonicalBaseUrl;

  factory PurpleBrowseEndpoint.fromRawJson(String str) =>
      PurpleBrowseEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleBrowseEndpoint.fromJson(Map<String, dynamic> json) =>
      PurpleBrowseEndpoint(
        browseId: json["browseId"] == null ? null : json["browseId"],
        params: json["params"] == null ? null : json["params"],
        canonicalBaseUrl:
            json["canonicalBaseUrl"] == null ? null : json["canonicalBaseUrl"],
      );

  Map<String, dynamic> toJson() => {
        "browseId": browseId == null ? null : browseId,
        "params": params == null ? null : params,
        "canonicalBaseUrl": canonicalBaseUrl == null ? null : canonicalBaseUrl,
      };
}

class EndpointCommandMetadata {
  EndpointCommandMetadata({
    this.webCommandMetadata,
  });

  final PurpleWebCommandMetadata webCommandMetadata;

  factory EndpointCommandMetadata.fromRawJson(String str) =>
      EndpointCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EndpointCommandMetadata.fromJson(Map<String, dynamic> json) =>
      EndpointCommandMetadata(
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
  WEB_PAGE_TYPE_UNKNOWN,
  WEB_PAGE_TYPE_BROWSE,
  WEB_PAGE_TYPE_SEARCH
}

final webPageTypeValues = EnumValues({
  "WEB_PAGE_TYPE_BROWSE": WebPageType.WEB_PAGE_TYPE_BROWSE,
  "WEB_PAGE_TYPE_CHANNEL": WebPageType.WEB_PAGE_TYPE_CHANNEL,
  "WEB_PAGE_TYPE_SEARCH": WebPageType.WEB_PAGE_TYPE_SEARCH,
  "WEB_PAGE_TYPE_UNKNOWN": WebPageType.WEB_PAGE_TYPE_UNKNOWN
});

class TabRenderer {
  TabRenderer({
    this.endpoint,
    this.title,
    this.selected,
    this.trackingParams,
    this.content,
  });

  final ExpandableTabRendererEndpoint endpoint;
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
            : ExpandableTabRendererEndpoint.fromJson(json["endpoint"]),
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
  });

  final List<SectionListRendererContent> contents;
  final String trackingParams;

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
      );

  Map<String, dynamic> toJson() => {
        "contents": contents == null
            ? null
            : List<dynamic>.from(contents.map((x) => x.toJson())),
        "trackingParams": trackingParams == null ? null : trackingParams,
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
    this.channelAboutFullMetadataRenderer,
  });

  final ChannelAboutFullMetadataRenderer channelAboutFullMetadataRenderer;

  factory ItemSectionRendererContent.fromRawJson(String str) =>
      ItemSectionRendererContent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ItemSectionRendererContent.fromJson(Map<String, dynamic> json) =>
      ItemSectionRendererContent(
        channelAboutFullMetadataRenderer:
            json["channelAboutFullMetadataRenderer"] == null
                ? null
                : ChannelAboutFullMetadataRenderer.fromJson(
                    json["channelAboutFullMetadataRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "channelAboutFullMetadataRenderer":
            channelAboutFullMetadataRenderer == null
                ? null
                : channelAboutFullMetadataRenderer.toJson(),
      };
}

class ChannelAboutFullMetadataRenderer {
  ChannelAboutFullMetadataRenderer({
    this.description,
    this.primaryLinks,
    this.viewCountText,
    this.joinedDateText,
    this.canonicalChannelUrl,
    this.bypassBusinessEmailCaptcha,
    this.title,
    this.avatar,
    this.country,
    this.showDescription,
    this.businessEmailButton,
    this.businessEmailLabel,
    this.descriptionLabel,
    this.detailsLabel,
    this.primaryLinksLabel,
    this.statsLabel,
    this.countryLabel,
    this.actionButtons,
    this.channelId,
  });

  final SubscriberCountText description;
  final List<AryLink> primaryLinks;
  final SubscriberCountText viewCountText;
  final Text joinedDateText;
  final String canonicalChannelUrl;
  final bool bypassBusinessEmailCaptcha;
  final SubscriberCountText title;
  final BannerClass avatar;
  final SubscriberCountText country;
  final bool showDescription;
  final DismissButtonClass businessEmailButton;
  final Text businessEmailLabel;
  final Text descriptionLabel;
  final Text detailsLabel;
  final Text primaryLinksLabel;
  final Text statsLabel;
  final CountryLabel countryLabel;
  final List<ActionButtonElement> actionButtons;
  final String channelId;

  factory ChannelAboutFullMetadataRenderer.fromRawJson(String str) =>
      ChannelAboutFullMetadataRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChannelAboutFullMetadataRenderer.fromJson(
          Map<String, dynamic> json) =>
      ChannelAboutFullMetadataRenderer(
        description: json["description"] == null
            ? null
            : SubscriberCountText.fromJson(json["description"]),
        primaryLinks: json["primaryLinks"] == null
            ? null
            : List<AryLink>.from(
                json["primaryLinks"].map((x) => AryLink.fromJson(x))),
        viewCountText: json["viewCountText"] == null
            ? null
            : SubscriberCountText.fromJson(json["viewCountText"]),
        joinedDateText: json["joinedDateText"] == null
            ? null
            : Text.fromJson(json["joinedDateText"]),
        canonicalChannelUrl: json["canonicalChannelUrl"] == null
            ? null
            : json["canonicalChannelUrl"],
        bypassBusinessEmailCaptcha: json["bypassBusinessEmailCaptcha"] == null
            ? null
            : json["bypassBusinessEmailCaptcha"],
        title: json["title"] == null
            ? null
            : SubscriberCountText.fromJson(json["title"]),
        avatar: json["avatar"] == null
            ? null
            : BannerClass.fromJson(json["avatar"]),
        country: json["country"] == null
            ? null
            : SubscriberCountText.fromJson(json["country"]),
        showDescription:
            json["showDescription"] == null ? null : json["showDescription"],
        businessEmailButton: json["businessEmailButton"] == null
            ? null
            : DismissButtonClass.fromJson(json["businessEmailButton"]),
        businessEmailLabel: json["businessEmailLabel"] == null
            ? null
            : Text.fromJson(json["businessEmailLabel"]),
        descriptionLabel: json["descriptionLabel"] == null
            ? null
            : Text.fromJson(json["descriptionLabel"]),
        detailsLabel: json["detailsLabel"] == null
            ? null
            : Text.fromJson(json["detailsLabel"]),
        primaryLinksLabel: json["primaryLinksLabel"] == null
            ? null
            : Text.fromJson(json["primaryLinksLabel"]),
        statsLabel: json["statsLabel"] == null
            ? null
            : Text.fromJson(json["statsLabel"]),
        countryLabel: json["countryLabel"] == null
            ? null
            : CountryLabel.fromJson(json["countryLabel"]),
        actionButtons: json["actionButtons"] == null
            ? null
            : List<ActionButtonElement>.from(json["actionButtons"]
                .map((x) => ActionButtonElement.fromJson(x))),
        channelId: json["channelId"] == null ? null : json["channelId"],
      );

  Map<String, dynamic> toJson() => {
        "description": description == null ? null : description.toJson(),
        "primaryLinks": primaryLinks == null
            ? null
            : List<dynamic>.from(primaryLinks.map((x) => x.toJson())),
        "viewCountText": viewCountText == null ? null : viewCountText.toJson(),
        "joinedDateText":
            joinedDateText == null ? null : joinedDateText.toJson(),
        "canonicalChannelUrl":
            canonicalChannelUrl == null ? null : canonicalChannelUrl,
        "bypassBusinessEmailCaptcha": bypassBusinessEmailCaptcha == null
            ? null
            : bypassBusinessEmailCaptcha,
        "title": title == null ? null : title.toJson(),
        "avatar": avatar == null ? null : avatar.toJson(),
        "country": country == null ? null : country.toJson(),
        "showDescription": showDescription == null ? null : showDescription,
        "businessEmailButton":
            businessEmailButton == null ? null : businessEmailButton.toJson(),
        "businessEmailLabel":
            businessEmailLabel == null ? null : businessEmailLabel.toJson(),
        "descriptionLabel":
            descriptionLabel == null ? null : descriptionLabel.toJson(),
        "detailsLabel": detailsLabel == null ? null : detailsLabel.toJson(),
        "primaryLinksLabel":
            primaryLinksLabel == null ? null : primaryLinksLabel.toJson(),
        "statsLabel": statsLabel == null ? null : statsLabel.toJson(),
        "countryLabel": countryLabel == null ? null : countryLabel.toJson(),
        "actionButtons": actionButtons == null
            ? null
            : List<dynamic>.from(actionButtons.map((x) => x.toJson())),
        "channelId": channelId == null ? null : channelId,
      };
}

class ActionButtonElement {
  ActionButtonElement({
    this.buttonRenderer,
  });

  final StateButtonRenderer buttonRenderer;

  factory ActionButtonElement.fromRawJson(String str) =>
      ActionButtonElement.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ActionButtonElement.fromJson(Map<String, dynamic> json) =>
      ActionButtonElement(
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : StateButtonRenderer.fromJson(json["buttonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toJson(),
      };
}

class StateButtonRenderer {
  StateButtonRenderer({
    this.style,
    this.size,
    this.serviceEndpoint,
    this.icon,
    this.accessibility,
    this.tooltip,
    this.trackingParams,
    this.accessibilityData,
    this.isDisabled,
  });

  final String style;
  final Size size;
  final PurpleServiceEndpoint serviceEndpoint;
  final IconImageClass icon;
  final Accessibility accessibility;
  final String tooltip;
  final String trackingParams;
  final AccessibilityData accessibilityData;
  final bool isDisabled;

  factory StateButtonRenderer.fromRawJson(String str) =>
      StateButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StateButtonRenderer.fromJson(Map<String, dynamic> json) =>
      StateButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : sizeValues.map[json["size"]],
        serviceEndpoint: json["serviceEndpoint"] == null
            ? null
            : PurpleServiceEndpoint.fromJson(json["serviceEndpoint"]),
        icon:
            json["icon"] == null ? null : IconImageClass.fromJson(json["icon"]),
        accessibility: json["accessibility"] == null
            ? null
            : Accessibility.fromJson(json["accessibility"]),
        tooltip: json["tooltip"] == null ? null : json["tooltip"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        accessibilityData: json["accessibilityData"] == null
            ? null
            : AccessibilityData.fromJson(json["accessibilityData"]),
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
      );

  Map<String, dynamic> toJson() => {
        "style": style == null ? null : style,
        "size": size == null ? null : sizeValues.reverse[size],
        "serviceEndpoint":
            serviceEndpoint == null ? null : serviceEndpoint.toJson(),
        "icon": icon == null ? null : icon.toJson(),
        "accessibility": accessibility == null ? null : accessibility.toJson(),
        "tooltip": tooltip == null ? null : tooltip,
        "trackingParams": trackingParams == null ? null : trackingParams,
        "accessibilityData":
            accessibilityData == null ? null : accessibilityData.toJson(),
        "isDisabled": isDisabled == null ? null : isDisabled,
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

class IconImageClass {
  IconImageClass({
    this.iconType,
  });

  final String iconType;

  factory IconImageClass.fromRawJson(String str) =>
      IconImageClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IconImageClass.fromJson(Map<String, dynamic> json) => IconImageClass(
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
  final DefaultServiceEndpointCommandMetadata commandMetadata;
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
            : DefaultServiceEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
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

class DefaultServiceEndpointCommandMetadata {
  DefaultServiceEndpointCommandMetadata({
    this.webCommandMetadata,
  });

  final FluffyWebCommandMetadata webCommandMetadata;

  factory DefaultServiceEndpointCommandMetadata.fromRawJson(String str) =>
      DefaultServiceEndpointCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DefaultServiceEndpointCommandMetadata.fromJson(
          Map<String, dynamic> json) =>
      DefaultServiceEndpointCommandMetadata(
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

class PurpleSignalServiceEndpoint {
  PurpleSignalServiceEndpoint({
    this.signal,
    this.actions,
  });

  final String signal;
  final List<PurpleAction> actions;

  factory PurpleSignalServiceEndpoint.fromRawJson(String str) =>
      PurpleSignalServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleSignalServiceEndpoint.fromJson(Map<String, dynamic> json) =>
      PurpleSignalServiceEndpoint(
        signal: json["signal"] == null ? null : json["signal"],
        actions: json["actions"] == null
            ? null
            : List<PurpleAction>.from(
                json["actions"].map((x) => PurpleAction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "signal": signal == null ? null : signal,
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toJson())),
      };
}

class PurpleAction {
  PurpleAction({
    this.openPopupAction,
  });

  final PurpleOpenPopupAction openPopupAction;

  factory PurpleAction.fromRawJson(String str) =>
      PurpleAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleAction.fromJson(Map<String, dynamic> json) => PurpleAction(
        openPopupAction: json["openPopupAction"] == null
            ? null
            : PurpleOpenPopupAction.fromJson(json["openPopupAction"]),
      );

  Map<String, dynamic> toJson() => {
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
    this.menuPopupRenderer,
  });

  final PurpleMenuPopupRenderer menuPopupRenderer;

  factory PurplePopup.fromRawJson(String str) =>
      PurplePopup.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurplePopup.fromJson(Map<String, dynamic> json) => PurplePopup(
        menuPopupRenderer: json["menuPopupRenderer"] == null
            ? null
            : PurpleMenuPopupRenderer.fromJson(json["menuPopupRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "menuPopupRenderer":
            menuPopupRenderer == null ? null : menuPopupRenderer.toJson(),
      };
}

class PurpleMenuPopupRenderer {
  PurpleMenuPopupRenderer({
    this.items,
  });

  final List<PurpleItem> items;

  factory PurpleMenuPopupRenderer.fromRawJson(String str) =>
      PurpleMenuPopupRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleMenuPopupRenderer.fromJson(Map<String, dynamic> json) =>
      PurpleMenuPopupRenderer(
        items: json["items"] == null
            ? null
            : List<PurpleItem>.from(
                json["items"].map((x) => PurpleItem.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "items": items == null
            ? null
            : List<dynamic>.from(items.map((x) => x.toJson())),
      };
}

class PurpleItem {
  PurpleItem({
    this.toggleMenuServiceItemRenderer,
    this.menuServiceItemRenderer,
  });

  final ToggleMenuServiceItemRenderer toggleMenuServiceItemRenderer;
  final PurpleMenuServiceItemRenderer menuServiceItemRenderer;

  factory PurpleItem.fromRawJson(String str) =>
      PurpleItem.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleItem.fromJson(Map<String, dynamic> json) => PurpleItem(
        toggleMenuServiceItemRenderer:
            json["toggleMenuServiceItemRenderer"] == null
                ? null
                : ToggleMenuServiceItemRenderer.fromJson(
                    json["toggleMenuServiceItemRenderer"]),
        menuServiceItemRenderer: json["menuServiceItemRenderer"] == null
            ? null
            : PurpleMenuServiceItemRenderer.fromJson(
                json["menuServiceItemRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "toggleMenuServiceItemRenderer": toggleMenuServiceItemRenderer == null
            ? null
            : toggleMenuServiceItemRenderer.toJson(),
        "menuServiceItemRenderer": menuServiceItemRenderer == null
            ? null
            : menuServiceItemRenderer.toJson(),
      };
}

class PurpleMenuServiceItemRenderer {
  PurpleMenuServiceItemRenderer({
    this.text,
    this.serviceEndpoint,
    this.trackingParams,
    this.command,
  });

  final Text text;
  final FluffyServiceEndpoint serviceEndpoint;
  final String trackingParams;
  final CommandElement command;

  factory PurpleMenuServiceItemRenderer.fromRawJson(String str) =>
      PurpleMenuServiceItemRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleMenuServiceItemRenderer.fromJson(Map<String, dynamic> json) =>
      PurpleMenuServiceItemRenderer(
        text: json["text"] == null ? null : Text.fromJson(json["text"]),
        serviceEndpoint: json["serviceEndpoint"] == null
            ? null
            : FluffyServiceEndpoint.fromJson(json["serviceEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        command: json["command"] == null
            ? null
            : CommandElement.fromJson(json["command"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text.toJson(),
        "serviceEndpoint":
            serviceEndpoint == null ? null : serviceEndpoint.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "command": command == null ? null : command.toJson(),
      };
}

class CommandElement {
  CommandElement({
    this.openPopupAction,
  });

  final FluffyOpenPopupAction openPopupAction;

  factory CommandElement.fromRawJson(String str) =>
      CommandElement.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CommandElement.fromJson(Map<String, dynamic> json) => CommandElement(
        openPopupAction: json["openPopupAction"] == null
            ? null
            : FluffyOpenPopupAction.fromJson(json["openPopupAction"]),
      );

  Map<String, dynamic> toJson() => {
        "openPopupAction":
            openPopupAction == null ? null : openPopupAction.toJson(),
      };
}

class FluffyOpenPopupAction {
  FluffyOpenPopupAction({
    this.popup,
    this.popupType,
    this.uniqueId,
    this.beReused,
  });

  final FluffyPopup popup;
  final String popupType;
  final String uniqueId;
  final bool beReused;

  factory FluffyOpenPopupAction.fromRawJson(String str) =>
      FluffyOpenPopupAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyOpenPopupAction.fromJson(Map<String, dynamic> json) =>
      FluffyOpenPopupAction(
        popup:
            json["popup"] == null ? null : FluffyPopup.fromJson(json["popup"]),
        popupType: json["popupType"] == null ? null : json["popupType"],
        uniqueId: json["uniqueId"] == null ? null : json["uniqueId"],
        beReused: json["beReused"] == null ? null : json["beReused"],
      );

  Map<String, dynamic> toJson() => {
        "popup": popup == null ? null : popup.toJson(),
        "popupType": popupType == null ? null : popupType,
        "uniqueId": uniqueId == null ? null : uniqueId,
        "beReused": beReused == null ? null : beReused,
      };
}

class FluffyPopup {
  FluffyPopup({
    this.multiPageMenuRenderer,
  });

  final PopupMultiPageMenuRenderer multiPageMenuRenderer;

  factory FluffyPopup.fromRawJson(String str) =>
      FluffyPopup.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyPopup.fromJson(Map<String, dynamic> json) => FluffyPopup(
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

class FluffyServiceEndpoint {
  FluffyServiceEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signalServiceEndpoint,
    this.getReportFormEndpoint,
  });

  final String clickTrackingParams;
  final OnSubscribeEndpointCommandMetadata commandMetadata;
  final DefaultServiceEndpointSignalServiceEndpoint signalServiceEndpoint;
  final Endpoint getReportFormEndpoint;

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
            : OnSubscribeEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        signalServiceEndpoint: json["signalServiceEndpoint"] == null
            ? null
            : DefaultServiceEndpointSignalServiceEndpoint.fromJson(
                json["signalServiceEndpoint"]),
        getReportFormEndpoint: json["getReportFormEndpoint"] == null
            ? null
            : Endpoint.fromJson(json["getReportFormEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "signalServiceEndpoint": signalServiceEndpoint == null
            ? null
            : signalServiceEndpoint.toJson(),
        "getReportFormEndpoint": getReportFormEndpoint == null
            ? null
            : getReportFormEndpoint.toJson(),
      };
}

class OnSubscribeEndpointCommandMetadata {
  OnSubscribeEndpointCommandMetadata({
    this.webCommandMetadata,
  });

  final TentacledWebCommandMetadata webCommandMetadata;

  factory OnSubscribeEndpointCommandMetadata.fromRawJson(String str) =>
      OnSubscribeEndpointCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OnSubscribeEndpointCommandMetadata.fromJson(
          Map<String, dynamic> json) =>
      OnSubscribeEndpointCommandMetadata(
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
  final String apiUrl;

  factory TentacledWebCommandMetadata.fromRawJson(String str) =>
      TentacledWebCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledWebCommandMetadata.fromJson(Map<String, dynamic> json) =>
      TentacledWebCommandMetadata(
        url: json["url"] == null ? null : urlValues.map[json["url"]],
        sendPost: json["sendPost"] == null ? null : json["sendPost"],
        apiUrl: json["apiUrl"] == null ? null : json["apiUrl"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : urlValues.reverse[url],
        "sendPost": sendPost == null ? null : sendPost,
        "apiUrl": apiUrl == null ? null : apiUrl,
      };
}

class Endpoint {
  Endpoint({
    this.params,
  });

  final String params;

  factory Endpoint.fromRawJson(String str) =>
      Endpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Endpoint.fromJson(Map<String, dynamic> json) => Endpoint(
        params: json["params"] == null ? null : json["params"],
      );

  Map<String, dynamic> toJson() => {
        "params": params == null ? null : params,
      };
}

class DefaultServiceEndpointSignalServiceEndpoint {
  DefaultServiceEndpointSignalServiceEndpoint({
    this.signal,
    this.actions,
  });

  final String signal;
  final List<FluffyAction> actions;

  factory DefaultServiceEndpointSignalServiceEndpoint.fromRawJson(String str) =>
      DefaultServiceEndpointSignalServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DefaultServiceEndpointSignalServiceEndpoint.fromJson(
          Map<String, dynamic> json) =>
      DefaultServiceEndpointSignalServiceEndpoint(
        signal: json["signal"] == null ? null : json["signal"],
        actions: json["actions"] == null
            ? null
            : List<FluffyAction>.from(
                json["actions"].map((x) => FluffyAction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "signal": signal == null ? null : signal,
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toJson())),
      };
}

class FluffyAction {
  FluffyAction({
    this.openPopupAction,
  });

  final TentacledOpenPopupAction openPopupAction;

  factory FluffyAction.fromRawJson(String str) =>
      FluffyAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyAction.fromJson(Map<String, dynamic> json) => FluffyAction(
        openPopupAction: json["openPopupAction"] == null
            ? null
            : TentacledOpenPopupAction.fromJson(json["openPopupAction"]),
      );

  Map<String, dynamic> toJson() => {
        "openPopupAction":
            openPopupAction == null ? null : openPopupAction.toJson(),
      };
}

class TentacledOpenPopupAction {
  TentacledOpenPopupAction({
    this.popup,
    this.popupType,
  });

  final TentacledPopup popup;
  final String popupType;

  factory TentacledOpenPopupAction.fromRawJson(String str) =>
      TentacledOpenPopupAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledOpenPopupAction.fromJson(Map<String, dynamic> json) =>
      TentacledOpenPopupAction(
        popup: json["popup"] == null
            ? null
            : TentacledPopup.fromJson(json["popup"]),
        popupType: json["popupType"] == null ? null : json["popupType"],
      );

  Map<String, dynamic> toJson() => {
        "popup": popup == null ? null : popup.toJson(),
        "popupType": popupType == null ? null : popupType,
      };
}

class TentacledPopup {
  TentacledPopup({
    this.confirmDialogRenderer,
  });

  final PurpleConfirmDialogRenderer confirmDialogRenderer;

  factory TentacledPopup.fromRawJson(String str) =>
      TentacledPopup.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledPopup.fromJson(Map<String, dynamic> json) => TentacledPopup(
        confirmDialogRenderer: json["confirmDialogRenderer"] == null
            ? null
            : PurpleConfirmDialogRenderer.fromJson(
                json["confirmDialogRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "confirmDialogRenderer": confirmDialogRenderer == null
            ? null
            : confirmDialogRenderer.toJson(),
      };
}

class PurpleConfirmDialogRenderer {
  PurpleConfirmDialogRenderer({
    this.title,
    this.trackingParams,
    this.dialogMessages,
    this.confirmButton,
    this.cancelButton,
    this.primaryIsCancel,
  });

  final Text title;
  final String trackingParams;
  final List<Text> dialogMessages;
  final CancelButtonClass confirmButton;
  final CancelButtonClass cancelButton;
  final bool primaryIsCancel;

  factory PurpleConfirmDialogRenderer.fromRawJson(String str) =>
      PurpleConfirmDialogRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleConfirmDialogRenderer.fromJson(Map<String, dynamic> json) =>
      PurpleConfirmDialogRenderer(
        title: json["title"] == null ? null : Text.fromJson(json["title"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        dialogMessages: json["dialogMessages"] == null
            ? null
            : List<Text>.from(
                json["dialogMessages"].map((x) => Text.fromJson(x))),
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
    this.text,
    this.accessibility,
    this.trackingParams,
    this.accessibilityData,
    this.serviceEndpoint,
    this.isDisabled,
  });

  final Style style;
  final Size size;
  final Text text;
  final Accessibility accessibility;
  final String trackingParams;
  final AccessibilityData accessibilityData;
  final TentacledServiceEndpoint serviceEndpoint;
  final bool isDisabled;

  factory CancelButtonButtonRenderer.fromRawJson(String str) =>
      CancelButtonButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CancelButtonButtonRenderer.fromJson(Map<String, dynamic> json) =>
      CancelButtonButtonRenderer(
        style: json["style"] == null ? null : styleValues.map[json["style"]],
        size: json["size"] == null ? null : sizeValues.map[json["size"]],
        text: json["text"] == null ? null : Text.fromJson(json["text"]),
        accessibility: json["accessibility"] == null
            ? null
            : Accessibility.fromJson(json["accessibility"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        accessibilityData: json["accessibilityData"] == null
            ? null
            : AccessibilityData.fromJson(json["accessibilityData"]),
        serviceEndpoint: json["serviceEndpoint"] == null
            ? null
            : TentacledServiceEndpoint.fromJson(json["serviceEndpoint"]),
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
      );

  Map<String, dynamic> toJson() => {
        "style": style == null ? null : styleValues.reverse[style],
        "size": size == null ? null : sizeValues.reverse[size],
        "text": text == null ? null : text.toJson(),
        "accessibility": accessibility == null ? null : accessibility.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "accessibilityData":
            accessibilityData == null ? null : accessibilityData.toJson(),
        "serviceEndpoint":
            serviceEndpoint == null ? null : serviceEndpoint.toJson(),
        "isDisabled": isDisabled == null ? null : isDisabled,
      };
}

class TentacledServiceEndpoint {
  TentacledServiceEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.flagEndpoint,
    this.unsubscribeEndpoint,
  });

  final String clickTrackingParams;
  final OnSubscribeEndpointCommandMetadata commandMetadata;
  final FlagEndpoint flagEndpoint;
  final SubscribeEndpoint unsubscribeEndpoint;

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
            : OnSubscribeEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        flagEndpoint: json["flagEndpoint"] == null
            ? null
            : FlagEndpoint.fromJson(json["flagEndpoint"]),
        unsubscribeEndpoint: json["unsubscribeEndpoint"] == null
            ? null
            : SubscribeEndpoint.fromJson(json["unsubscribeEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "flagEndpoint": flagEndpoint == null ? null : flagEndpoint.toJson(),
        "unsubscribeEndpoint":
            unsubscribeEndpoint == null ? null : unsubscribeEndpoint.toJson(),
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

class SubscribeEndpoint {
  SubscribeEndpoint({
    this.channelIds,
    this.params,
  });

  final List<String> channelIds;
  final String params;

  factory SubscribeEndpoint.fromRawJson(String str) =>
      SubscribeEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SubscribeEndpoint.fromJson(Map<String, dynamic> json) =>
      SubscribeEndpoint(
        channelIds: json["channelIds"] == null
            ? null
            : List<String>.from(json["channelIds"].map((x) => x)),
        params: json["params"] == null ? null : json["params"],
      );

  Map<String, dynamic> toJson() => {
        "channelIds": channelIds == null
            ? null
            : List<dynamic>.from(channelIds.map((x) => x)),
        "params": params == null ? null : params,
      };
}

enum Size { SIZE_DEFAULT }

final sizeValues = EnumValues({"SIZE_DEFAULT": Size.SIZE_DEFAULT});

enum Style { STYLE_TEXT, STYLE_BLUE_TEXT }

final styleValues = EnumValues(
    {"STYLE_BLUE_TEXT": Style.STYLE_BLUE_TEXT, "STYLE_TEXT": Style.STYLE_TEXT});

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

class ToggleMenuServiceItemRenderer {
  ToggleMenuServiceItemRenderer({
    this.defaultText,
    this.defaultServiceEndpoint,
    this.toggledText,
    this.toggledServiceEndpoint,
    this.trackingParams,
    this.isToggled,
  });

  final Text defaultText;
  final ServiceEndpoint defaultServiceEndpoint;
  final Text toggledText;
  final ServiceEndpoint toggledServiceEndpoint;
  final String trackingParams;
  final bool isToggled;

  factory ToggleMenuServiceItemRenderer.fromRawJson(String str) =>
      ToggleMenuServiceItemRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ToggleMenuServiceItemRenderer.fromJson(Map<String, dynamic> json) =>
      ToggleMenuServiceItemRenderer(
        defaultText: json["defaultText"] == null
            ? null
            : Text.fromJson(json["defaultText"]),
        defaultServiceEndpoint: json["defaultServiceEndpoint"] == null
            ? null
            : ServiceEndpoint.fromJson(json["defaultServiceEndpoint"]),
        toggledText: json["toggledText"] == null
            ? null
            : Text.fromJson(json["toggledText"]),
        toggledServiceEndpoint: json["toggledServiceEndpoint"] == null
            ? null
            : ServiceEndpoint.fromJson(json["toggledServiceEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        isToggled: json["isToggled"] == null ? null : json["isToggled"],
      );

  Map<String, dynamic> toJson() => {
        "defaultText": defaultText == null ? null : defaultText.toJson(),
        "defaultServiceEndpoint": defaultServiceEndpoint == null
            ? null
            : defaultServiceEndpoint.toJson(),
        "toggledText": toggledText == null ? null : toggledText.toJson(),
        "toggledServiceEndpoint": toggledServiceEndpoint == null
            ? null
            : toggledServiceEndpoint.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "isToggled": isToggled == null ? null : isToggled,
      };
}

class ServiceEndpoint {
  ServiceEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signalServiceEndpoint,
  });

  final String clickTrackingParams;
  final DefaultServiceEndpointCommandMetadata commandMetadata;
  final DefaultServiceEndpointSignalServiceEndpoint signalServiceEndpoint;

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
            : DefaultServiceEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        signalServiceEndpoint: json["signalServiceEndpoint"] == null
            ? null
            : DefaultServiceEndpointSignalServiceEndpoint.fromJson(
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

class BannerClass {
  BannerClass({
    this.thumbnails,
  });

  final List<AvatarThumbnail> thumbnails;

  factory BannerClass.fromRawJson(String str) =>
      BannerClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BannerClass.fromJson(Map<String, dynamic> json) => BannerClass(
        thumbnails: json["thumbnails"] == null
            ? null
            : List<AvatarThumbnail>.from(
                json["thumbnails"].map((x) => AvatarThumbnail.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "thumbnails": thumbnails == null
            ? null
            : List<dynamic>.from(thumbnails.map((x) => x.toJson())),
      };
}

class AvatarThumbnail {
  AvatarThumbnail({
    this.url,
    this.width,
    this.height,
  });

  final String url;
  final int width;
  final int height;

  factory AvatarThumbnail.fromRawJson(String str) =>
      AvatarThumbnail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AvatarThumbnail.fromJson(Map<String, dynamic> json) =>
      AvatarThumbnail(
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
    this.trackingParams,
  });

  final String style;
  final Size size;
  final bool isDisabled;
  final Text text;
  final String trackingParams;

  factory DismissButtonButtonRenderer.fromRawJson(String str) =>
      DismissButtonButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DismissButtonButtonRenderer.fromJson(Map<String, dynamic> json) =>
      DismissButtonButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : sizeValues.map[json["size"]],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        text: json["text"] == null ? null : Text.fromJson(json["text"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "style": style == null ? null : style,
        "size": size == null ? null : sizeValues.reverse[size],
        "isDisabled": isDisabled == null ? null : isDisabled,
        "text": text == null ? null : text.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class SubscriberCountText {
  SubscriberCountText({
    this.simpleText,
  });

  final String simpleText;

  factory SubscriberCountText.fromRawJson(String str) =>
      SubscriberCountText.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SubscriberCountText.fromJson(Map<String, dynamic> json) =>
      SubscriberCountText(
        simpleText: json["simpleText"] == null ? null : json["simpleText"],
      );

  Map<String, dynamic> toJson() => {
        "simpleText": simpleText == null ? null : simpleText,
      };
}

class CountryLabel {
  CountryLabel({
    this.runs,
  });

  final List<CountryLabelRun> runs;

  factory CountryLabel.fromRawJson(String str) =>
      CountryLabel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CountryLabel.fromJson(Map<String, dynamic> json) => CountryLabel(
        runs: json["runs"] == null
            ? null
            : List<CountryLabelRun>.from(
                json["runs"].map((x) => CountryLabelRun.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "runs": runs == null
            ? null
            : List<dynamic>.from(runs.map((x) => x.toJson())),
      };
}

class CountryLabelRun {
  CountryLabelRun({
    this.text,
    this.deemphasize,
  });

  final String text;
  final bool deemphasize;

  factory CountryLabelRun.fromRawJson(String str) =>
      CountryLabelRun.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CountryLabelRun.fromJson(Map<String, dynamic> json) =>
      CountryLabelRun(
        text: json["text"] == null ? null : json["text"],
        deemphasize: json["deemphasize"] == null ? null : json["deemphasize"],
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text,
        "deemphasize": deemphasize == null ? null : deemphasize,
      };
}

class AryLink {
  AryLink({
    this.navigationEndpoint,
    this.icon,
    this.title,
  });

  final PrimaryLinkNavigationEndpoint navigationEndpoint;
  final PrimaryLinkIcon icon;
  final SubscriberCountText title;

  factory AryLink.fromRawJson(String str) => AryLink.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AryLink.fromJson(Map<String, dynamic> json) => AryLink(
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : PrimaryLinkNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
        icon: json["icon"] == null
            ? null
            : PrimaryLinkIcon.fromJson(json["icon"]),
        title: json["title"] == null
            ? null
            : SubscriberCountText.fromJson(json["title"]),
      );

  Map<String, dynamic> toJson() => {
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "icon": icon == null ? null : icon.toJson(),
        "title": title == null ? null : title.toJson(),
      };
}

class PrimaryLinkIcon {
  PrimaryLinkIcon({
    this.thumbnails,
  });

  final List<IconThumbnail> thumbnails;

  factory PrimaryLinkIcon.fromRawJson(String str) =>
      PrimaryLinkIcon.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PrimaryLinkIcon.fromJson(Map<String, dynamic> json) =>
      PrimaryLinkIcon(
        thumbnails: json["thumbnails"] == null
            ? null
            : List<IconThumbnail>.from(
                json["thumbnails"].map((x) => IconThumbnail.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "thumbnails": thumbnails == null
            ? null
            : List<dynamic>.from(thumbnails.map((x) => x.toJson())),
      };
}

class IconThumbnail {
  IconThumbnail({
    this.url,
  });

  final String url;

  factory IconThumbnail.fromRawJson(String str) =>
      IconThumbnail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IconThumbnail.fromJson(Map<String, dynamic> json) => IconThumbnail(
        url: json["url"] == null ? null : json["url"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
      };
}

class PrimaryLinkNavigationEndpoint {
  PrimaryLinkNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.urlEndpoint,
  });

  final String clickTrackingParams;
  final EndpointCommandMetadata commandMetadata;
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
            : EndpointCommandMetadata.fromJson(json["commandMetadata"]),
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

class FrameworkUpdates {
  FrameworkUpdates({
    this.entityBatchUpdate,
  });

  final EntityBatchUpdate entityBatchUpdate;

  factory FrameworkUpdates.fromRawJson(String str) =>
      FrameworkUpdates.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FrameworkUpdates.fromJson(Map<String, dynamic> json) =>
      FrameworkUpdates(
        entityBatchUpdate: json["entityBatchUpdate"] == null
            ? null
            : EntityBatchUpdate.fromJson(json["entityBatchUpdate"]),
      );

  Map<String, dynamic> toJson() => {
        "entityBatchUpdate":
            entityBatchUpdate == null ? null : entityBatchUpdate.toJson(),
      };
}

class EntityBatchUpdate {
  EntityBatchUpdate({
    this.mutations,
    this.timestamp,
  });

  final List<Mutation> mutations;
  final Timestamp timestamp;

  factory EntityBatchUpdate.fromRawJson(String str) =>
      EntityBatchUpdate.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EntityBatchUpdate.fromJson(Map<String, dynamic> json) =>
      EntityBatchUpdate(
        mutations: json["mutations"] == null
            ? null
            : List<Mutation>.from(
                json["mutations"].map((x) => Mutation.fromJson(x))),
        timestamp: json["timestamp"] == null
            ? null
            : Timestamp.fromJson(json["timestamp"]),
      );

  Map<String, dynamic> toJson() => {
        "mutations": mutations == null
            ? null
            : List<dynamic>.from(mutations.map((x) => x.toJson())),
        "timestamp": timestamp == null ? null : timestamp.toJson(),
      };
}

class Mutation {
  Mutation({
    this.entityKey,
    this.type,
    this.payload,
  });

  final String entityKey;
  final String type;
  final Payload payload;

  factory Mutation.fromRawJson(String str) =>
      Mutation.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Mutation.fromJson(Map<String, dynamic> json) => Mutation(
        entityKey: json["entityKey"] == null ? null : json["entityKey"],
        type: json["type"] == null ? null : json["type"],
        payload:
            json["payload"] == null ? null : Payload.fromJson(json["payload"]),
      );

  Map<String, dynamic> toJson() => {
        "entityKey": entityKey == null ? null : entityKey,
        "type": type == null ? null : type,
        "payload": payload == null ? null : payload.toJson(),
      };
}

class Payload {
  Payload({
    this.subscriptionStateEntity,
  });

  final SubscriptionStateEntity subscriptionStateEntity;

  factory Payload.fromRawJson(String str) => Payload.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Payload.fromJson(Map<String, dynamic> json) => Payload(
        subscriptionStateEntity: json["subscriptionStateEntity"] == null
            ? null
            : SubscriptionStateEntity.fromJson(json["subscriptionStateEntity"]),
      );

  Map<String, dynamic> toJson() => {
        "subscriptionStateEntity": subscriptionStateEntity == null
            ? null
            : subscriptionStateEntity.toJson(),
      };
}

class SubscriptionStateEntity {
  SubscriptionStateEntity({
    this.key,
    this.subscribed,
  });

  final String key;
  final bool subscribed;

  factory SubscriptionStateEntity.fromRawJson(String str) =>
      SubscriptionStateEntity.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SubscriptionStateEntity.fromJson(Map<String, dynamic> json) =>
      SubscriptionStateEntity(
        key: json["key"] == null ? null : json["key"],
        subscribed: json["subscribed"] == null ? null : json["subscribed"],
      );

  Map<String, dynamic> toJson() => {
        "key": key == null ? null : key,
        "subscribed": subscribed == null ? null : subscribed,
      };
}

class Timestamp {
  Timestamp({
    this.seconds,
    this.nanos,
  });

  final String seconds;
  final int nanos;

  factory Timestamp.fromRawJson(String str) =>
      Timestamp.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Timestamp.fromJson(Map<String, dynamic> json) => Timestamp(
        seconds: json["seconds"] == null ? null : json["seconds"],
        nanos: json["nanos"] == null ? null : json["nanos"],
      );

  Map<String, dynamic> toJson() => {
        "seconds": seconds == null ? null : seconds,
        "nanos": nanos == null ? null : nanos,
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
    this.sponsorButton,
  });

  final String channelId;
  final String title;
  final C4TabbedHeaderRendererNavigationEndpoint navigationEndpoint;
  final BannerClass avatar;
  final BannerClass banner;
  final List<Badge> badges;
  final HeaderLinks headerLinks;
  final SubscribeButton subscribeButton;
  final SubscriberCountText subscriberCountText;
  final BannerClass tvBanner;
  final BannerClass mobileBanner;
  final String trackingParams;
  final SponsorButton sponsorButton;

  factory C4TabbedHeaderRenderer.fromRawJson(String str) =>
      C4TabbedHeaderRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory C4TabbedHeaderRenderer.fromJson(Map<String, dynamic> json) =>
      C4TabbedHeaderRenderer(
        channelId: json["channelId"] == null ? null : json["channelId"],
        title: json["title"] == null ? null : json["title"],
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : C4TabbedHeaderRendererNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
        avatar: json["avatar"] == null
            ? null
            : BannerClass.fromJson(json["avatar"]),
        banner: json["banner"] == null
            ? null
            : BannerClass.fromJson(json["banner"]),
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
        tvBanner: json["tvBanner"] == null
            ? null
            : BannerClass.fromJson(json["tvBanner"]),
        mobileBanner: json["mobileBanner"] == null
            ? null
            : BannerClass.fromJson(json["mobileBanner"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        sponsorButton: json["sponsorButton"] == null
            ? null
            : SponsorButton.fromJson(json["sponsorButton"]),
      );

  Map<String, dynamic> toJson() => {
        "channelId": channelId == null ? null : channelId,
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
        "sponsorButton": sponsorButton == null ? null : sponsorButton.toJson(),
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

  final IconImageClass icon;
  final String style;
  final String tooltip;
  final String trackingParams;

  factory MetadataBadgeRenderer.fromRawJson(String str) =>
      MetadataBadgeRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MetadataBadgeRenderer.fromJson(Map<String, dynamic> json) =>
      MetadataBadgeRenderer(
        icon:
            json["icon"] == null ? null : IconImageClass.fromJson(json["icon"]),
        style: json["style"] == null ? null : json["style"],
        tooltip: json["tooltip"] == null ? null : json["tooltip"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "icon": icon == null ? null : icon.toJson(),
        "style": style == null ? null : style,
        "tooltip": tooltip == null ? null : tooltip,
        "trackingParams": trackingParams == null ? null : trackingParams,
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
    this.primaryLinks,
    this.secondaryLinks,
  });

  final List<AryLink> primaryLinks;
  final List<AryLink> secondaryLinks;

  factory ChannelHeaderLinksRenderer.fromRawJson(String str) =>
      ChannelHeaderLinksRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChannelHeaderLinksRenderer.fromJson(Map<String, dynamic> json) =>
      ChannelHeaderLinksRenderer(
        primaryLinks: json["primaryLinks"] == null
            ? null
            : List<AryLink>.from(
                json["primaryLinks"].map((x) => AryLink.fromJson(x))),
        secondaryLinks: json["secondaryLinks"] == null
            ? null
            : List<AryLink>.from(
                json["secondaryLinks"].map((x) => AryLink.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "primaryLinks": primaryLinks == null
            ? null
            : List<dynamic>.from(primaryLinks.map((x) => x.toJson())),
        "secondaryLinks": secondaryLinks == null
            ? null
            : List<dynamic>.from(secondaryLinks.map((x) => x.toJson())),
      };
}

class C4TabbedHeaderRendererNavigationEndpoint {
  C4TabbedHeaderRendererNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.browseEndpoint,
  });

  final String clickTrackingParams;
  final EndpointCommandMetadata commandMetadata;
  final NavigationEndpointBrowseEndpoint browseEndpoint;

  factory C4TabbedHeaderRendererNavigationEndpoint.fromRawJson(String str) =>
      C4TabbedHeaderRendererNavigationEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory C4TabbedHeaderRendererNavigationEndpoint.fromJson(
          Map<String, dynamic> json) =>
      C4TabbedHeaderRendererNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : EndpointCommandMetadata.fromJson(json["commandMetadata"]),
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
    this.serviceEndpoint,
    this.trackingParams,
    this.hint,
    this.accessibilityData,
    this.targetId,
  });

  final String style;
  final Size size;
  final bool isDisabled;
  final Text text;
  final StickyServiceEndpoint serviceEndpoint;
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
        size: json["size"] == null ? null : sizeValues.map[json["size"]],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        text: json["text"] == null ? null : Text.fromJson(json["text"]),
        serviceEndpoint: json["serviceEndpoint"] == null
            ? null
            : StickyServiceEndpoint.fromJson(json["serviceEndpoint"]),
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
        "size": size == null ? null : sizeValues.reverse[size],
        "isDisabled": isDisabled == null ? null : isDisabled,
        "text": text == null ? null : text.toJson(),
        "serviceEndpoint":
            serviceEndpoint == null ? null : serviceEndpoint.toJson(),
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

class StickyServiceEndpoint {
  StickyServiceEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.ypcGetOffersEndpoint,
  });

  final String clickTrackingParams;
  final OnSubscribeEndpointCommandMetadata commandMetadata;
  final Endpoint ypcGetOffersEndpoint;

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
            : OnSubscribeEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        ypcGetOffersEndpoint: json["ypcGetOffersEndpoint"] == null
            ? null
            : Endpoint.fromJson(json["ypcGetOffersEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "ypcGetOffersEndpoint":
            ypcGetOffersEndpoint == null ? null : ypcGetOffersEndpoint.toJson(),
      };
}

class SubscribeButton {
  SubscribeButton({
    this.subscribeButtonRenderer,
  });

  final SubscribeButtonRenderer subscribeButtonRenderer;

  factory SubscribeButton.fromRawJson(String str) =>
      SubscribeButton.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SubscribeButton.fromJson(Map<String, dynamic> json) =>
      SubscribeButton(
        subscribeButtonRenderer: json["subscribeButtonRenderer"] == null
            ? null
            : SubscribeButtonRenderer.fromJson(json["subscribeButtonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "subscribeButtonRenderer": subscribeButtonRenderer == null
            ? null
            : subscribeButtonRenderer.toJson(),
      };
}

class SubscribeButtonRenderer {
  SubscribeButtonRenderer({
    this.buttonText,
    this.subscribed,
    this.enabled,
    this.type,
    this.channelId,
    this.showPreferences,
    this.subscribedButtonText,
    this.unsubscribedButtonText,
    this.trackingParams,
    this.unsubscribeButtonText,
    this.subscribeAccessibility,
    this.unsubscribeAccessibility,
    this.notificationPreferenceButton,
    this.subscribedEntityKey,
    this.onSubscribeEndpoints,
    this.onUnsubscribeEndpoints,
  });

  final Text buttonText;
  final bool subscribed;
  final bool enabled;
  final String type;
  final String channelId;
  final bool showPreferences;
  final Text subscribedButtonText;
  final Text unsubscribedButtonText;
  final String trackingParams;
  final Text unsubscribeButtonText;
  final AccessibilityData subscribeAccessibility;
  final AccessibilityData unsubscribeAccessibility;
  final NotificationPreferenceButton notificationPreferenceButton;
  final String subscribedEntityKey;
  final List<OnSubscribeEndpoint> onSubscribeEndpoints;
  final List<OnUnsubscribeEndpoint> onUnsubscribeEndpoints;

  factory SubscribeButtonRenderer.fromRawJson(String str) =>
      SubscribeButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SubscribeButtonRenderer.fromJson(Map<String, dynamic> json) =>
      SubscribeButtonRenderer(
        buttonText: json["buttonText"] == null
            ? null
            : Text.fromJson(json["buttonText"]),
        subscribed: json["subscribed"] == null ? null : json["subscribed"],
        enabled: json["enabled"] == null ? null : json["enabled"],
        type: json["type"] == null ? null : json["type"],
        channelId: json["channelId"] == null ? null : json["channelId"],
        showPreferences:
            json["showPreferences"] == null ? null : json["showPreferences"],
        subscribedButtonText: json["subscribedButtonText"] == null
            ? null
            : Text.fromJson(json["subscribedButtonText"]),
        unsubscribedButtonText: json["unsubscribedButtonText"] == null
            ? null
            : Text.fromJson(json["unsubscribedButtonText"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        unsubscribeButtonText: json["unsubscribeButtonText"] == null
            ? null
            : Text.fromJson(json["unsubscribeButtonText"]),
        subscribeAccessibility: json["subscribeAccessibility"] == null
            ? null
            : AccessibilityData.fromJson(json["subscribeAccessibility"]),
        unsubscribeAccessibility: json["unsubscribeAccessibility"] == null
            ? null
            : AccessibilityData.fromJson(json["unsubscribeAccessibility"]),
        notificationPreferenceButton:
            json["notificationPreferenceButton"] == null
                ? null
                : NotificationPreferenceButton.fromJson(
                    json["notificationPreferenceButton"]),
        subscribedEntityKey: json["subscribedEntityKey"] == null
            ? null
            : json["subscribedEntityKey"],
        onSubscribeEndpoints: json["onSubscribeEndpoints"] == null
            ? null
            : List<OnSubscribeEndpoint>.from(json["onSubscribeEndpoints"]
                .map((x) => OnSubscribeEndpoint.fromJson(x))),
        onUnsubscribeEndpoints: json["onUnsubscribeEndpoints"] == null
            ? null
            : List<OnUnsubscribeEndpoint>.from(json["onUnsubscribeEndpoints"]
                .map((x) => OnUnsubscribeEndpoint.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "buttonText": buttonText == null ? null : buttonText.toJson(),
        "subscribed": subscribed == null ? null : subscribed,
        "enabled": enabled == null ? null : enabled,
        "type": type == null ? null : type,
        "channelId": channelId == null ? null : channelId,
        "showPreferences": showPreferences == null ? null : showPreferences,
        "subscribedButtonText":
            subscribedButtonText == null ? null : subscribedButtonText.toJson(),
        "unsubscribedButtonText": unsubscribedButtonText == null
            ? null
            : unsubscribedButtonText.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "unsubscribeButtonText": unsubscribeButtonText == null
            ? null
            : unsubscribeButtonText.toJson(),
        "subscribeAccessibility": subscribeAccessibility == null
            ? null
            : subscribeAccessibility.toJson(),
        "unsubscribeAccessibility": unsubscribeAccessibility == null
            ? null
            : unsubscribeAccessibility.toJson(),
        "notificationPreferenceButton": notificationPreferenceButton == null
            ? null
            : notificationPreferenceButton.toJson(),
        "subscribedEntityKey":
            subscribedEntityKey == null ? null : subscribedEntityKey,
        "onSubscribeEndpoints": onSubscribeEndpoints == null
            ? null
            : List<dynamic>.from(onSubscribeEndpoints.map((x) => x.toJson())),
        "onUnsubscribeEndpoints": onUnsubscribeEndpoints == null
            ? null
            : List<dynamic>.from(onUnsubscribeEndpoints.map((x) => x.toJson())),
      };
}

class NotificationPreferenceButton {
  NotificationPreferenceButton({
    this.subscriptionNotificationToggleButtonRenderer,
  });

  final SubscriptionNotificationToggleButtonRenderer
      subscriptionNotificationToggleButtonRenderer;

  factory NotificationPreferenceButton.fromRawJson(String str) =>
      NotificationPreferenceButton.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NotificationPreferenceButton.fromJson(Map<String, dynamic> json) =>
      NotificationPreferenceButton(
        subscriptionNotificationToggleButtonRenderer:
            json["subscriptionNotificationToggleButtonRenderer"] == null
                ? null
                : SubscriptionNotificationToggleButtonRenderer.fromJson(
                    json["subscriptionNotificationToggleButtonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "subscriptionNotificationToggleButtonRenderer":
            subscriptionNotificationToggleButtonRenderer == null
                ? null
                : subscriptionNotificationToggleButtonRenderer.toJson(),
      };
}

class SubscriptionNotificationToggleButtonRenderer {
  SubscriptionNotificationToggleButtonRenderer({
    this.states,
    this.currentStateId,
    this.trackingParams,
    this.command,
  });

  final List<SubscriptionNotificationToggleButtonRendererState> states;
  final int currentStateId;
  final String trackingParams;
  final SubscriptionNotificationToggleButtonRendererCommand command;

  factory SubscriptionNotificationToggleButtonRenderer.fromRawJson(
          String str) =>
      SubscriptionNotificationToggleButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SubscriptionNotificationToggleButtonRenderer.fromJson(
          Map<String, dynamic> json) =>
      SubscriptionNotificationToggleButtonRenderer(
        states: json["states"] == null
            ? null
            : List<SubscriptionNotificationToggleButtonRendererState>.from(
                json["states"].map((x) =>
                    SubscriptionNotificationToggleButtonRendererState.fromJson(
                        x))),
        currentStateId:
            json["currentStateId"] == null ? null : json["currentStateId"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        command: json["command"] == null
            ? null
            : SubscriptionNotificationToggleButtonRendererCommand.fromJson(
                json["command"]),
      );

  Map<String, dynamic> toJson() => {
        "states": states == null
            ? null
            : List<dynamic>.from(states.map((x) => x.toJson())),
        "currentStateId": currentStateId == null ? null : currentStateId,
        "trackingParams": trackingParams == null ? null : trackingParams,
        "command": command == null ? null : command.toJson(),
      };
}

class SubscriptionNotificationToggleButtonRendererCommand {
  SubscriptionNotificationToggleButtonRendererCommand({
    this.commandExecutorCommand,
  });

  final CommandExecutorCommand commandExecutorCommand;

  factory SubscriptionNotificationToggleButtonRendererCommand.fromRawJson(
          String str) =>
      SubscriptionNotificationToggleButtonRendererCommand.fromJson(
          json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SubscriptionNotificationToggleButtonRendererCommand.fromJson(
          Map<String, dynamic> json) =>
      SubscriptionNotificationToggleButtonRendererCommand(
        commandExecutorCommand: json["commandExecutorCommand"] == null
            ? null
            : CommandExecutorCommand.fromJson(json["commandExecutorCommand"]),
      );

  Map<String, dynamic> toJson() => {
        "commandExecutorCommand": commandExecutorCommand == null
            ? null
            : commandExecutorCommand.toJson(),
      };
}

class CommandExecutorCommand {
  CommandExecutorCommand({
    this.commands,
  });

  final List<CommandExecutorCommandCommand> commands;

  factory CommandExecutorCommand.fromRawJson(String str) =>
      CommandExecutorCommand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CommandExecutorCommand.fromJson(Map<String, dynamic> json) =>
      CommandExecutorCommand(
        commands: json["commands"] == null
            ? null
            : List<CommandExecutorCommandCommand>.from(json["commands"]
                .map((x) => CommandExecutorCommandCommand.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "commands": commands == null
            ? null
            : List<dynamic>.from(commands.map((x) => x.toJson())),
      };
}

class CommandExecutorCommandCommand {
  CommandExecutorCommandCommand({
    this.openPopupAction,
  });

  final StickyOpenPopupAction openPopupAction;

  factory CommandExecutorCommandCommand.fromRawJson(String str) =>
      CommandExecutorCommandCommand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CommandExecutorCommandCommand.fromJson(Map<String, dynamic> json) =>
      CommandExecutorCommandCommand(
        openPopupAction: json["openPopupAction"] == null
            ? null
            : StickyOpenPopupAction.fromJson(json["openPopupAction"]),
      );

  Map<String, dynamic> toJson() => {
        "openPopupAction":
            openPopupAction == null ? null : openPopupAction.toJson(),
      };
}

class StickyOpenPopupAction {
  StickyOpenPopupAction({
    this.popup,
    this.popupType,
  });

  final StickyPopup popup;
  final String popupType;

  factory StickyOpenPopupAction.fromRawJson(String str) =>
      StickyOpenPopupAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StickyOpenPopupAction.fromJson(Map<String, dynamic> json) =>
      StickyOpenPopupAction(
        popup:
            json["popup"] == null ? null : StickyPopup.fromJson(json["popup"]),
        popupType: json["popupType"] == null ? null : json["popupType"],
      );

  Map<String, dynamic> toJson() => {
        "popup": popup == null ? null : popup.toJson(),
        "popupType": popupType == null ? null : popupType,
      };
}

class StickyPopup {
  StickyPopup({
    this.menuPopupRenderer,
  });

  final FluffyMenuPopupRenderer menuPopupRenderer;

  factory StickyPopup.fromRawJson(String str) =>
      StickyPopup.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StickyPopup.fromJson(Map<String, dynamic> json) => StickyPopup(
        menuPopupRenderer: json["menuPopupRenderer"] == null
            ? null
            : FluffyMenuPopupRenderer.fromJson(json["menuPopupRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "menuPopupRenderer":
            menuPopupRenderer == null ? null : menuPopupRenderer.toJson(),
      };
}

class FluffyMenuPopupRenderer {
  FluffyMenuPopupRenderer({
    this.items,
  });

  final List<FluffyItem> items;

  factory FluffyMenuPopupRenderer.fromRawJson(String str) =>
      FluffyMenuPopupRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyMenuPopupRenderer.fromJson(Map<String, dynamic> json) =>
      FluffyMenuPopupRenderer(
        items: json["items"] == null
            ? null
            : List<FluffyItem>.from(
                json["items"].map((x) => FluffyItem.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "items": items == null
            ? null
            : List<dynamic>.from(items.map((x) => x.toJson())),
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
    this.isSelected,
  });

  final SubscriberCountText text;
  final IconImageClass icon;
  final IndigoServiceEndpoint serviceEndpoint;
  final String trackingParams;
  final bool isSelected;

  factory FluffyMenuServiceItemRenderer.fromRawJson(String str) =>
      FluffyMenuServiceItemRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyMenuServiceItemRenderer.fromJson(Map<String, dynamic> json) =>
      FluffyMenuServiceItemRenderer(
        text: json["text"] == null
            ? null
            : SubscriberCountText.fromJson(json["text"]),
        icon:
            json["icon"] == null ? null : IconImageClass.fromJson(json["icon"]),
        serviceEndpoint: json["serviceEndpoint"] == null
            ? null
            : IndigoServiceEndpoint.fromJson(json["serviceEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        isSelected: json["isSelected"] == null ? null : json["isSelected"],
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text.toJson(),
        "icon": icon == null ? null : icon.toJson(),
        "serviceEndpoint":
            serviceEndpoint == null ? null : serviceEndpoint.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "isSelected": isSelected == null ? null : isSelected,
      };
}

class IndigoServiceEndpoint {
  IndigoServiceEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.modifyChannelNotificationPreferenceEndpoint,
  });

  final String clickTrackingParams;
  final OnSubscribeEndpointCommandMetadata commandMetadata;
  final Endpoint modifyChannelNotificationPreferenceEndpoint;

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
            : OnSubscribeEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        modifyChannelNotificationPreferenceEndpoint:
            json["modifyChannelNotificationPreferenceEndpoint"] == null
                ? null
                : Endpoint.fromJson(
                    json["modifyChannelNotificationPreferenceEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "modifyChannelNotificationPreferenceEndpoint":
            modifyChannelNotificationPreferenceEndpoint == null
                ? null
                : modifyChannelNotificationPreferenceEndpoint.toJson(),
      };
}

class SubscriptionNotificationToggleButtonRendererState {
  SubscriptionNotificationToggleButtonRendererState({
    this.stateId,
    this.nextStateId,
    this.state,
  });

  final int stateId;
  final int nextStateId;
  final ActionButtonElement state;

  factory SubscriptionNotificationToggleButtonRendererState.fromRawJson(
          String str) =>
      SubscriptionNotificationToggleButtonRendererState.fromJson(
          json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SubscriptionNotificationToggleButtonRendererState.fromJson(
          Map<String, dynamic> json) =>
      SubscriptionNotificationToggleButtonRendererState(
        stateId: json["stateId"] == null ? null : json["stateId"],
        nextStateId: json["nextStateId"] == null ? null : json["nextStateId"],
        state: json["state"] == null
            ? null
            : ActionButtonElement.fromJson(json["state"]),
      );

  Map<String, dynamic> toJson() => {
        "stateId": stateId == null ? null : stateId,
        "nextStateId": nextStateId == null ? null : nextStateId,
        "state": state == null ? null : state.toJson(),
      };
}

class OnSubscribeEndpoint {
  OnSubscribeEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.subscribeEndpoint,
  });

  final String clickTrackingParams;
  final OnSubscribeEndpointCommandMetadata commandMetadata;
  final SubscribeEndpoint subscribeEndpoint;

  factory OnSubscribeEndpoint.fromRawJson(String str) =>
      OnSubscribeEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OnSubscribeEndpoint.fromJson(Map<String, dynamic> json) =>
      OnSubscribeEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : OnSubscribeEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        subscribeEndpoint: json["subscribeEndpoint"] == null
            ? null
            : SubscribeEndpoint.fromJson(json["subscribeEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "subscribeEndpoint":
            subscribeEndpoint == null ? null : subscribeEndpoint.toJson(),
      };
}

class OnUnsubscribeEndpoint {
  OnUnsubscribeEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signalServiceEndpoint,
  });

  final String clickTrackingParams;
  final DefaultServiceEndpointCommandMetadata commandMetadata;
  final OnUnsubscribeEndpointSignalServiceEndpoint signalServiceEndpoint;

  factory OnUnsubscribeEndpoint.fromRawJson(String str) =>
      OnUnsubscribeEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OnUnsubscribeEndpoint.fromJson(Map<String, dynamic> json) =>
      OnUnsubscribeEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : DefaultServiceEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        signalServiceEndpoint: json["signalServiceEndpoint"] == null
            ? null
            : OnUnsubscribeEndpointSignalServiceEndpoint.fromJson(
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

class OnUnsubscribeEndpointSignalServiceEndpoint {
  OnUnsubscribeEndpointSignalServiceEndpoint({
    this.signal,
    this.actions,
  });

  final String signal;
  final List<TentacledAction> actions;

  factory OnUnsubscribeEndpointSignalServiceEndpoint.fromRawJson(String str) =>
      OnUnsubscribeEndpointSignalServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OnUnsubscribeEndpointSignalServiceEndpoint.fromJson(
          Map<String, dynamic> json) =>
      OnUnsubscribeEndpointSignalServiceEndpoint(
        signal: json["signal"] == null ? null : json["signal"],
        actions: json["actions"] == null
            ? null
            : List<TentacledAction>.from(
                json["actions"].map((x) => TentacledAction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "signal": signal == null ? null : signal,
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toJson())),
      };
}

class TentacledAction {
  TentacledAction({
    this.openPopupAction,
  });

  final IndigoOpenPopupAction openPopupAction;

  factory TentacledAction.fromRawJson(String str) =>
      TentacledAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledAction.fromJson(Map<String, dynamic> json) =>
      TentacledAction(
        openPopupAction: json["openPopupAction"] == null
            ? null
            : IndigoOpenPopupAction.fromJson(json["openPopupAction"]),
      );

  Map<String, dynamic> toJson() => {
        "openPopupAction":
            openPopupAction == null ? null : openPopupAction.toJson(),
      };
}

class IndigoOpenPopupAction {
  IndigoOpenPopupAction({
    this.popup,
    this.popupType,
  });

  final IndigoPopup popup;
  final String popupType;

  factory IndigoOpenPopupAction.fromRawJson(String str) =>
      IndigoOpenPopupAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IndigoOpenPopupAction.fromJson(Map<String, dynamic> json) =>
      IndigoOpenPopupAction(
        popup:
            json["popup"] == null ? null : IndigoPopup.fromJson(json["popup"]),
        popupType: json["popupType"] == null ? null : json["popupType"],
      );

  Map<String, dynamic> toJson() => {
        "popup": popup == null ? null : popup.toJson(),
        "popupType": popupType == null ? null : popupType,
      };
}

class IndigoPopup {
  IndigoPopup({
    this.confirmDialogRenderer,
  });

  final FluffyConfirmDialogRenderer confirmDialogRenderer;

  factory IndigoPopup.fromRawJson(String str) =>
      IndigoPopup.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IndigoPopup.fromJson(Map<String, dynamic> json) => IndigoPopup(
        confirmDialogRenderer: json["confirmDialogRenderer"] == null
            ? null
            : FluffyConfirmDialogRenderer.fromJson(
                json["confirmDialogRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "confirmDialogRenderer": confirmDialogRenderer == null
            ? null
            : confirmDialogRenderer.toJson(),
      };
}

class FluffyConfirmDialogRenderer {
  FluffyConfirmDialogRenderer({
    this.trackingParams,
    this.dialogMessages,
    this.confirmButton,
    this.cancelButton,
    this.primaryIsCancel,
  });

  final String trackingParams;
  final List<Text> dialogMessages;
  final CancelButtonClass confirmButton;
  final CancelButtonClass cancelButton;
  final bool primaryIsCancel;

  factory FluffyConfirmDialogRenderer.fromRawJson(String str) =>
      FluffyConfirmDialogRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyConfirmDialogRenderer.fromJson(Map<String, dynamic> json) =>
      FluffyConfirmDialogRenderer(
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        dialogMessages: json["dialogMessages"] == null
            ? null
            : List<Text>.from(
                json["dialogMessages"].map((x) => Text.fromJson(x))),
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
        "trackingParams": trackingParams == null ? null : trackingParams,
        "dialogMessages": dialogMessages == null
            ? null
            : List<dynamic>.from(dialogMessages.map((x) => x.toJson())),
        "confirmButton": confirmButton == null ? null : confirmButton.toJson(),
        "cancelButton": cancelButton == null ? null : cancelButton.toJson(),
        "primaryIsCancel": primaryIsCancel == null ? null : primaryIsCancel,
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
    this.rssUrl,
    this.externalId,
    this.doubleclickTrackingUsername,
    this.keywords,
    this.ownerUrls,
    this.avatar,
    this.channelUrl,
    this.isFamilySafe,
    this.availableCountryCodes,
    this.androidDeepLink,
    this.androidAppindexingLink,
    this.iosAppindexingLink,
    this.tabPath,
    this.vanityChannelUrl,
  });

  final String title;
  final String description;
  final String rssUrl;
  final String externalId;
  final String doubleclickTrackingUsername;
  final String keywords;
  final List<String> ownerUrls;
  final BannerClass avatar;
  final String channelUrl;
  final bool isFamilySafe;
  final List<String> availableCountryCodes;
  final String androidDeepLink;
  final String androidAppindexingLink;
  final String iosAppindexingLink;
  final String tabPath;
  final String vanityChannelUrl;

  factory ChannelMetadataRenderer.fromRawJson(String str) =>
      ChannelMetadataRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChannelMetadataRenderer.fromJson(Map<String, dynamic> json) =>
      ChannelMetadataRenderer(
        title: json["title"] == null ? null : json["title"],
        description: json["description"] == null ? null : json["description"],
        rssUrl: json["rssUrl"] == null ? null : json["rssUrl"],
        externalId: json["externalId"] == null ? null : json["externalId"],
        doubleclickTrackingUsername: json["doubleclickTrackingUsername"] == null
            ? null
            : json["doubleclickTrackingUsername"],
        keywords: json["keywords"] == null ? null : json["keywords"],
        ownerUrls: json["ownerUrls"] == null
            ? null
            : List<String>.from(json["ownerUrls"].map((x) => x)),
        avatar: json["avatar"] == null
            ? null
            : BannerClass.fromJson(json["avatar"]),
        channelUrl: json["channelUrl"] == null ? null : json["channelUrl"],
        isFamilySafe:
            json["isFamilySafe"] == null ? null : json["isFamilySafe"],
        availableCountryCodes: json["availableCountryCodes"] == null
            ? null
            : List<String>.from(json["availableCountryCodes"].map((x) => x)),
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
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title,
        "description": description == null ? null : description,
        "rssUrl": rssUrl == null ? null : rssUrl,
        "externalId": externalId == null ? null : externalId,
        "doubleclickTrackingUsername": doubleclickTrackingUsername == null
            ? null
            : doubleclickTrackingUsername,
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
        "androidDeepLink": androidDeepLink == null ? null : androidDeepLink,
        "androidAppindexingLink":
            androidAppindexingLink == null ? null : androidAppindexingLink,
        "iosAppindexingLink":
            iosAppindexingLink == null ? null : iosAppindexingLink,
        "tabPath": tabPath == null ? null : tabPath,
        "vanityChannelUrl": vanityChannelUrl == null ? null : vanityChannelUrl,
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
    this.familySafe,
    this.tags,
    this.availableCountries,
    this.linkAlternates,
  });

  final String urlCanonical;
  final String title;
  final String description;
  final BannerClass thumbnail;
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
  final bool familySafe;
  final List<String> tags;
  final List<String> availableCountries;
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
            : BannerClass.fromJson(json["thumbnail"]),
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
        familySafe: json["familySafe"] == null ? null : json["familySafe"],
        tags: json["tags"] == null
            ? null
            : List<String>.from(json["tags"].map((x) => x)),
        availableCountries: json["availableCountries"] == null
            ? null
            : List<String>.from(json["availableCountries"].map((x) => x)),
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
        "familySafe": familySafe == null ? null : familySafe,
        "tags": tags == null ? null : List<dynamic>.from(tags.map((x) => x)),
        "availableCountries": availableCountries == null
            ? null
            : List<dynamic>.from(availableCountries.map((x) => x)),
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

class OnResponseReceivedAction {
  OnResponseReceivedAction({
    this.resetChannelUnreadCountCommand,
  });

  final ResetChannelUnreadCountCommand resetChannelUnreadCountCommand;

  factory OnResponseReceivedAction.fromRawJson(String str) =>
      OnResponseReceivedAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OnResponseReceivedAction.fromJson(Map<String, dynamic> json) =>
      OnResponseReceivedAction(
        resetChannelUnreadCountCommand:
            json["resetChannelUnreadCountCommand"] == null
                ? null
                : ResetChannelUnreadCountCommand.fromJson(
                    json["resetChannelUnreadCountCommand"]),
      );

  Map<String, dynamic> toJson() => {
        "resetChannelUnreadCountCommand": resetChannelUnreadCountCommand == null
            ? null
            : resetChannelUnreadCountCommand.toJson(),
      };
}

class ResetChannelUnreadCountCommand {
  ResetChannelUnreadCountCommand({
    this.channelId,
  });

  final String channelId;

  factory ResetChannelUnreadCountCommand.fromRawJson(String str) =>
      ResetChannelUnreadCountCommand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ResetChannelUnreadCountCommand.fromJson(Map<String, dynamic> json) =>
      ResetChannelUnreadCountCommand(
        channelId: json["channelId"] == null ? null : json["channelId"],
      );

  Map<String, dynamic> toJson() => {
        "channelId": channelId == null ? null : channelId,
      };
}

class ResponseContext {
  ResponseContext({
    this.serviceTrackingParams,
    this.maxAgeSeconds,
    this.webResponseContextExtensionData,
  });

  final List<ServiceTrackingParam> serviceTrackingParams;
  final int maxAgeSeconds;
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
        maxAgeSeconds:
            json["maxAgeSeconds"] == null ? null : json["maxAgeSeconds"],
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
    this.sessionIndex,
    this.rootVisualElementType,
  });

  final String csn;
  final String visitorData;
  final int sessionIndex;
  final int rootVisualElementType;

  factory YtConfigData.fromRawJson(String str) =>
      YtConfigData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory YtConfigData.fromJson(Map<String, dynamic> json) => YtConfigData(
        csn: json["csn"] == null ? null : json["csn"],
        visitorData: json["visitorData"] == null ? null : json["visitorData"],
        sessionIndex:
            json["sessionIndex"] == null ? null : json["sessionIndex"],
        rootVisualElementType: json["rootVisualElementType"] == null
            ? null
            : json["rootVisualElementType"],
      );

  Map<String, dynamic> toJson() => {
        "csn": csn == null ? null : csn,
        "visitorData": visitorData == null ? null : visitorData,
        "sessionIndex": sessionIndex == null ? null : sessionIndex,
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
  final Size size;
  final bool isDisabled;
  final Text text;
  final String trackingParams;
  final ButtonRendererCommand command;

  factory A11YSkipNavigationButtonButtonRenderer.fromRawJson(String str) =>
      A11YSkipNavigationButtonButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory A11YSkipNavigationButtonButtonRenderer.fromJson(
          Map<String, dynamic> json) =>
      A11YSkipNavigationButtonButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : sizeValues.map[json["size"]],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        text: json["text"] == null ? null : Text.fromJson(json["text"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        command: json["command"] == null
            ? null
            : ButtonRendererCommand.fromJson(json["command"]),
      );

  Map<String, dynamic> toJson() => {
        "style": style == null ? null : style,
        "size": size == null ? null : sizeValues.reverse[size],
        "isDisabled": isDisabled == null ? null : isDisabled,
        "text": text == null ? null : text.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "command": command == null ? null : command.toJson(),
      };
}

class ButtonRendererCommand {
  ButtonRendererCommand({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signalServiceEndpoint,
  });

  final String clickTrackingParams;
  final DefaultServiceEndpointCommandMetadata commandMetadata;
  final CommandSignalServiceEndpoint signalServiceEndpoint;

  factory ButtonRendererCommand.fromRawJson(String str) =>
      ButtonRendererCommand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ButtonRendererCommand.fromJson(Map<String, dynamic> json) =>
      ButtonRendererCommand(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : DefaultServiceEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
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

  final String signal;
  final List<StickyAction> actions;

  factory CommandSignalServiceEndpoint.fromRawJson(String str) =>
      CommandSignalServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CommandSignalServiceEndpoint.fromJson(Map<String, dynamic> json) =>
      CommandSignalServiceEndpoint(
        signal: json["signal"] == null ? null : json["signal"],
        actions: json["actions"] == null
            ? null
            : List<StickyAction>.from(
                json["actions"].map((x) => StickyAction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "signal": signal == null ? null : signal,
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toJson())),
      };
}

class StickyAction {
  StickyAction({
    this.signalAction,
  });

  final Signal signalAction;

  factory StickyAction.fromRawJson(String str) =>
      StickyAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StickyAction.fromJson(Map<String, dynamic> json) => StickyAction(
        signalAction: json["signalAction"] == null
            ? null
            : Signal.fromJson(json["signalAction"]),
      );

  Map<String, dynamic> toJson() => {
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
  final ButtonRendererCommand command;

  factory BackButtonButtonRenderer.fromRawJson(String str) =>
      BackButtonButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BackButtonButtonRenderer.fromJson(Map<String, dynamic> json) =>
      BackButtonButtonRenderer(
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        command: json["command"] == null
            ? null
            : ButtonRendererCommand.fromJson(json["command"]),
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

  final IconImageClass iconImage;
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
            : IconImageClass.fromJson(json["iconImage"]),
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
  final EndpointCommandMetadata commandMetadata;
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
            : EndpointCommandMetadata.fromJson(json["commandMetadata"]),
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

  final IconImageClass icon;
  final Text placeholderText;
  final Config config;
  final String trackingParams;
  final FusionSearchboxRendererSearchEndpoint searchEndpoint;

  factory FusionSearchboxRenderer.fromRawJson(String str) =>
      FusionSearchboxRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FusionSearchboxRenderer.fromJson(Map<String, dynamic> json) =>
      FusionSearchboxRenderer(
        icon:
            json["icon"] == null ? null : IconImageClass.fromJson(json["icon"]),
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
  final EndpointCommandMetadata commandMetadata;
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
            : EndpointCommandMetadata.fromJson(json["commandMetadata"]),
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
    this.notificationTopbarButtonRenderer,
  });

  final TopbarMenuButtonRenderer topbarMenuButtonRenderer;
  final NotificationTopbarButtonRenderer notificationTopbarButtonRenderer;

  factory TopbarButton.fromRawJson(String str) =>
      TopbarButton.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TopbarButton.fromJson(Map<String, dynamic> json) => TopbarButton(
        topbarMenuButtonRenderer: json["topbarMenuButtonRenderer"] == null
            ? null
            : TopbarMenuButtonRenderer.fromJson(
                json["topbarMenuButtonRenderer"]),
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
        "notificationTopbarButtonRenderer":
            notificationTopbarButtonRenderer == null
                ? null
                : notificationTopbarButtonRenderer.toJson(),
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

  final IconImageClass icon;
  final MenuRequest menuRequest;
  final String style;
  final String trackingParams;
  final AccessibilityData accessibility;
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
        icon:
            json["icon"] == null ? null : IconImageClass.fromJson(json["icon"]),
        menuRequest: json["menuRequest"] == null
            ? null
            : MenuRequest.fromJson(json["menuRequest"]),
        style: json["style"] == null ? null : json["style"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        accessibility: json["accessibility"] == null
            ? null
            : AccessibilityData.fromJson(json["accessibility"]),
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
  final OnSubscribeEndpointCommandMetadata commandMetadata;
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
            : OnSubscribeEndpointCommandMetadata.fromJson(
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
  final List<CommandElement> actions;

  factory MenuRequestSignalServiceEndpoint.fromRawJson(String str) =>
      MenuRequestSignalServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MenuRequestSignalServiceEndpoint.fromJson(
          Map<String, dynamic> json) =>
      MenuRequestSignalServiceEndpoint(
        signal: json["signal"] == null ? null : json["signal"],
        actions: json["actions"] == null
            ? null
            : List<CommandElement>.from(
                json["actions"].map((x) => CommandElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "signal": signal == null ? null : signal,
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toJson())),
      };
}

class UpdateUnseenCountEndpoint {
  UpdateUnseenCountEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signalServiceEndpoint,
  });

  final String clickTrackingParams;
  final OnSubscribeEndpointCommandMetadata commandMetadata;
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
            : OnSubscribeEndpointCommandMetadata.fromJson(
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
    this.avatar,
    this.menuRequest,
  });

  final IconImageClass icon;
  final MenuRenderer menuRenderer;
  final String trackingParams;
  final AccessibilityData accessibility;
  final String tooltip;
  final String style;
  final String targetId;
  final TopbarMenuButtonRendererAvatar avatar;
  final MenuRequest menuRequest;

  factory TopbarMenuButtonRenderer.fromRawJson(String str) =>
      TopbarMenuButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TopbarMenuButtonRenderer.fromJson(Map<String, dynamic> json) =>
      TopbarMenuButtonRenderer(
        icon:
            json["icon"] == null ? null : IconImageClass.fromJson(json["icon"]),
        menuRenderer: json["menuRenderer"] == null
            ? null
            : MenuRenderer.fromJson(json["menuRenderer"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        accessibility: json["accessibility"] == null
            ? null
            : AccessibilityData.fromJson(json["accessibility"]),
        tooltip: json["tooltip"] == null ? null : json["tooltip"],
        style: json["style"] == null ? null : json["style"],
        targetId: json["targetId"] == null ? null : json["targetId"],
        avatar: json["avatar"] == null
            ? null
            : TopbarMenuButtonRendererAvatar.fromJson(json["avatar"]),
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
        "avatar": avatar == null ? null : avatar.toJson(),
        "menuRequest": menuRequest == null ? null : menuRequest.toJson(),
      };
}

class TopbarMenuButtonRendererAvatar {
  TopbarMenuButtonRendererAvatar({
    this.thumbnails,
    this.accessibility,
    this.webThumbnailDetailsExtensionData,
  });

  final List<AvatarThumbnail> thumbnails;
  final AccessibilityData accessibility;
  final WebThumbnailDetailsExtensionData webThumbnailDetailsExtensionData;

  factory TopbarMenuButtonRendererAvatar.fromRawJson(String str) =>
      TopbarMenuButtonRendererAvatar.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TopbarMenuButtonRendererAvatar.fromJson(Map<String, dynamic> json) =>
      TopbarMenuButtonRendererAvatar(
        thumbnails: json["thumbnails"] == null
            ? null
            : List<AvatarThumbnail>.from(
                json["thumbnails"].map((x) => AvatarThumbnail.fromJson(x))),
        accessibility: json["accessibility"] == null
            ? null
            : AccessibilityData.fromJson(json["accessibility"]),
        webThumbnailDetailsExtensionData:
            json["webThumbnailDetailsExtensionData"] == null
                ? null
                : WebThumbnailDetailsExtensionData.fromJson(
                    json["webThumbnailDetailsExtensionData"]),
      );

  Map<String, dynamic> toJson() => {
        "thumbnails": thumbnails == null
            ? null
            : List<dynamic>.from(thumbnails.map((x) => x.toJson())),
        "accessibility": accessibility == null ? null : accessibility.toJson(),
        "webThumbnailDetailsExtensionData":
            webThumbnailDetailsExtensionData == null
                ? null
                : webThumbnailDetailsExtensionData.toJson(),
      };
}

class WebThumbnailDetailsExtensionData {
  WebThumbnailDetailsExtensionData({
    this.excludeFromVpl,
  });

  final bool excludeFromVpl;

  factory WebThumbnailDetailsExtensionData.fromRawJson(String str) =>
      WebThumbnailDetailsExtensionData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WebThumbnailDetailsExtensionData.fromJson(
          Map<String, dynamic> json) =>
      WebThumbnailDetailsExtensionData(
        excludeFromVpl:
            json["excludeFromVpl"] == null ? null : json["excludeFromVpl"],
      );

  Map<String, dynamic> toJson() => {
        "excludeFromVpl": excludeFromVpl == null ? null : excludeFromVpl,
      };
}

class MenuRenderer {
  MenuRenderer({
    this.multiPageMenuRenderer,
  });

  final MenuRendererMultiPageMenuRenderer multiPageMenuRenderer;

  factory MenuRenderer.fromRawJson(String str) =>
      MenuRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MenuRenderer.fromJson(Map<String, dynamic> json) => MenuRenderer(
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

  final IconImageClass icon;
  final Text title;
  final CompactLinkRendererNavigationEndpoint navigationEndpoint;
  final String trackingParams;
  final String style;

  factory CompactLinkRenderer.fromRawJson(String str) =>
      CompactLinkRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CompactLinkRenderer.fromJson(Map<String, dynamic> json) =>
      CompactLinkRenderer(
        icon:
            json["icon"] == null ? null : IconImageClass.fromJson(json["icon"]),
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
    this.uploadEndpoint,
    this.signalNavigationEndpoint,
    this.urlEndpoint,
  });

  final String clickTrackingParams;
  final EndpointCommandMetadata commandMetadata;
  final UploadEndpoint uploadEndpoint;
  final Signal signalNavigationEndpoint;
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
            : EndpointCommandMetadata.fromJson(json["commandMetadata"]),
        uploadEndpoint: json["uploadEndpoint"] == null
            ? null
            : UploadEndpoint.fromJson(json["uploadEndpoint"]),
        signalNavigationEndpoint: json["signalNavigationEndpoint"] == null
            ? null
            : Signal.fromJson(json["signalNavigationEndpoint"]),
        urlEndpoint: json["urlEndpoint"] == null
            ? null
            : FluffyUrlEndpoint.fromJson(json["urlEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "uploadEndpoint":
            uploadEndpoint == null ? null : uploadEndpoint.toJson(),
        "signalNavigationEndpoint": signalNavigationEndpoint == null
            ? null
            : signalNavigationEndpoint.toJson(),
        "urlEndpoint": urlEndpoint == null ? null : urlEndpoint.toJson(),
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
