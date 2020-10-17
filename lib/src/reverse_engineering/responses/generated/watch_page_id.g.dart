// To parse this JSON data, do
//
//     final watchPageId = watchPageIdFromJson(jsonString);

import 'dart:convert';

class WatchPageId {
  WatchPageId({
    this.responseContext,
    this.contents,
    this.currentVideoEndpoint,
    this.trackingParams,
    this.playerOverlays,
    this.onResponseReceivedEndpoints,
    this.engagementPanels,
    this.topbar,
    this.frameworkUpdates,
    this.webWatchNextResponseExtensionData,
  });

  final ResponseContext responseContext;
  final Contents contents;
  final Endpoint currentVideoEndpoint;
  final String trackingParams;
  final PlayerOverlays playerOverlays;
  final List<OnResponseReceivedEndpoint> onResponseReceivedEndpoints;
  final List<EngagementPanel> engagementPanels;
  final Topbar topbar;
  final FrameworkUpdates frameworkUpdates;
  final WebWatchNextResponseExtensionData webWatchNextResponseExtensionData;

  factory WatchPageId.fromRawJson(String str) =>
      WatchPageId.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WatchPageId.fromJson(Map<String, dynamic> json) => WatchPageId(
        responseContext: json["responseContext"] == null
            ? null
            : ResponseContext.fromJson(json["responseContext"]),
        contents: json["contents"] == null
            ? null
            : Contents.fromJson(json["contents"]),
        currentVideoEndpoint: json["currentVideoEndpoint"] == null
            ? null
            : Endpoint.fromJson(json["currentVideoEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        playerOverlays: json["playerOverlays"] == null
            ? null
            : PlayerOverlays.fromJson(json["playerOverlays"]),
        onResponseReceivedEndpoints: json["onResponseReceivedEndpoints"] == null
            ? null
            : List<OnResponseReceivedEndpoint>.from(
                json["onResponseReceivedEndpoints"]
                    .map((x) => OnResponseReceivedEndpoint.fromJson(x))),
        engagementPanels: json["engagementPanels"] == null
            ? null
            : List<EngagementPanel>.from(json["engagementPanels"]
                .map((x) => EngagementPanel.fromJson(x))),
        topbar: json["topbar"] == null ? null : Topbar.fromJson(json["topbar"]),
        frameworkUpdates: json["frameworkUpdates"] == null
            ? null
            : FrameworkUpdates.fromJson(json["frameworkUpdates"]),
        webWatchNextResponseExtensionData:
            json["webWatchNextResponseExtensionData"] == null
                ? null
                : WebWatchNextResponseExtensionData.fromJson(
                    json["webWatchNextResponseExtensionData"]),
      );

  Map<String, dynamic> toJson() => {
        "responseContext":
            responseContext == null ? null : responseContext.toJson(),
        "contents": contents == null ? null : contents.toJson(),
        "currentVideoEndpoint":
            currentVideoEndpoint == null ? null : currentVideoEndpoint.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "playerOverlays":
            playerOverlays == null ? null : playerOverlays.toJson(),
        "onResponseReceivedEndpoints": onResponseReceivedEndpoints == null
            ? null
            : List<dynamic>.from(
                onResponseReceivedEndpoints.map((x) => x.toJson())),
        "engagementPanels": engagementPanels == null
            ? null
            : List<dynamic>.from(engagementPanels.map((x) => x.toJson())),
        "topbar": topbar == null ? null : topbar.toJson(),
        "frameworkUpdates":
            frameworkUpdates == null ? null : frameworkUpdates.toJson(),
        "webWatchNextResponseExtensionData":
            webWatchNextResponseExtensionData == null
                ? null
                : webWatchNextResponseExtensionData.toJson(),
      };
}

class Contents {
  Contents({
    this.twoColumnWatchNextResults,
  });

  final TwoColumnWatchNextResults twoColumnWatchNextResults;

  factory Contents.fromRawJson(String str) =>
      Contents.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Contents.fromJson(Map<String, dynamic> json) => Contents(
        twoColumnWatchNextResults: json["twoColumnWatchNextResults"] == null
            ? null
            : TwoColumnWatchNextResults.fromJson(
                json["twoColumnWatchNextResults"]),
      );

  Map<String, dynamic> toJson() => {
        "twoColumnWatchNextResults": twoColumnWatchNextResults == null
            ? null
            : twoColumnWatchNextResults.toJson(),
      };
}

class TwoColumnWatchNextResults {
  TwoColumnWatchNextResults({
    this.results,
    this.secondaryResults,
    this.autoplay,
  });

  final TwoColumnWatchNextResultsResults results;
  final TwoColumnWatchNextResultsSecondaryResults secondaryResults;
  final TwoColumnWatchNextResultsAutoplay autoplay;

  factory TwoColumnWatchNextResults.fromRawJson(String str) =>
      TwoColumnWatchNextResults.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TwoColumnWatchNextResults.fromJson(Map<String, dynamic> json) =>
      TwoColumnWatchNextResults(
        results: json["results"] == null
            ? null
            : TwoColumnWatchNextResultsResults.fromJson(json["results"]),
        secondaryResults: json["secondaryResults"] == null
            ? null
            : TwoColumnWatchNextResultsSecondaryResults.fromJson(
                json["secondaryResults"]),
        autoplay: json["autoplay"] == null
            ? null
            : TwoColumnWatchNextResultsAutoplay.fromJson(json["autoplay"]),
      );

  Map<String, dynamic> toJson() => {
        "results": results == null ? null : results.toJson(),
        "secondaryResults":
            secondaryResults == null ? null : secondaryResults.toJson(),
        "autoplay": autoplay == null ? null : autoplay.toJson(),
      };
}

class TwoColumnWatchNextResultsAutoplay {
  TwoColumnWatchNextResultsAutoplay({
    this.autoplay,
  });

  final AutoplayAutoplay autoplay;

  factory TwoColumnWatchNextResultsAutoplay.fromRawJson(String str) =>
      TwoColumnWatchNextResultsAutoplay.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TwoColumnWatchNextResultsAutoplay.fromJson(
          Map<String, dynamic> json) =>
      TwoColumnWatchNextResultsAutoplay(
        autoplay: json["autoplay"] == null
            ? null
            : AutoplayAutoplay.fromJson(json["autoplay"]),
      );

  Map<String, dynamic> toJson() => {
        "autoplay": autoplay == null ? null : autoplay.toJson(),
      };
}

class AutoplayAutoplay {
  AutoplayAutoplay({
    this.sets,
    this.countDownSecs,
    this.trackingParams,
  });

  final List<Set> sets;
  final int countDownSecs;
  final String trackingParams;

  factory AutoplayAutoplay.fromRawJson(String str) =>
      AutoplayAutoplay.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AutoplayAutoplay.fromJson(Map<String, dynamic> json) =>
      AutoplayAutoplay(
        sets: json["sets"] == null
            ? null
            : List<Set>.from(json["sets"].map((x) => Set.fromJson(x))),
        countDownSecs:
            json["countDownSecs"] == null ? null : json["countDownSecs"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "sets": sets == null
            ? null
            : List<dynamic>.from(sets.map((x) => x.toJson())),
        "countDownSecs": countDownSecs == null ? null : countDownSecs,
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class Set {
  Set({
    this.mode,
    this.autoplayVideo,
  });

  final String mode;
  final AutoplayVideo autoplayVideo;

  factory Set.fromRawJson(String str) => Set.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Set.fromJson(Map<String, dynamic> json) => Set(
        mode: json["mode"] == null ? null : json["mode"],
        autoplayVideo: json["autoplayVideo"] == null
            ? null
            : AutoplayVideo.fromJson(json["autoplayVideo"]),
      );

  Map<String, dynamic> toJson() => {
        "mode": mode == null ? null : mode,
        "autoplayVideo": autoplayVideo == null ? null : autoplayVideo.toJson(),
      };
}

class AutoplayVideo {
  AutoplayVideo({
    this.clickTrackingParams,
    this.commandMetadata,
    this.watchEndpoint,
  });

  final String clickTrackingParams;
  final AutoplayVideoCommandMetadata commandMetadata;
  final AutoplayVideoWatchEndpoint watchEndpoint;

  factory AutoplayVideo.fromRawJson(String str) =>
      AutoplayVideo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AutoplayVideo.fromJson(Map<String, dynamic> json) => AutoplayVideo(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : AutoplayVideoCommandMetadata.fromJson(json["commandMetadata"]),
        watchEndpoint: json["watchEndpoint"] == null
            ? null
            : AutoplayVideoWatchEndpoint.fromJson(json["watchEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "watchEndpoint": watchEndpoint == null ? null : watchEndpoint.toJson(),
      };
}

class AutoplayVideoCommandMetadata {
  AutoplayVideoCommandMetadata({
    this.webCommandMetadata,
  });

  final PurpleWebCommandMetadata webCommandMetadata;

  factory AutoplayVideoCommandMetadata.fromRawJson(String str) =>
      AutoplayVideoCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AutoplayVideoCommandMetadata.fromJson(Map<String, dynamic> json) =>
      AutoplayVideoCommandMetadata(
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
    this.ignoreNavigation,
  });

  final String url;
  final WebPageType webPageType;
  final int rootVe;
  final bool ignoreNavigation;

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
        ignoreNavigation:
            json["ignoreNavigation"] == null ? null : json["ignoreNavigation"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "webPageType":
            webPageType == null ? null : webPageTypeValues.reverse[webPageType],
        "rootVe": rootVe == null ? null : rootVe,
        "ignoreNavigation": ignoreNavigation == null ? null : ignoreNavigation,
      };
}

enum WebPageType {
  WEB_PAGE_TYPE_WATCH,
  WEB_PAGE_TYPE_UNKNOWN,
  WEB_PAGE_TYPE_CHANNEL,
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

class AutoplayVideoWatchEndpoint {
  AutoplayVideoWatchEndpoint({
    this.videoId,
    this.params,
    this.playerParams,
  });

  final String videoId;
  final String params;
  final String playerParams;

  factory AutoplayVideoWatchEndpoint.fromRawJson(String str) =>
      AutoplayVideoWatchEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AutoplayVideoWatchEndpoint.fromJson(Map<String, dynamic> json) =>
      AutoplayVideoWatchEndpoint(
        videoId: json["videoId"] == null ? null : json["videoId"],
        params: json["params"] == null ? null : json["params"],
        playerParams:
            json["playerParams"] == null ? null : json["playerParams"],
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId == null ? null : videoId,
        "params": params == null ? null : params,
        "playerParams": playerParams == null ? null : playerParams,
      };
}

class TwoColumnWatchNextResultsResults {
  TwoColumnWatchNextResultsResults({
    this.results,
  });

  final ResultsResults results;

  factory TwoColumnWatchNextResultsResults.fromRawJson(String str) =>
      TwoColumnWatchNextResultsResults.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TwoColumnWatchNextResultsResults.fromJson(
          Map<String, dynamic> json) =>
      TwoColumnWatchNextResultsResults(
        results: json["results"] == null
            ? null
            : ResultsResults.fromJson(json["results"]),
      );

  Map<String, dynamic> toJson() => {
        "results": results == null ? null : results.toJson(),
      };
}

class ResultsResults {
  ResultsResults({
    this.contents,
    this.trackingParams,
  });

  final List<ResultsContent> contents;
  final String trackingParams;

  factory ResultsResults.fromRawJson(String str) =>
      ResultsResults.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ResultsResults.fromJson(Map<String, dynamic> json) => ResultsResults(
        contents: json["contents"] == null
            ? null
            : List<ResultsContent>.from(
                json["contents"].map((x) => ResultsContent.fromJson(x))),
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

class ResultsContent {
  ResultsContent({
    this.videoPrimaryInfoRenderer,
    this.videoSecondaryInfoRenderer,
    this.itemSectionRenderer,
  });

  final VideoPrimaryInfoRenderer videoPrimaryInfoRenderer;
  final VideoSecondaryInfoRenderer videoSecondaryInfoRenderer;
  final ItemSectionRenderer itemSectionRenderer;

  factory ResultsContent.fromRawJson(String str) =>
      ResultsContent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ResultsContent.fromJson(Map<String, dynamic> json) => ResultsContent(
        videoPrimaryInfoRenderer: json["videoPrimaryInfoRenderer"] == null
            ? null
            : VideoPrimaryInfoRenderer.fromJson(
                json["videoPrimaryInfoRenderer"]),
        videoSecondaryInfoRenderer: json["videoSecondaryInfoRenderer"] == null
            ? null
            : VideoSecondaryInfoRenderer.fromJson(
                json["videoSecondaryInfoRenderer"]),
        itemSectionRenderer: json["itemSectionRenderer"] == null
            ? null
            : ItemSectionRenderer.fromJson(json["itemSectionRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "videoPrimaryInfoRenderer": videoPrimaryInfoRenderer == null
            ? null
            : videoPrimaryInfoRenderer.toJson(),
        "videoSecondaryInfoRenderer": videoSecondaryInfoRenderer == null
            ? null
            : videoSecondaryInfoRenderer.toJson(),
        "itemSectionRenderer":
            itemSectionRenderer == null ? null : itemSectionRenderer.toJson(),
      };
}

class ItemSectionRenderer {
  ItemSectionRenderer({
    this.continuations,
    this.trackingParams,
    this.sectionIdentifier,
  });

  final List<Continuation> continuations;
  final String trackingParams;
  final String sectionIdentifier;

  factory ItemSectionRenderer.fromRawJson(String str) =>
      ItemSectionRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ItemSectionRenderer.fromJson(Map<String, dynamic> json) =>
      ItemSectionRenderer(
        continuations: json["continuations"] == null
            ? null
            : List<Continuation>.from(
                json["continuations"].map((x) => Continuation.fromJson(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        sectionIdentifier: json["sectionIdentifier"] == null
            ? null
            : json["sectionIdentifier"],
      );

  Map<String, dynamic> toJson() => {
        "continuations": continuations == null
            ? null
            : List<dynamic>.from(continuations.map((x) => x.toJson())),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "sectionIdentifier":
            sectionIdentifier == null ? null : sectionIdentifier,
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
    this.label,
  });

  final String continuation;
  final String clickTrackingParams;
  final TextClass label;

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
        label: json["label"] == null ? null : TextClass.fromJson(json["label"]),
      );

  Map<String, dynamic> toJson() => {
        "continuation": continuation == null ? null : continuation,
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "label": label == null ? null : label.toJson(),
      };
}

class TextClass {
  TextClass({
    this.runs,
  });

  final List<TextRun> runs;

  factory TextClass.fromRawJson(String str) =>
      TextClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TextClass.fromJson(Map<String, dynamic> json) => TextClass(
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

class VideoPrimaryInfoRenderer {
  VideoPrimaryInfoRenderer({
    this.title,
    this.viewCount,
    this.videoActions,
    this.trackingParams,
    this.sentimentBar,
    this.dateText,
  });

  final TextClass title;
  final ViewCount viewCount;
  final VideoActions videoActions;
  final String trackingParams;
  final SentimentBar sentimentBar;
  final DateText dateText;

  factory VideoPrimaryInfoRenderer.fromRawJson(String str) =>
      VideoPrimaryInfoRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VideoPrimaryInfoRenderer.fromJson(Map<String, dynamic> json) =>
      VideoPrimaryInfoRenderer(
        title: json["title"] == null ? null : TextClass.fromJson(json["title"]),
        viewCount: json["viewCount"] == null
            ? null
            : ViewCount.fromJson(json["viewCount"]),
        videoActions: json["videoActions"] == null
            ? null
            : VideoActions.fromJson(json["videoActions"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        sentimentBar: json["sentimentBar"] == null
            ? null
            : SentimentBar.fromJson(json["sentimentBar"]),
        dateText: json["dateText"] == null
            ? null
            : DateText.fromJson(json["dateText"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title.toJson(),
        "viewCount": viewCount == null ? null : viewCount.toJson(),
        "videoActions": videoActions == null ? null : videoActions.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "sentimentBar": sentimentBar == null ? null : sentimentBar.toJson(),
        "dateText": dateText == null ? null : dateText.toJson(),
      };
}

class DateText {
  DateText({
    this.simpleText,
  });

  final String simpleText;

  factory DateText.fromRawJson(String str) =>
      DateText.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DateText.fromJson(Map<String, dynamic> json) => DateText(
        simpleText: json["simpleText"] == null ? null : json["simpleText"],
      );

  Map<String, dynamic> toJson() => {
        "simpleText": simpleText == null ? null : simpleText,
      };
}

class SentimentBar {
  SentimentBar({
    this.sentimentBarRenderer,
  });

  final SentimentBarRenderer sentimentBarRenderer;

  factory SentimentBar.fromRawJson(String str) =>
      SentimentBar.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SentimentBar.fromJson(Map<String, dynamic> json) => SentimentBar(
        sentimentBarRenderer: json["sentimentBarRenderer"] == null
            ? null
            : SentimentBarRenderer.fromJson(json["sentimentBarRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "sentimentBarRenderer":
            sentimentBarRenderer == null ? null : sentimentBarRenderer.toJson(),
      };
}

class SentimentBarRenderer {
  SentimentBarRenderer({
    this.percentIfIndifferent,
    this.percentIfLiked,
    this.percentIfDisliked,
    this.likeStatus,
    this.tooltip,
  });

  final int percentIfIndifferent;
  final int percentIfLiked;
  final int percentIfDisliked;
  final String likeStatus;
  final String tooltip;

  factory SentimentBarRenderer.fromRawJson(String str) =>
      SentimentBarRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SentimentBarRenderer.fromJson(Map<String, dynamic> json) =>
      SentimentBarRenderer(
        percentIfIndifferent: json["percentIfIndifferent"] == null
            ? null
            : json["percentIfIndifferent"],
        percentIfLiked:
            json["percentIfLiked"] == null ? null : json["percentIfLiked"],
        percentIfDisliked: json["percentIfDisliked"] == null
            ? null
            : json["percentIfDisliked"],
        likeStatus: json["likeStatus"] == null ? null : json["likeStatus"],
        tooltip: json["tooltip"] == null ? null : json["tooltip"],
      );

  Map<String, dynamic> toJson() => {
        "percentIfIndifferent":
            percentIfIndifferent == null ? null : percentIfIndifferent,
        "percentIfLiked": percentIfLiked == null ? null : percentIfLiked,
        "percentIfDisliked":
            percentIfDisliked == null ? null : percentIfDisliked,
        "likeStatus": likeStatus == null ? null : likeStatus,
        "tooltip": tooltip == null ? null : tooltip,
      };
}

class VideoActions {
  VideoActions({
    this.menuRenderer,
  });

  final VideoActionsMenuRenderer menuRenderer;

  factory VideoActions.fromRawJson(String str) =>
      VideoActions.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VideoActions.fromJson(Map<String, dynamic> json) => VideoActions(
        menuRenderer: json["menuRenderer"] == null
            ? null
            : VideoActionsMenuRenderer.fromJson(json["menuRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "menuRenderer": menuRenderer == null ? null : menuRenderer.toJson(),
      };
}

class VideoActionsMenuRenderer {
  VideoActionsMenuRenderer({
    this.items,
    this.trackingParams,
    this.topLevelButtons,
    this.accessibility,
  });

  final List<PurpleItem> items;
  final String trackingParams;
  final List<TopLevelButton> topLevelButtons;
  final AccessibilityData accessibility;

  factory VideoActionsMenuRenderer.fromRawJson(String str) =>
      VideoActionsMenuRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VideoActionsMenuRenderer.fromJson(Map<String, dynamic> json) =>
      VideoActionsMenuRenderer(
        items: json["items"] == null
            ? null
            : List<PurpleItem>.from(
                json["items"].map((x) => PurpleItem.fromJson(x))),
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

class PurpleItem {
  PurpleItem({
    this.menuNavigationItemRenderer,
    this.menuServiceItemRenderer,
  });

  final MenuItemRenderer menuNavigationItemRenderer;
  final MenuItemRenderer menuServiceItemRenderer;

  factory PurpleItem.fromRawJson(String str) =>
      PurpleItem.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleItem.fromJson(Map<String, dynamic> json) => PurpleItem(
        menuNavigationItemRenderer: json["menuNavigationItemRenderer"] == null
            ? null
            : MenuItemRenderer.fromJson(json["menuNavigationItemRenderer"]),
        menuServiceItemRenderer: json["menuServiceItemRenderer"] == null
            ? null
            : MenuItemRenderer.fromJson(json["menuServiceItemRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "menuNavigationItemRenderer": menuNavigationItemRenderer == null
            ? null
            : menuNavigationItemRenderer.toJson(),
        "menuServiceItemRenderer": menuServiceItemRenderer == null
            ? null
            : menuServiceItemRenderer.toJson(),
      };
}

class MenuItemRenderer {
  MenuItemRenderer({
    this.text,
    this.icon,
    this.navigationEndpoint,
    this.trackingParams,
    this.serviceEndpoint,
  });

  final TextClass text;
  final IconImage icon;
  final MenuNavigationItemRendererNavigationEndpoint navigationEndpoint;
  final String trackingParams;
  final MenuNavigationItemRendererServiceEndpoint serviceEndpoint;

  factory MenuItemRenderer.fromRawJson(String str) =>
      MenuItemRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MenuItemRenderer.fromJson(Map<String, dynamic> json) =>
      MenuItemRenderer(
        text: json["text"] == null ? null : TextClass.fromJson(json["text"]),
        icon: json["icon"] == null ? null : IconImage.fromJson(json["icon"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : MenuNavigationItemRendererNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        serviceEndpoint: json["serviceEndpoint"] == null
            ? null
            : MenuNavigationItemRendererServiceEndpoint.fromJson(
                json["serviceEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text.toJson(),
        "icon": icon == null ? null : icon.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "serviceEndpoint":
            serviceEndpoint == null ? null : serviceEndpoint.toJson(),
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

class MenuNavigationItemRendererNavigationEndpoint {
  MenuNavigationItemRendererNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.modalEndpoint,
    this.urlEndpoint,
  });

  final String clickTrackingParams;
  final AutoplayVideoCommandMetadata commandMetadata;
  final PurpleModalEndpoint modalEndpoint;
  final PurpleUrlEndpoint urlEndpoint;

  factory MenuNavigationItemRendererNavigationEndpoint.fromRawJson(
          String str) =>
      MenuNavigationItemRendererNavigationEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MenuNavigationItemRendererNavigationEndpoint.fromJson(
          Map<String, dynamic> json) =>
      MenuNavigationItemRendererNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : AutoplayVideoCommandMetadata.fromJson(json["commandMetadata"]),
        modalEndpoint: json["modalEndpoint"] == null
            ? null
            : PurpleModalEndpoint.fromJson(json["modalEndpoint"]),
        urlEndpoint: json["urlEndpoint"] == null
            ? null
            : PurpleUrlEndpoint.fromJson(json["urlEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "modalEndpoint": modalEndpoint == null ? null : modalEndpoint.toJson(),
        "urlEndpoint": urlEndpoint == null ? null : urlEndpoint.toJson(),
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

  final DateText title;
  final TextClass content;
  final PurpleButton button;

  factory PurpleModalWithTitleAndButtonRenderer.fromRawJson(String str) =>
      PurpleModalWithTitleAndButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleModalWithTitleAndButtonRenderer.fromJson(
          Map<String, dynamic> json) =>
      PurpleModalWithTitleAndButtonRenderer(
        title: json["title"] == null ? null : DateText.fromJson(json["title"]),
        content: json["content"] == null
            ? null
            : TextClass.fromJson(json["content"]),
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
  final DateText text;
  final PurpleNavigationEndpoint navigationEndpoint;
  final String trackingParams;

  factory PurpleButtonRenderer.fromRawJson(String str) =>
      PurpleButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleButtonRenderer.fromJson(Map<String, dynamic> json) =>
      PurpleButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        text: json["text"] == null ? null : DateText.fromJson(json["text"]),
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
    this.signInEndpoint,
  });

  final String clickTrackingParams;
  final AutoplayVideoCommandMetadata commandMetadata;
  final AdsEngagementPanelContentRenderer signInEndpoint;

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
            : AutoplayVideoCommandMetadata.fromJson(json["commandMetadata"]),
        signInEndpoint: json["signInEndpoint"] == null
            ? null
            : AdsEngagementPanelContentRenderer.fromJson(
                json["signInEndpoint"]),
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

class AdsEngagementPanelContentRenderer {
  AdsEngagementPanelContentRenderer({
    this.hack,
  });

  final bool hack;

  factory AdsEngagementPanelContentRenderer.fromRawJson(String str) =>
      AdsEngagementPanelContentRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AdsEngagementPanelContentRenderer.fromJson(
          Map<String, dynamic> json) =>
      AdsEngagementPanelContentRenderer(
        hack: json["hack"] == null ? null : json["hack"],
      );

  Map<String, dynamic> toJson() => {
        "hack": hack == null ? null : hack,
      };
}

class PurpleUrlEndpoint {
  PurpleUrlEndpoint({
    this.url,
  });

  final String url;

  factory PurpleUrlEndpoint.fromRawJson(String str) =>
      PurpleUrlEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleUrlEndpoint.fromJson(Map<String, dynamic> json) =>
      PurpleUrlEndpoint(
        url: json["url"] == null ? null : json["url"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
      };
}

class MenuNavigationItemRendererServiceEndpoint {
  MenuNavigationItemRendererServiceEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signalServiceEndpoint,
  });

  final String clickTrackingParams;
  final OnResponseReceivedEndpointCommandMetadata commandMetadata;
  final PurpleSignalServiceEndpoint signalServiceEndpoint;

  factory MenuNavigationItemRendererServiceEndpoint.fromRawJson(String str) =>
      MenuNavigationItemRendererServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MenuNavigationItemRendererServiceEndpoint.fromJson(
          Map<String, dynamic> json) =>
      MenuNavigationItemRendererServiceEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : OnResponseReceivedEndpointCommandMetadata.fromJson(
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

class OnResponseReceivedEndpointCommandMetadata {
  OnResponseReceivedEndpointCommandMetadata({
    this.webCommandMetadata,
  });

  final FluffyWebCommandMetadata webCommandMetadata;

  factory OnResponseReceivedEndpointCommandMetadata.fromRawJson(String str) =>
      OnResponseReceivedEndpointCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OnResponseReceivedEndpointCommandMetadata.fromJson(
          Map<String, dynamic> json) =>
      OnResponseReceivedEndpointCommandMetadata(
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
    this.changeEngagementPanelVisibilityAction,
    this.addToPlaylistCommand,
    this.openPopupAction,
  });

  final String clickTrackingParams;
  final ChangeEngagementPanelVisibilityAction
      changeEngagementPanelVisibilityAction;
  final AddToPlaylistCommand addToPlaylistCommand;
  final PurpleOpenPopupAction openPopupAction;

  factory PurpleAction.fromRawJson(String str) =>
      PurpleAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleAction.fromJson(Map<String, dynamic> json) => PurpleAction(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        changeEngagementPanelVisibilityAction:
            json["changeEngagementPanelVisibilityAction"] == null
                ? null
                : ChangeEngagementPanelVisibilityAction.fromJson(
                    json["changeEngagementPanelVisibilityAction"]),
        addToPlaylistCommand: json["addToPlaylistCommand"] == null
            ? null
            : AddToPlaylistCommand.fromJson(json["addToPlaylistCommand"]),
        openPopupAction: json["openPopupAction"] == null
            ? null
            : PurpleOpenPopupAction.fromJson(json["openPopupAction"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "changeEngagementPanelVisibilityAction":
            changeEngagementPanelVisibilityAction == null
                ? null
                : changeEngagementPanelVisibilityAction.toJson(),
        "addToPlaylistCommand":
            addToPlaylistCommand == null ? null : addToPlaylistCommand.toJson(),
        "openPopupAction":
            openPopupAction == null ? null : openPopupAction.toJson(),
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
  YOUTUBEI_V1_SHARE_GET_SHARE_PANEL,
  YOUTUBEI_V1_PLAYLIST_CREATE,
  YOUTUBEI_V1_BROWSE_EDIT_PLAYLIST,
  YOUTUBEI_V1_GET_TRANSCRIPT,
  YOUTUBEI_V1_ACCOUNT_ACCOUNT_MENU
}

final apiUrlValues = EnumValues({
  "/youtubei/v1/account/account_menu": ApiUrl.YOUTUBEI_V1_ACCOUNT_ACCOUNT_MENU,
  "/youtubei/v1/browse/edit_playlist": ApiUrl.YOUTUBEI_V1_BROWSE_EDIT_PLAYLIST,
  "/youtubei/v1/get_transcript": ApiUrl.YOUTUBEI_V1_GET_TRANSCRIPT,
  "/youtubei/v1/playlist/create": ApiUrl.YOUTUBEI_V1_PLAYLIST_CREATE,
  "/youtubei/v1/share/get_share_panel": ApiUrl.YOUTUBEI_V1_SHARE_GET_SHARE_PANEL
});

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

class ChangeEngagementPanelVisibilityAction {
  ChangeEngagementPanelVisibilityAction({
    this.targetId,
    this.visibility,
  });

  final String targetId;
  final String visibility;

  factory ChangeEngagementPanelVisibilityAction.fromRawJson(String str) =>
      ChangeEngagementPanelVisibilityAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChangeEngagementPanelVisibilityAction.fromJson(
          Map<String, dynamic> json) =>
      ChangeEngagementPanelVisibilityAction(
        targetId: json["targetId"] == null ? null : json["targetId"],
        visibility: json["visibility"] == null ? null : json["visibility"],
      );

  Map<String, dynamic> toJson() => {
        "targetId": targetId == null ? null : targetId,
        "visibility": visibility == null ? null : visibility,
      };
}

class PurpleOpenPopupAction {
  PurpleOpenPopupAction({
    this.popup,
    this.popupType,
  });

  final PurplePopup popup;
  final PopupType popupType;

  factory PurpleOpenPopupAction.fromRawJson(String str) =>
      PurpleOpenPopupAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleOpenPopupAction.fromJson(Map<String, dynamic> json) =>
      PurpleOpenPopupAction(
        popup:
            json["popup"] == null ? null : PurplePopup.fromJson(json["popup"]),
        popupType: json["popupType"] == null
            ? null
            : popupTypeValues.map[json["popupType"]],
      );

  Map<String, dynamic> toJson() => {
        "popup": popup == null ? null : popup.toJson(),
        "popupType":
            popupType == null ? null : popupTypeValues.reverse[popupType],
      };
}

class PurplePopup {
  PurplePopup({
    this.notificationActionRenderer,
  });

  final NotificationActionRenderer notificationActionRenderer;

  factory PurplePopup.fromRawJson(String str) =>
      PurplePopup.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurplePopup.fromJson(Map<String, dynamic> json) => PurplePopup(
        notificationActionRenderer: json["notificationActionRenderer"] == null
            ? null
            : NotificationActionRenderer.fromJson(
                json["notificationActionRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "notificationActionRenderer": notificationActionRenderer == null
            ? null
            : notificationActionRenderer.toJson(),
      };
}

class NotificationActionRenderer {
  NotificationActionRenderer({
    this.responseText,
    this.trackingParams,
  });

  final DateText responseText;
  final String trackingParams;

  factory NotificationActionRenderer.fromRawJson(String str) =>
      NotificationActionRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NotificationActionRenderer.fromJson(Map<String, dynamic> json) =>
      NotificationActionRenderer(
        responseText: json["responseText"] == null
            ? null
            : DateText.fromJson(json["responseText"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "responseText": responseText == null ? null : responseText.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

enum PopupType { TOAST }

final popupTypeValues = EnumValues({"TOAST": PopupType.TOAST});

enum Signal { CLIENT_SIGNAL }

final signalValues = EnumValues({"CLIENT_SIGNAL": Signal.CLIENT_SIGNAL});

class TopLevelButton {
  TopLevelButton({
    this.toggleButtonRenderer,
    this.buttonRenderer,
  });

  final ToggleButtonRenderer toggleButtonRenderer;
  final TopLevelButtonButtonRenderer buttonRenderer;

  factory TopLevelButton.fromRawJson(String str) =>
      TopLevelButton.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TopLevelButton.fromJson(Map<String, dynamic> json) => TopLevelButton(
        toggleButtonRenderer: json["toggleButtonRenderer"] == null
            ? null
            : ToggleButtonRenderer.fromJson(json["toggleButtonRenderer"]),
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
    this.text,
    this.serviceEndpoint,
    this.icon,
    this.accessibility,
    this.tooltip,
    this.trackingParams,
    this.navigationEndpoint,
    this.accessibilityData,
  });

  final String style;
  final String size;
  final bool isDisabled;
  final TextClass text;
  final ButtonRendererServiceEndpoint serviceEndpoint;
  final IconImage icon;
  final Accessibility accessibility;
  final String tooltip;
  final String trackingParams;
  final DefaultNavigationEndpointClass navigationEndpoint;
  final AccessibilityData accessibilityData;

  factory TopLevelButtonButtonRenderer.fromRawJson(String str) =>
      TopLevelButtonButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TopLevelButtonButtonRenderer.fromJson(Map<String, dynamic> json) =>
      TopLevelButtonButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        text: json["text"] == null ? null : TextClass.fromJson(json["text"]),
        serviceEndpoint: json["serviceEndpoint"] == null
            ? null
            : ButtonRendererServiceEndpoint.fromJson(json["serviceEndpoint"]),
        icon: json["icon"] == null ? null : IconImage.fromJson(json["icon"]),
        accessibility: json["accessibility"] == null
            ? null
            : Accessibility.fromJson(json["accessibility"]),
        tooltip: json["tooltip"] == null ? null : json["tooltip"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : DefaultNavigationEndpointClass.fromJson(
                json["navigationEndpoint"]),
        accessibilityData: json["accessibilityData"] == null
            ? null
            : AccessibilityData.fromJson(json["accessibilityData"]),
      );

  Map<String, dynamic> toJson() => {
        "style": style == null ? null : style,
        "size": size == null ? null : size,
        "isDisabled": isDisabled == null ? null : isDisabled,
        "text": text == null ? null : text.toJson(),
        "serviceEndpoint":
            serviceEndpoint == null ? null : serviceEndpoint.toJson(),
        "icon": icon == null ? null : icon.toJson(),
        "accessibility": accessibility == null ? null : accessibility.toJson(),
        "tooltip": tooltip == null ? null : tooltip,
        "trackingParams": trackingParams == null ? null : trackingParams,
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "accessibilityData":
            accessibilityData == null ? null : accessibilityData.toJson(),
      };
}

class DefaultNavigationEndpointClass {
  DefaultNavigationEndpointClass({
    this.clickTrackingParams,
    this.commandMetadata,
    this.modalEndpoint,
  });

  final String clickTrackingParams;
  final DefaultNavigationEndpointCommandMetadata commandMetadata;
  final DefaultNavigationEndpointModalEndpoint modalEndpoint;

  factory DefaultNavigationEndpointClass.fromRawJson(String str) =>
      DefaultNavigationEndpointClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DefaultNavigationEndpointClass.fromJson(Map<String, dynamic> json) =>
      DefaultNavigationEndpointClass(
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

class DefaultNavigationEndpointCommandMetadata {
  DefaultNavigationEndpointCommandMetadata({
    this.webCommandMetadata,
  });

  final StickyWebCommandMetadata webCommandMetadata;

  factory DefaultNavigationEndpointCommandMetadata.fromRawJson(String str) =>
      DefaultNavigationEndpointCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DefaultNavigationEndpointCommandMetadata.fromJson(
          Map<String, dynamic> json) =>
      DefaultNavigationEndpointCommandMetadata(
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
    this.ignoreNavigation,
  });

  final bool ignoreNavigation;

  factory StickyWebCommandMetadata.fromRawJson(String str) =>
      StickyWebCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StickyWebCommandMetadata.fromJson(Map<String, dynamic> json) =>
      StickyWebCommandMetadata(
        ignoreNavigation:
            json["ignoreNavigation"] == null ? null : json["ignoreNavigation"],
      );

  Map<String, dynamic> toJson() => {
        "ignoreNavigation": ignoreNavigation == null ? null : ignoreNavigation,
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

  final DateText title;
  final DateText content;
  final FluffyButton button;

  factory FluffyModalWithTitleAndButtonRenderer.fromRawJson(String str) =>
      FluffyModalWithTitleAndButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyModalWithTitleAndButtonRenderer.fromJson(
          Map<String, dynamic> json) =>
      FluffyModalWithTitleAndButtonRenderer(
        title: json["title"] == null ? null : DateText.fromJson(json["title"]),
        content:
            json["content"] == null ? null : DateText.fromJson(json["content"]),
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
  final DateText text;
  final FluffyNavigationEndpoint navigationEndpoint;
  final String trackingParams;

  factory FluffyButtonRenderer.fromRawJson(String str) =>
      FluffyButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyButtonRenderer.fromJson(Map<String, dynamic> json) =>
      FluffyButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        text: json["text"] == null ? null : DateText.fromJson(json["text"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : FluffyNavigationEndpoint.fromJson(json["navigationEndpoint"]),
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

class FluffyNavigationEndpoint {
  FluffyNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signInEndpoint,
  });

  final String clickTrackingParams;
  final AutoplayVideoCommandMetadata commandMetadata;
  final PurpleSignInEndpoint signInEndpoint;

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
            : AutoplayVideoCommandMetadata.fromJson(json["commandMetadata"]),
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
    this.idamTag,
  });

  final Endpoint nextEndpoint;
  final String idamTag;

  factory PurpleSignInEndpoint.fromRawJson(String str) =>
      PurpleSignInEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleSignInEndpoint.fromJson(Map<String, dynamic> json) =>
      PurpleSignInEndpoint(
        nextEndpoint: json["nextEndpoint"] == null
            ? null
            : Endpoint.fromJson(json["nextEndpoint"]),
        idamTag: json["idamTag"] == null ? null : json["idamTag"],
      );

  Map<String, dynamic> toJson() => {
        "nextEndpoint": nextEndpoint == null ? null : nextEndpoint.toJson(),
        "idamTag": idamTag == null ? null : idamTag,
      };
}

class Endpoint {
  Endpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.watchEndpoint,
  });

  final String clickTrackingParams;
  final AutoplayVideoCommandMetadata commandMetadata;
  final CurrentVideoEndpointWatchEndpoint watchEndpoint;

  factory Endpoint.fromRawJson(String str) =>
      Endpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Endpoint.fromJson(Map<String, dynamic> json) => Endpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : AutoplayVideoCommandMetadata.fromJson(json["commandMetadata"]),
        watchEndpoint: json["watchEndpoint"] == null
            ? null
            : CurrentVideoEndpointWatchEndpoint.fromJson(json["watchEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "watchEndpoint": watchEndpoint == null ? null : watchEndpoint.toJson(),
      };
}

class CurrentVideoEndpointWatchEndpoint {
  CurrentVideoEndpointWatchEndpoint({
    this.videoId,
  });

  final String videoId;

  factory CurrentVideoEndpointWatchEndpoint.fromRawJson(String str) =>
      CurrentVideoEndpointWatchEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CurrentVideoEndpointWatchEndpoint.fromJson(
          Map<String, dynamic> json) =>
      CurrentVideoEndpointWatchEndpoint(
        videoId: json["videoId"] == null ? null : json["videoId"],
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId == null ? null : videoId,
      };
}

class ButtonRendererServiceEndpoint {
  ButtonRendererServiceEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.shareEntityServiceEndpoint,
  });

  final String clickTrackingParams;
  final OnCreateListCommandCommandMetadata commandMetadata;
  final ShareEntityServiceEndpoint shareEntityServiceEndpoint;

  factory ButtonRendererServiceEndpoint.fromRawJson(String str) =>
      ButtonRendererServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ButtonRendererServiceEndpoint.fromJson(Map<String, dynamic> json) =>
      ButtonRendererServiceEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : OnCreateListCommandCommandMetadata.fromJson(
                json["commandMetadata"]),
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
  final bool beReused;

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
  final bool showLoadingSpinner;

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

class ToggleButtonRenderer {
  ToggleButtonRenderer({
    this.style,
    this.isToggled,
    this.isDisabled,
    this.defaultIcon,
    this.defaultText,
    this.toggledText,
    this.accessibility,
    this.trackingParams,
    this.defaultTooltip,
    this.toggledTooltip,
    this.toggledStyle,
    this.defaultNavigationEndpoint,
    this.accessibilityData,
    this.toggleButtonSupportedData,
    this.targetId,
  });

  final StyleClass style;
  final bool isToggled;
  final bool isDisabled;
  final IconImage defaultIcon;
  final LengthText defaultText;
  final LengthText toggledText;
  final Accessibility accessibility;
  final String trackingParams;
  final String defaultTooltip;
  final String toggledTooltip;
  final StyleClass toggledStyle;
  final DefaultNavigationEndpointClass defaultNavigationEndpoint;
  final AccessibilityData accessibilityData;
  final ToggleButtonSupportedData toggleButtonSupportedData;
  final String targetId;

  factory ToggleButtonRenderer.fromRawJson(String str) =>
      ToggleButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ToggleButtonRenderer.fromJson(Map<String, dynamic> json) =>
      ToggleButtonRenderer(
        style:
            json["style"] == null ? null : StyleClass.fromJson(json["style"]),
        isToggled: json["isToggled"] == null ? null : json["isToggled"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        defaultIcon: json["defaultIcon"] == null
            ? null
            : IconImage.fromJson(json["defaultIcon"]),
        defaultText: json["defaultText"] == null
            ? null
            : LengthText.fromJson(json["defaultText"]),
        toggledText: json["toggledText"] == null
            ? null
            : LengthText.fromJson(json["toggledText"]),
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
            : StyleClass.fromJson(json["toggledStyle"]),
        defaultNavigationEndpoint: json["defaultNavigationEndpoint"] == null
            ? null
            : DefaultNavigationEndpointClass.fromJson(
                json["defaultNavigationEndpoint"]),
        accessibilityData: json["accessibilityData"] == null
            ? null
            : AccessibilityData.fromJson(json["accessibilityData"]),
        toggleButtonSupportedData: json["toggleButtonSupportedData"] == null
            ? null
            : ToggleButtonSupportedData.fromJson(
                json["toggleButtonSupportedData"]),
        targetId: json["targetId"] == null ? null : json["targetId"],
      );

  Map<String, dynamic> toJson() => {
        "style": style == null ? null : style.toJson(),
        "isToggled": isToggled == null ? null : isToggled,
        "isDisabled": isDisabled == null ? null : isDisabled,
        "defaultIcon": defaultIcon == null ? null : defaultIcon.toJson(),
        "defaultText": defaultText == null ? null : defaultText.toJson(),
        "toggledText": toggledText == null ? null : toggledText.toJson(),
        "accessibility": accessibility == null ? null : accessibility.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "defaultTooltip": defaultTooltip == null ? null : defaultTooltip,
        "toggledTooltip": toggledTooltip == null ? null : toggledTooltip,
        "toggledStyle": toggledStyle == null ? null : toggledStyle.toJson(),
        "defaultNavigationEndpoint": defaultNavigationEndpoint == null
            ? null
            : defaultNavigationEndpoint.toJson(),
        "accessibilityData":
            accessibilityData == null ? null : accessibilityData.toJson(),
        "toggleButtonSupportedData": toggleButtonSupportedData == null
            ? null
            : toggleButtonSupportedData.toJson(),
        "targetId": targetId == null ? null : targetId,
      };
}

class LengthText {
  LengthText({
    this.accessibility,
    this.simpleText,
  });

  final AccessibilityData accessibility;
  final String simpleText;

  factory LengthText.fromRawJson(String str) =>
      LengthText.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LengthText.fromJson(Map<String, dynamic> json) => LengthText(
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

class StyleClass {
  StyleClass({
    this.styleType,
  });

  final String styleType;

  factory StyleClass.fromRawJson(String str) =>
      StyleClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StyleClass.fromJson(Map<String, dynamic> json) => StyleClass(
        styleType: json["styleType"] == null ? null : json["styleType"],
      );

  Map<String, dynamic> toJson() => {
        "styleType": styleType == null ? null : styleType,
      };
}

class ToggleButtonSupportedData {
  ToggleButtonSupportedData({
    this.toggleButtonIdData,
  });

  final ToggleButtonIdData toggleButtonIdData;

  factory ToggleButtonSupportedData.fromRawJson(String str) =>
      ToggleButtonSupportedData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ToggleButtonSupportedData.fromJson(Map<String, dynamic> json) =>
      ToggleButtonSupportedData(
        toggleButtonIdData: json["toggleButtonIdData"] == null
            ? null
            : ToggleButtonIdData.fromJson(json["toggleButtonIdData"]),
      );

  Map<String, dynamic> toJson() => {
        "toggleButtonIdData":
            toggleButtonIdData == null ? null : toggleButtonIdData.toJson(),
      };
}

class ToggleButtonIdData {
  ToggleButtonIdData({
    this.id,
  });

  final String id;

  factory ToggleButtonIdData.fromRawJson(String str) =>
      ToggleButtonIdData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ToggleButtonIdData.fromJson(Map<String, dynamic> json) =>
      ToggleButtonIdData(
        id: json["id"] == null ? null : json["id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
      };
}

class ViewCount {
  ViewCount({
    this.videoViewCountRenderer,
  });

  final VideoViewCountRenderer videoViewCountRenderer;

  factory ViewCount.fromRawJson(String str) =>
      ViewCount.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ViewCount.fromJson(Map<String, dynamic> json) => ViewCount(
        videoViewCountRenderer: json["videoViewCountRenderer"] == null
            ? null
            : VideoViewCountRenderer.fromJson(json["videoViewCountRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "videoViewCountRenderer": videoViewCountRenderer == null
            ? null
            : videoViewCountRenderer.toJson(),
      };
}

class VideoViewCountRenderer {
  VideoViewCountRenderer({
    this.viewCount,
    this.shortViewCount,
  });

  final DateText viewCount;
  final DateText shortViewCount;

  factory VideoViewCountRenderer.fromRawJson(String str) =>
      VideoViewCountRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VideoViewCountRenderer.fromJson(Map<String, dynamic> json) =>
      VideoViewCountRenderer(
        viewCount: json["viewCount"] == null
            ? null
            : DateText.fromJson(json["viewCount"]),
        shortViewCount: json["shortViewCount"] == null
            ? null
            : DateText.fromJson(json["shortViewCount"]),
      );

  Map<String, dynamic> toJson() => {
        "viewCount": viewCount == null ? null : viewCount.toJson(),
        "shortViewCount":
            shortViewCount == null ? null : shortViewCount.toJson(),
      };
}

class VideoSecondaryInfoRenderer {
  VideoSecondaryInfoRenderer({
    this.owner,
    this.description,
    this.subscribeButton,
    this.metadataRowContainer,
    this.showMoreText,
    this.showLessText,
    this.trackingParams,
    this.defaultExpanded,
    this.descriptionCollapsedLines,
  });

  final Owner owner;
  final TextClass description;
  final SubscribeButton subscribeButton;
  final MetadataRowContainer metadataRowContainer;
  final TextClass showMoreText;
  final TextClass showLessText;
  final String trackingParams;
  final bool defaultExpanded;
  final int descriptionCollapsedLines;

  factory VideoSecondaryInfoRenderer.fromRawJson(String str) =>
      VideoSecondaryInfoRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VideoSecondaryInfoRenderer.fromJson(Map<String, dynamic> json) =>
      VideoSecondaryInfoRenderer(
        owner: json["owner"] == null ? null : Owner.fromJson(json["owner"]),
        description: json["description"] == null
            ? null
            : TextClass.fromJson(json["description"]),
        subscribeButton: json["subscribeButton"] == null
            ? null
            : SubscribeButton.fromJson(json["subscribeButton"]),
        metadataRowContainer: json["metadataRowContainer"] == null
            ? null
            : MetadataRowContainer.fromJson(json["metadataRowContainer"]),
        showMoreText: json["showMoreText"] == null
            ? null
            : TextClass.fromJson(json["showMoreText"]),
        showLessText: json["showLessText"] == null
            ? null
            : TextClass.fromJson(json["showLessText"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        defaultExpanded:
            json["defaultExpanded"] == null ? null : json["defaultExpanded"],
        descriptionCollapsedLines: json["descriptionCollapsedLines"] == null
            ? null
            : json["descriptionCollapsedLines"],
      );

  Map<String, dynamic> toJson() => {
        "owner": owner == null ? null : owner.toJson(),
        "description": description == null ? null : description.toJson(),
        "subscribeButton":
            subscribeButton == null ? null : subscribeButton.toJson(),
        "metadataRowContainer":
            metadataRowContainer == null ? null : metadataRowContainer.toJson(),
        "showMoreText": showMoreText == null ? null : showMoreText.toJson(),
        "showLessText": showLessText == null ? null : showLessText.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "defaultExpanded": defaultExpanded == null ? null : defaultExpanded,
        "descriptionCollapsedLines": descriptionCollapsedLines == null
            ? null
            : descriptionCollapsedLines,
      };
}

class MetadataRowContainer {
  MetadataRowContainer({
    this.metadataRowContainerRenderer,
  });

  final MetadataRowContainerRenderer metadataRowContainerRenderer;

  factory MetadataRowContainer.fromRawJson(String str) =>
      MetadataRowContainer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MetadataRowContainer.fromJson(Map<String, dynamic> json) =>
      MetadataRowContainer(
        metadataRowContainerRenderer:
            json["metadataRowContainerRenderer"] == null
                ? null
                : MetadataRowContainerRenderer.fromJson(
                    json["metadataRowContainerRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "metadataRowContainerRenderer": metadataRowContainerRenderer == null
            ? null
            : metadataRowContainerRenderer.toJson(),
      };
}

class MetadataRowContainerRenderer {
  MetadataRowContainerRenderer({
    this.collapsedItemCount,
    this.trackingParams,
  });

  final int collapsedItemCount;
  final String trackingParams;

  factory MetadataRowContainerRenderer.fromRawJson(String str) =>
      MetadataRowContainerRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MetadataRowContainerRenderer.fromJson(Map<String, dynamic> json) =>
      MetadataRowContainerRenderer(
        collapsedItemCount: json["collapsedItemCount"] == null
            ? null
            : json["collapsedItemCount"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "collapsedItemCount":
            collapsedItemCount == null ? null : collapsedItemCount,
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class Owner {
  Owner({
    this.videoOwnerRenderer,
  });

  final VideoOwnerRenderer videoOwnerRenderer;

  factory Owner.fromRawJson(String str) => Owner.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Owner.fromJson(Map<String, dynamic> json) => Owner(
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
    this.subscriptionButton,
    this.navigationEndpoint,
    this.subscriberCountText,
    this.trackingParams,
    this.badges,
  });

  final ChannelThumbnailClass thumbnail;
  final PurpleTitle title;
  final SubscriptionButton subscriptionButton;
  final VideoOwnerRendererNavigationEndpoint navigationEndpoint;
  final TextClass subscriberCountText;
  final String trackingParams;
  final List<OwnerBadgeElement> badges;

  factory VideoOwnerRenderer.fromRawJson(String str) =>
      VideoOwnerRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VideoOwnerRenderer.fromJson(Map<String, dynamic> json) =>
      VideoOwnerRenderer(
        thumbnail: json["thumbnail"] == null
            ? null
            : ChannelThumbnailClass.fromJson(json["thumbnail"]),
        title:
            json["title"] == null ? null : PurpleTitle.fromJson(json["title"]),
        subscriptionButton: json["subscriptionButton"] == null
            ? null
            : SubscriptionButton.fromJson(json["subscriptionButton"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : VideoOwnerRendererNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
        subscriberCountText: json["subscriberCountText"] == null
            ? null
            : TextClass.fromJson(json["subscriberCountText"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        badges: json["badges"] == null
            ? null
            : List<OwnerBadgeElement>.from(
                json["badges"].map((x) => OwnerBadgeElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail == null ? null : thumbnail.toJson(),
        "title": title == null ? null : title.toJson(),
        "subscriptionButton":
            subscriptionButton == null ? null : subscriptionButton.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "subscriberCountText":
            subscriberCountText == null ? null : subscriberCountText.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "badges": badges == null
            ? null
            : List<dynamic>.from(badges.map((x) => x.toJson())),
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
  });

  final IconImage icon;
  final MetadataBadgeRendererStyle style;
  final Tooltip tooltip;
  final String trackingParams;

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

enum MetadataBadgeRendererStyle { BADGE_STYLE_TYPE_VERIFIED }

final metadataBadgeRendererStyleValues = EnumValues({
  "BADGE_STYLE_TYPE_VERIFIED":
      MetadataBadgeRendererStyle.BADGE_STYLE_TYPE_VERIFIED
});

enum Tooltip { VERIFIED }

final tooltipValues = EnumValues({"Verified": Tooltip.VERIFIED});

class VideoOwnerRendererNavigationEndpoint {
  VideoOwnerRendererNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.browseEndpoint,
  });

  final String clickTrackingParams;
  final AutoplayVideoCommandMetadata commandMetadata;
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
            : AutoplayVideoCommandMetadata.fromJson(json["commandMetadata"]),
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

class SubscriptionButton {
  SubscriptionButton({
    this.type,
  });

  final String type;

  factory SubscriptionButton.fromRawJson(String str) =>
      SubscriptionButton.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SubscriptionButton.fromJson(Map<String, dynamic> json) =>
      SubscriptionButton(
        type: json["type"] == null ? null : json["type"],
      );

  Map<String, dynamic> toJson() => {
        "type": type == null ? null : type,
      };
}

class ChannelThumbnailClass {
  ChannelThumbnailClass({
    this.thumbnails,
  });

  final List<ThumbnailElement> thumbnails;

  factory ChannelThumbnailClass.fromRawJson(String str) =>
      ChannelThumbnailClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChannelThumbnailClass.fromJson(Map<String, dynamic> json) =>
      ChannelThumbnailClass(
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

class PurpleTitle {
  PurpleTitle({
    this.runs,
  });

  final List<PurpleRun> runs;

  factory PurpleTitle.fromRawJson(String str) =>
      PurpleTitle.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleTitle.fromJson(Map<String, dynamic> json) => PurpleTitle(
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
  final EndpointClass navigationEndpoint;

  factory PurpleRun.fromRawJson(String str) =>
      PurpleRun.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleRun.fromJson(Map<String, dynamic> json) => PurpleRun(
        text: json["text"] == null ? null : json["text"],
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : EndpointClass.fromJson(json["navigationEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text,
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
      };
}

class EndpointClass {
  EndpointClass({
    this.clickTrackingParams,
    this.commandMetadata,
    this.browseEndpoint,
  });

  final String clickTrackingParams;
  final AutoplayVideoCommandMetadata commandMetadata;
  final EndpointBrowseEndpoint browseEndpoint;

  factory EndpointClass.fromRawJson(String str) =>
      EndpointClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EndpointClass.fromJson(Map<String, dynamic> json) => EndpointClass(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : AutoplayVideoCommandMetadata.fromJson(json["commandMetadata"]),
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
    this.targetId,
  });

  final String style;
  final String size;
  final bool isDisabled;
  final TextClass text;
  final TentacledNavigationEndpoint navigationEndpoint;
  final String trackingParams;
  final String targetId;

  factory SubscribeButtonButtonRenderer.fromRawJson(String str) =>
      SubscribeButtonButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SubscribeButtonButtonRenderer.fromJson(Map<String, dynamic> json) =>
      SubscribeButtonButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        text: json["text"] == null ? null : TextClass.fromJson(json["text"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : TentacledNavigationEndpoint.fromJson(json["navigationEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
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
        "targetId": targetId == null ? null : targetId,
      };
}

class TentacledNavigationEndpoint {
  TentacledNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.modalEndpoint,
  });

  final String clickTrackingParams;
  final DefaultNavigationEndpointCommandMetadata commandMetadata;
  final FluffyModalEndpoint modalEndpoint;

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
            : DefaultNavigationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
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

  final TentacledModal modal;

  factory FluffyModalEndpoint.fromRawJson(String str) =>
      FluffyModalEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyModalEndpoint.fromJson(Map<String, dynamic> json) =>
      FluffyModalEndpoint(
        modal: json["modal"] == null
            ? null
            : TentacledModal.fromJson(json["modal"]),
      );

  Map<String, dynamic> toJson() => {
        "modal": modal == null ? null : modal.toJson(),
      };
}

class TentacledModal {
  TentacledModal({
    this.modalWithTitleAndButtonRenderer,
  });

  final TentacledModalWithTitleAndButtonRenderer
      modalWithTitleAndButtonRenderer;

  factory TentacledModal.fromRawJson(String str) =>
      TentacledModal.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledModal.fromJson(Map<String, dynamic> json) => TentacledModal(
        modalWithTitleAndButtonRenderer:
            json["modalWithTitleAndButtonRenderer"] == null
                ? null
                : TentacledModalWithTitleAndButtonRenderer.fromJson(
                    json["modalWithTitleAndButtonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "modalWithTitleAndButtonRenderer":
            modalWithTitleAndButtonRenderer == null
                ? null
                : modalWithTitleAndButtonRenderer.toJson(),
      };
}

class TentacledModalWithTitleAndButtonRenderer {
  TentacledModalWithTitleAndButtonRenderer({
    this.title,
    this.content,
    this.button,
  });

  final DateText title;
  final DateText content;
  final TentacledButton button;

  factory TentacledModalWithTitleAndButtonRenderer.fromRawJson(String str) =>
      TentacledModalWithTitleAndButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledModalWithTitleAndButtonRenderer.fromJson(
          Map<String, dynamic> json) =>
      TentacledModalWithTitleAndButtonRenderer(
        title: json["title"] == null ? null : DateText.fromJson(json["title"]),
        content:
            json["content"] == null ? null : DateText.fromJson(json["content"]),
        button: json["button"] == null
            ? null
            : TentacledButton.fromJson(json["button"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title.toJson(),
        "content": content == null ? null : content.toJson(),
        "button": button == null ? null : button.toJson(),
      };
}

class TentacledButton {
  TentacledButton({
    this.buttonRenderer,
  });

  final TentacledButtonRenderer buttonRenderer;

  factory TentacledButton.fromRawJson(String str) =>
      TentacledButton.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledButton.fromJson(Map<String, dynamic> json) =>
      TentacledButton(
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : TentacledButtonRenderer.fromJson(json["buttonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toJson(),
      };
}

class TentacledButtonRenderer {
  TentacledButtonRenderer({
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
  final DateText text;
  final StickyNavigationEndpoint navigationEndpoint;
  final String trackingParams;

  factory TentacledButtonRenderer.fromRawJson(String str) =>
      TentacledButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledButtonRenderer.fromJson(Map<String, dynamic> json) =>
      TentacledButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        text: json["text"] == null ? null : DateText.fromJson(json["text"]),
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
    this.signInEndpoint,
  });

  final String clickTrackingParams;
  final AutoplayVideoCommandMetadata commandMetadata;
  final FluffySignInEndpoint signInEndpoint;

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
            : AutoplayVideoCommandMetadata.fromJson(json["commandMetadata"]),
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

  final Endpoint nextEndpoint;
  final String continueAction;
  final String idamTag;

  factory FluffySignInEndpoint.fromRawJson(String str) =>
      FluffySignInEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffySignInEndpoint.fromJson(Map<String, dynamic> json) =>
      FluffySignInEndpoint(
        nextEndpoint: json["nextEndpoint"] == null
            ? null
            : Endpoint.fromJson(json["nextEndpoint"]),
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

class TwoColumnWatchNextResultsSecondaryResults {
  TwoColumnWatchNextResultsSecondaryResults({
    this.secondaryResults,
  });

  final SecondaryResultsSecondaryResults secondaryResults;

  factory TwoColumnWatchNextResultsSecondaryResults.fromRawJson(String str) =>
      TwoColumnWatchNextResultsSecondaryResults.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TwoColumnWatchNextResultsSecondaryResults.fromJson(
          Map<String, dynamic> json) =>
      TwoColumnWatchNextResultsSecondaryResults(
        secondaryResults: json["secondaryResults"] == null
            ? null
            : SecondaryResultsSecondaryResults.fromJson(
                json["secondaryResults"]),
      );

  Map<String, dynamic> toJson() => {
        "secondaryResults":
            secondaryResults == null ? null : secondaryResults.toJson(),
      };
}

class SecondaryResultsSecondaryResults {
  SecondaryResultsSecondaryResults({
    this.results,
    this.continuations,
    this.trackingParams,
  });

  final List<SecondaryResultsResult> results;
  final List<Continuation> continuations;
  final String trackingParams;

  factory SecondaryResultsSecondaryResults.fromRawJson(String str) =>
      SecondaryResultsSecondaryResults.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SecondaryResultsSecondaryResults.fromJson(
          Map<String, dynamic> json) =>
      SecondaryResultsSecondaryResults(
        results: json["results"] == null
            ? null
            : List<SecondaryResultsResult>.from(
                json["results"].map((x) => SecondaryResultsResult.fromJson(x))),
        continuations: json["continuations"] == null
            ? null
            : List<Continuation>.from(
                json["continuations"].map((x) => Continuation.fromJson(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "results": results == null
            ? null
            : List<dynamic>.from(results.map((x) => x.toJson())),
        "continuations": continuations == null
            ? null
            : List<dynamic>.from(continuations.map((x) => x.toJson())),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class SecondaryResultsResult {
  SecondaryResultsResult({
    this.compactAutoplayRenderer,
    this.compactVideoRenderer,
    this.compactRadioRenderer,
  });

  final CompactAutoplayRenderer compactAutoplayRenderer;
  final ResultCompactVideoRenderer compactVideoRenderer;
  final CompactRadioRenderer compactRadioRenderer;

  factory SecondaryResultsResult.fromRawJson(String str) =>
      SecondaryResultsResult.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SecondaryResultsResult.fromJson(Map<String, dynamic> json) =>
      SecondaryResultsResult(
        compactAutoplayRenderer: json["compactAutoplayRenderer"] == null
            ? null
            : CompactAutoplayRenderer.fromJson(json["compactAutoplayRenderer"]),
        compactVideoRenderer: json["compactVideoRenderer"] == null
            ? null
            : ResultCompactVideoRenderer.fromJson(json["compactVideoRenderer"]),
        compactRadioRenderer: json["compactRadioRenderer"] == null
            ? null
            : CompactRadioRenderer.fromJson(json["compactRadioRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "compactAutoplayRenderer": compactAutoplayRenderer == null
            ? null
            : compactAutoplayRenderer.toJson(),
        "compactVideoRenderer":
            compactVideoRenderer == null ? null : compactVideoRenderer.toJson(),
        "compactRadioRenderer":
            compactRadioRenderer == null ? null : compactRadioRenderer.toJson(),
      };
}

class CompactAutoplayRenderer {
  CompactAutoplayRenderer({
    this.title,
    this.toggleDescription,
    this.infoIcon,
    this.infoText,
    this.contents,
    this.trackingParams,
  });

  final DateText title;
  final TextClass toggleDescription;
  final IconImage infoIcon;
  final TextClass infoText;
  final List<CompactAutoplayRendererContent> contents;
  final String trackingParams;

  factory CompactAutoplayRenderer.fromRawJson(String str) =>
      CompactAutoplayRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CompactAutoplayRenderer.fromJson(Map<String, dynamic> json) =>
      CompactAutoplayRenderer(
        title: json["title"] == null ? null : DateText.fromJson(json["title"]),
        toggleDescription: json["toggleDescription"] == null
            ? null
            : TextClass.fromJson(json["toggleDescription"]),
        infoIcon: json["infoIcon"] == null
            ? null
            : IconImage.fromJson(json["infoIcon"]),
        infoText: json["infoText"] == null
            ? null
            : TextClass.fromJson(json["infoText"]),
        contents: json["contents"] == null
            ? null
            : List<CompactAutoplayRendererContent>.from(json["contents"]
                .map((x) => CompactAutoplayRendererContent.fromJson(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title.toJson(),
        "toggleDescription":
            toggleDescription == null ? null : toggleDescription.toJson(),
        "infoIcon": infoIcon == null ? null : infoIcon.toJson(),
        "infoText": infoText == null ? null : infoText.toJson(),
        "contents": contents == null
            ? null
            : List<dynamic>.from(contents.map((x) => x.toJson())),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class CompactAutoplayRendererContent {
  CompactAutoplayRendererContent({
    this.compactVideoRenderer,
  });

  final ContentCompactVideoRenderer compactVideoRenderer;

  factory CompactAutoplayRendererContent.fromRawJson(String str) =>
      CompactAutoplayRendererContent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CompactAutoplayRendererContent.fromJson(Map<String, dynamic> json) =>
      CompactAutoplayRendererContent(
        compactVideoRenderer: json["compactVideoRenderer"] == null
            ? null
            : ContentCompactVideoRenderer.fromJson(
                json["compactVideoRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "compactVideoRenderer":
            compactVideoRenderer == null ? null : compactVideoRenderer.toJson(),
      };
}

class ContentCompactVideoRenderer {
  ContentCompactVideoRenderer({
    this.videoId,
    this.thumbnail,
    this.title,
    this.longBylineText,
    this.publishedTimeText,
    this.viewCountText,
    this.lengthText,
    this.navigationEndpoint,
    this.shortBylineText,
    this.channelThumbnail,
    this.ownerBadges,
    this.trackingParams,
    this.channelId,
    this.shortViewCountText,
    this.menu,
    this.thumbnailOverlays,
    this.accessibility,
  });

  final String videoId;
  final ChannelThumbnailClass thumbnail;
  final LengthText title;
  final BylineText longBylineText;
  final DateText publishedTimeText;
  final DateText viewCountText;
  final LengthText lengthText;
  final CompactVideoRendererNavigationEndpoint navigationEndpoint;
  final BylineText shortBylineText;
  final ChannelThumbnailClass channelThumbnail;
  final List<OwnerBadgeElement> ownerBadges;
  final String trackingParams;
  final String channelId;
  final DateText shortViewCountText;
  final CompactVideoRendererMenu menu;
  final List<CompactVideoRendererThumbnailOverlay> thumbnailOverlays;
  final AccessibilityData accessibility;

  factory ContentCompactVideoRenderer.fromRawJson(String str) =>
      ContentCompactVideoRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ContentCompactVideoRenderer.fromJson(Map<String, dynamic> json) =>
      ContentCompactVideoRenderer(
        videoId: json["videoId"] == null ? null : json["videoId"],
        thumbnail: json["thumbnail"] == null
            ? null
            : ChannelThumbnailClass.fromJson(json["thumbnail"]),
        title:
            json["title"] == null ? null : LengthText.fromJson(json["title"]),
        longBylineText: json["longBylineText"] == null
            ? null
            : BylineText.fromJson(json["longBylineText"]),
        publishedTimeText: json["publishedTimeText"] == null
            ? null
            : DateText.fromJson(json["publishedTimeText"]),
        viewCountText: json["viewCountText"] == null
            ? null
            : DateText.fromJson(json["viewCountText"]),
        lengthText: json["lengthText"] == null
            ? null
            : LengthText.fromJson(json["lengthText"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : CompactVideoRendererNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
        shortBylineText: json["shortBylineText"] == null
            ? null
            : BylineText.fromJson(json["shortBylineText"]),
        channelThumbnail: json["channelThumbnail"] == null
            ? null
            : ChannelThumbnailClass.fromJson(json["channelThumbnail"]),
        ownerBadges: json["ownerBadges"] == null
            ? null
            : List<OwnerBadgeElement>.from(
                json["ownerBadges"].map((x) => OwnerBadgeElement.fromJson(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        channelId: json["channelId"] == null ? null : json["channelId"],
        shortViewCountText: json["shortViewCountText"] == null
            ? null
            : DateText.fromJson(json["shortViewCountText"]),
        menu: json["menu"] == null
            ? null
            : CompactVideoRendererMenu.fromJson(json["menu"]),
        thumbnailOverlays: json["thumbnailOverlays"] == null
            ? null
            : List<CompactVideoRendererThumbnailOverlay>.from(
                json["thumbnailOverlays"].map(
                    (x) => CompactVideoRendererThumbnailOverlay.fromJson(x))),
        accessibility: json["accessibility"] == null
            ? null
            : AccessibilityData.fromJson(json["accessibility"]),
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId == null ? null : videoId,
        "thumbnail": thumbnail == null ? null : thumbnail.toJson(),
        "title": title == null ? null : title.toJson(),
        "longBylineText":
            longBylineText == null ? null : longBylineText.toJson(),
        "publishedTimeText":
            publishedTimeText == null ? null : publishedTimeText.toJson(),
        "viewCountText": viewCountText == null ? null : viewCountText.toJson(),
        "lengthText": lengthText == null ? null : lengthText.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "shortBylineText":
            shortBylineText == null ? null : shortBylineText.toJson(),
        "channelThumbnail":
            channelThumbnail == null ? null : channelThumbnail.toJson(),
        "ownerBadges": ownerBadges == null
            ? null
            : List<dynamic>.from(ownerBadges.map((x) => x.toJson())),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "channelId": channelId == null ? null : channelId,
        "shortViewCountText":
            shortViewCountText == null ? null : shortViewCountText.toJson(),
        "menu": menu == null ? null : menu.toJson(),
        "thumbnailOverlays": thumbnailOverlays == null
            ? null
            : List<dynamic>.from(thumbnailOverlays.map((x) => x.toJson())),
        "accessibility": accessibility == null ? null : accessibility.toJson(),
      };
}

class BylineText {
  BylineText({
    this.runs,
  });

  final List<LongBylineTextRun> runs;

  factory BylineText.fromRawJson(String str) =>
      BylineText.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BylineText.fromJson(Map<String, dynamic> json) => BylineText(
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
  final VideoOwnerRendererNavigationEndpoint navigationEndpoint;

  factory LongBylineTextRun.fromRawJson(String str) =>
      LongBylineTextRun.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LongBylineTextRun.fromJson(Map<String, dynamic> json) =>
      LongBylineTextRun(
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

class CompactVideoRendererMenu {
  CompactVideoRendererMenu({
    this.menuRenderer,
  });

  final PurpleMenuRenderer menuRenderer;

  factory CompactVideoRendererMenu.fromRawJson(String str) =>
      CompactVideoRendererMenu.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CompactVideoRendererMenu.fromJson(Map<String, dynamic> json) =>
      CompactVideoRendererMenu(
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
    this.targetId,
  });

  final List<FluffyItem> items;
  final String trackingParams;
  final AccessibilityData accessibility;
  final String targetId;

  factory PurpleMenuRenderer.fromRawJson(String str) =>
      PurpleMenuRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleMenuRenderer.fromJson(Map<String, dynamic> json) =>
      PurpleMenuRenderer(
        items: json["items"] == null
            ? null
            : List<FluffyItem>.from(
                json["items"].map((x) => FluffyItem.fromJson(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        accessibility: json["accessibility"] == null
            ? null
            : AccessibilityData.fromJson(json["accessibility"]),
        targetId: json["targetId"] == null ? null : json["targetId"],
      );

  Map<String, dynamic> toJson() => {
        "items": items == null
            ? null
            : List<dynamic>.from(items.map((x) => x.toJson())),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "accessibility": accessibility == null ? null : accessibility.toJson(),
        "targetId": targetId == null ? null : targetId,
      };
}

class FluffyItem {
  FluffyItem({
    this.menuServiceItemRenderer,
  });

  final MenuItemRenderer menuServiceItemRenderer;

  factory FluffyItem.fromRawJson(String str) =>
      FluffyItem.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyItem.fromJson(Map<String, dynamic> json) => FluffyItem(
        menuServiceItemRenderer: json["menuServiceItemRenderer"] == null
            ? null
            : MenuItemRenderer.fromJson(json["menuServiceItemRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "menuServiceItemRenderer": menuServiceItemRenderer == null
            ? null
            : menuServiceItemRenderer.toJson(),
      };
}

class CompactVideoRendererNavigationEndpoint {
  CompactVideoRendererNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.watchEndpoint,
  });

  final String clickTrackingParams;
  final AutoplayVideoCommandMetadata commandMetadata;
  final PurpleWatchEndpoint watchEndpoint;

  factory CompactVideoRendererNavigationEndpoint.fromRawJson(String str) =>
      CompactVideoRendererNavigationEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CompactVideoRendererNavigationEndpoint.fromJson(
          Map<String, dynamic> json) =>
      CompactVideoRendererNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : AutoplayVideoCommandMetadata.fromJson(json["commandMetadata"]),
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

class PurpleWatchEndpoint {
  PurpleWatchEndpoint({
    this.videoId,
    this.nofollow,
  });

  final String videoId;
  final bool nofollow;

  factory PurpleWatchEndpoint.fromRawJson(String str) =>
      PurpleWatchEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleWatchEndpoint.fromJson(Map<String, dynamic> json) =>
      PurpleWatchEndpoint(
        videoId: json["videoId"] == null ? null : json["videoId"],
        nofollow: json["nofollow"] == null ? null : json["nofollow"],
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId == null ? null : videoId,
        "nofollow": nofollow == null ? null : nofollow,
      };
}

class CompactVideoRendererThumbnailOverlay {
  CompactVideoRendererThumbnailOverlay({
    this.thumbnailOverlayTimeStatusRenderer,
    this.thumbnailOverlayToggleButtonRenderer,
    this.thumbnailOverlayNowPlayingRenderer,
  });

  final ThumbnailOverlayTimeStatusRenderer thumbnailOverlayTimeStatusRenderer;
  final ThumbnailOverlayToggleButtonRenderer
      thumbnailOverlayToggleButtonRenderer;
  final ThumbnailOverlayNowPlayingRenderer thumbnailOverlayNowPlayingRenderer;

  factory CompactVideoRendererThumbnailOverlay.fromRawJson(String str) =>
      CompactVideoRendererThumbnailOverlay.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CompactVideoRendererThumbnailOverlay.fromJson(
          Map<String, dynamic> json) =>
      CompactVideoRendererThumbnailOverlay(
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

class ThumbnailOverlayNowPlayingRenderer {
  ThumbnailOverlayNowPlayingRenderer({
    this.text,
  });

  final TextClass text;

  factory ThumbnailOverlayNowPlayingRenderer.fromRawJson(String str) =>
      ThumbnailOverlayNowPlayingRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ThumbnailOverlayNowPlayingRenderer.fromJson(
          Map<String, dynamic> json) =>
      ThumbnailOverlayNowPlayingRenderer(
        text: json["text"] == null ? null : TextClass.fromJson(json["text"]),
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

  final LengthText text;
  final ThumbnailOverlayTimeStatusRendererStyle style;

  factory ThumbnailOverlayTimeStatusRenderer.fromRawJson(String str) =>
      ThumbnailOverlayTimeStatusRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ThumbnailOverlayTimeStatusRenderer.fromJson(
          Map<String, dynamic> json) =>
      ThumbnailOverlayTimeStatusRenderer(
        text: json["text"] == null ? null : LengthText.fromJson(json["text"]),
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

  final HilariousAction action;
  final String removedVideoId;

  factory FluffyAction.fromRawJson(String str) =>
      FluffyAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyAction.fromJson(Map<String, dynamic> json) => FluffyAction(
        action: json["action"] == null
            ? null
            : hilariousActionValues.map[json["action"]],
        removedVideoId:
            json["removedVideoId"] == null ? null : json["removedVideoId"],
      );

  Map<String, dynamic> toJson() => {
        "action": action == null ? null : hilariousActionValues.reverse[action],
        "removedVideoId": removedVideoId == null ? null : removedVideoId,
      };
}

enum HilariousAction { ACTION_REMOVE_VIDEO_BY_VIDEO_ID }

final hilariousActionValues = EnumValues({
  "ACTION_REMOVE_VIDEO_BY_VIDEO_ID":
      HilariousAction.ACTION_REMOVE_VIDEO_BY_VIDEO_ID
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
            : OnCreateListCommandCommandMetadata.fromJson(
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
  final AmbitiousAction action;

  factory TentacledAction.fromRawJson(String str) =>
      TentacledAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledAction.fromJson(Map<String, dynamic> json) =>
      TentacledAction(
        addedVideoId:
            json["addedVideoId"] == null ? null : json["addedVideoId"],
        action: json["action"] == null
            ? null
            : ambitiousActionValues.map[json["action"]],
      );

  Map<String, dynamic> toJson() => {
        "addedVideoId": addedVideoId == null ? null : addedVideoId,
        "action": action == null ? null : ambitiousActionValues.reverse[action],
      };
}

enum AmbitiousAction { ACTION_ADD_VIDEO }

final ambitiousActionValues =
    EnumValues({"ACTION_ADD_VIDEO": AmbitiousAction.ACTION_ADD_VIDEO});

class UntoggledServiceEndpointSignalServiceEndpoint {
  UntoggledServiceEndpointSignalServiceEndpoint({
    this.signal,
    this.actions,
  });

  final Signal signal;
  final List<StickyAction> actions;

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
    this.clickTrackingParams,
    this.addToPlaylistCommand,
  });

  final String clickTrackingParams;
  final AddToPlaylistCommand addToPlaylistCommand;

  factory StickyAction.fromRawJson(String str) =>
      StickyAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StickyAction.fromJson(Map<String, dynamic> json) => StickyAction(
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

enum UntoggledTooltip { WATCH_LATER, ADD_TO_QUEUE }

final untoggledTooltipValues = EnumValues({
  "Add to queue": UntoggledTooltip.ADD_TO_QUEUE,
  "Watch later": UntoggledTooltip.WATCH_LATER
});

class CompactRadioRenderer {
  CompactRadioRenderer({
    this.playlistId,
    this.thumbnail,
    this.title,
    this.navigationEndpoint,
    this.videoCountText,
    this.secondaryNavigationEndpoint,
    this.shortBylineText,
    this.longBylineText,
    this.trackingParams,
    this.thumbnailText,
    this.videoCountShortText,
    this.shareUrl,
    this.thumbnailOverlays,
  });

  final String playlistId;
  final ChannelThumbnailClass thumbnail;
  final DateText title;
  final SecondaryNavigationEndpointClass navigationEndpoint;
  final TextClass videoCountText;
  final SecondaryNavigationEndpointClass secondaryNavigationEndpoint;
  final DateText shortBylineText;
  final DateText longBylineText;
  final String trackingParams;
  final TextClass thumbnailText;
  final TextClass videoCountShortText;
  final String shareUrl;
  final List<CompactRadioRendererThumbnailOverlay> thumbnailOverlays;

  factory CompactRadioRenderer.fromRawJson(String str) =>
      CompactRadioRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CompactRadioRenderer.fromJson(Map<String, dynamic> json) =>
      CompactRadioRenderer(
        playlistId: json["playlistId"] == null ? null : json["playlistId"],
        thumbnail: json["thumbnail"] == null
            ? null
            : ChannelThumbnailClass.fromJson(json["thumbnail"]),
        title: json["title"] == null ? null : DateText.fromJson(json["title"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : SecondaryNavigationEndpointClass.fromJson(
                json["navigationEndpoint"]),
        videoCountText: json["videoCountText"] == null
            ? null
            : TextClass.fromJson(json["videoCountText"]),
        secondaryNavigationEndpoint: json["secondaryNavigationEndpoint"] == null
            ? null
            : SecondaryNavigationEndpointClass.fromJson(
                json["secondaryNavigationEndpoint"]),
        shortBylineText: json["shortBylineText"] == null
            ? null
            : DateText.fromJson(json["shortBylineText"]),
        longBylineText: json["longBylineText"] == null
            ? null
            : DateText.fromJson(json["longBylineText"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        thumbnailText: json["thumbnailText"] == null
            ? null
            : TextClass.fromJson(json["thumbnailText"]),
        videoCountShortText: json["videoCountShortText"] == null
            ? null
            : TextClass.fromJson(json["videoCountShortText"]),
        shareUrl: json["shareUrl"] == null ? null : json["shareUrl"],
        thumbnailOverlays: json["thumbnailOverlays"] == null
            ? null
            : List<CompactRadioRendererThumbnailOverlay>.from(
                json["thumbnailOverlays"].map(
                    (x) => CompactRadioRendererThumbnailOverlay.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "playlistId": playlistId == null ? null : playlistId,
        "thumbnail": thumbnail == null ? null : thumbnail.toJson(),
        "title": title == null ? null : title.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "videoCountText":
            videoCountText == null ? null : videoCountText.toJson(),
        "secondaryNavigationEndpoint": secondaryNavigationEndpoint == null
            ? null
            : secondaryNavigationEndpoint.toJson(),
        "shortBylineText":
            shortBylineText == null ? null : shortBylineText.toJson(),
        "longBylineText":
            longBylineText == null ? null : longBylineText.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "thumbnailText": thumbnailText == null ? null : thumbnailText.toJson(),
        "videoCountShortText":
            videoCountShortText == null ? null : videoCountShortText.toJson(),
        "shareUrl": shareUrl == null ? null : shareUrl,
        "thumbnailOverlays": thumbnailOverlays == null
            ? null
            : List<dynamic>.from(thumbnailOverlays.map((x) => x.toJson())),
      };
}

class SecondaryNavigationEndpointClass {
  SecondaryNavigationEndpointClass({
    this.clickTrackingParams,
    this.commandMetadata,
    this.watchEndpoint,
  });

  final String clickTrackingParams;
  final AutoplayVideoCommandMetadata commandMetadata;
  final SecondaryNavigationEndpointWatchEndpoint watchEndpoint;

  factory SecondaryNavigationEndpointClass.fromRawJson(String str) =>
      SecondaryNavigationEndpointClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SecondaryNavigationEndpointClass.fromJson(
          Map<String, dynamic> json) =>
      SecondaryNavigationEndpointClass(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : AutoplayVideoCommandMetadata.fromJson(json["commandMetadata"]),
        watchEndpoint: json["watchEndpoint"] == null
            ? null
            : SecondaryNavigationEndpointWatchEndpoint.fromJson(
                json["watchEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "watchEndpoint": watchEndpoint == null ? null : watchEndpoint.toJson(),
      };
}

class SecondaryNavigationEndpointWatchEndpoint {
  SecondaryNavigationEndpointWatchEndpoint({
    this.videoId,
    this.playlistId,
    this.params,
    this.continuePlayback,
  });

  final String videoId;
  final String playlistId;
  final String params;
  final bool continuePlayback;

  factory SecondaryNavigationEndpointWatchEndpoint.fromRawJson(String str) =>
      SecondaryNavigationEndpointWatchEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SecondaryNavigationEndpointWatchEndpoint.fromJson(
          Map<String, dynamic> json) =>
      SecondaryNavigationEndpointWatchEndpoint(
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

class CompactRadioRendererThumbnailOverlay {
  CompactRadioRendererThumbnailOverlay({
    this.thumbnailOverlaySidePanelRenderer,
    this.thumbnailOverlayHoverTextRenderer,
    this.thumbnailOverlayNowPlayingRenderer,
  });

  final ThumbnailOverlayRenderer thumbnailOverlaySidePanelRenderer;
  final ThumbnailOverlayRenderer thumbnailOverlayHoverTextRenderer;
  final ThumbnailOverlayNowPlayingRenderer thumbnailOverlayNowPlayingRenderer;

  factory CompactRadioRendererThumbnailOverlay.fromRawJson(String str) =>
      CompactRadioRendererThumbnailOverlay.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CompactRadioRendererThumbnailOverlay.fromJson(
          Map<String, dynamic> json) =>
      CompactRadioRendererThumbnailOverlay(
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

  final TextClass text;
  final IconImage icon;

  factory ThumbnailOverlayRenderer.fromRawJson(String str) =>
      ThumbnailOverlayRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ThumbnailOverlayRenderer.fromJson(Map<String, dynamic> json) =>
      ThumbnailOverlayRenderer(
        text: json["text"] == null ? null : TextClass.fromJson(json["text"]),
        icon: json["icon"] == null ? null : IconImage.fromJson(json["icon"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text.toJson(),
        "icon": icon == null ? null : icon.toJson(),
      };
}

class ResultCompactVideoRenderer {
  ResultCompactVideoRenderer({
    this.videoId,
    this.thumbnail,
    this.title,
    this.longBylineText,
    this.publishedTimeText,
    this.viewCountText,
    this.lengthText,
    this.navigationEndpoint,
    this.shortBylineText,
    this.channelThumbnail,
    this.ownerBadges,
    this.trackingParams,
    this.channelId,
    this.shortViewCountText,
    this.menu,
    this.thumbnailOverlays,
    this.accessibility,
    this.badges,
  });

  final String videoId;
  final ChannelThumbnailClass thumbnail;
  final LengthText title;
  final BylineText longBylineText;
  final DateText publishedTimeText;
  final DateText viewCountText;
  final LengthText lengthText;
  final CompactVideoRendererNavigationEndpoint navigationEndpoint;
  final BylineText shortBylineText;
  final ChannelThumbnailClass channelThumbnail;
  final List<OwnerBadgeElement> ownerBadges;
  final String trackingParams;
  final String channelId;
  final DateText shortViewCountText;
  final CompactVideoRendererMenu menu;
  final List<CompactVideoRendererThumbnailOverlay> thumbnailOverlays;
  final AccessibilityData accessibility;
  final List<PurpleBadge> badges;

  factory ResultCompactVideoRenderer.fromRawJson(String str) =>
      ResultCompactVideoRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ResultCompactVideoRenderer.fromJson(Map<String, dynamic> json) =>
      ResultCompactVideoRenderer(
        videoId: json["videoId"] == null ? null : json["videoId"],
        thumbnail: json["thumbnail"] == null
            ? null
            : ChannelThumbnailClass.fromJson(json["thumbnail"]),
        title:
            json["title"] == null ? null : LengthText.fromJson(json["title"]),
        longBylineText: json["longBylineText"] == null
            ? null
            : BylineText.fromJson(json["longBylineText"]),
        publishedTimeText: json["publishedTimeText"] == null
            ? null
            : DateText.fromJson(json["publishedTimeText"]),
        viewCountText: json["viewCountText"] == null
            ? null
            : DateText.fromJson(json["viewCountText"]),
        lengthText: json["lengthText"] == null
            ? null
            : LengthText.fromJson(json["lengthText"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : CompactVideoRendererNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
        shortBylineText: json["shortBylineText"] == null
            ? null
            : BylineText.fromJson(json["shortBylineText"]),
        channelThumbnail: json["channelThumbnail"] == null
            ? null
            : ChannelThumbnailClass.fromJson(json["channelThumbnail"]),
        ownerBadges: json["ownerBadges"] == null
            ? null
            : List<OwnerBadgeElement>.from(
                json["ownerBadges"].map((x) => OwnerBadgeElement.fromJson(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        channelId: json["channelId"] == null ? null : json["channelId"],
        shortViewCountText: json["shortViewCountText"] == null
            ? null
            : DateText.fromJson(json["shortViewCountText"]),
        menu: json["menu"] == null
            ? null
            : CompactVideoRendererMenu.fromJson(json["menu"]),
        thumbnailOverlays: json["thumbnailOverlays"] == null
            ? null
            : List<CompactVideoRendererThumbnailOverlay>.from(
                json["thumbnailOverlays"].map(
                    (x) => CompactVideoRendererThumbnailOverlay.fromJson(x))),
        accessibility: json["accessibility"] == null
            ? null
            : AccessibilityData.fromJson(json["accessibility"]),
        badges: json["badges"] == null
            ? null
            : List<PurpleBadge>.from(
                json["badges"].map((x) => PurpleBadge.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId == null ? null : videoId,
        "thumbnail": thumbnail == null ? null : thumbnail.toJson(),
        "title": title == null ? null : title.toJson(),
        "longBylineText":
            longBylineText == null ? null : longBylineText.toJson(),
        "publishedTimeText":
            publishedTimeText == null ? null : publishedTimeText.toJson(),
        "viewCountText": viewCountText == null ? null : viewCountText.toJson(),
        "lengthText": lengthText == null ? null : lengthText.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "shortBylineText":
            shortBylineText == null ? null : shortBylineText.toJson(),
        "channelThumbnail":
            channelThumbnail == null ? null : channelThumbnail.toJson(),
        "ownerBadges": ownerBadges == null
            ? null
            : List<dynamic>.from(ownerBadges.map((x) => x.toJson())),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "channelId": channelId == null ? null : channelId,
        "shortViewCountText":
            shortViewCountText == null ? null : shortViewCountText.toJson(),
        "menu": menu == null ? null : menu.toJson(),
        "thumbnailOverlays": thumbnailOverlays == null
            ? null
            : List<dynamic>.from(thumbnailOverlays.map((x) => x.toJson())),
        "accessibility": accessibility == null ? null : accessibility.toJson(),
        "badges": badges == null
            ? null
            : List<dynamic>.from(badges.map((x) => x.toJson())),
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
  });

  final String style;
  final String label;
  final String trackingParams;

  factory PurpleMetadataBadgeRenderer.fromRawJson(String str) =>
      PurpleMetadataBadgeRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleMetadataBadgeRenderer.fromJson(Map<String, dynamic> json) =>
      PurpleMetadataBadgeRenderer(
        style: json["style"] == null ? null : json["style"],
        label: json["label"] == null ? null : json["label"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "style": style == null ? null : style,
        "label": label == null ? null : label,
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class EngagementPanel {
  EngagementPanel({
    this.engagementPanelSectionListRenderer,
  });

  final EngagementPanelSectionListRenderer engagementPanelSectionListRenderer;

  factory EngagementPanel.fromRawJson(String str) =>
      EngagementPanel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EngagementPanel.fromJson(Map<String, dynamic> json) =>
      EngagementPanel(
        engagementPanelSectionListRenderer:
            json["engagementPanelSectionListRenderer"] == null
                ? null
                : EngagementPanelSectionListRenderer.fromJson(
                    json["engagementPanelSectionListRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "engagementPanelSectionListRenderer":
            engagementPanelSectionListRenderer == null
                ? null
                : engagementPanelSectionListRenderer.toJson(),
      };
}

class EngagementPanelSectionListRenderer {
  EngagementPanelSectionListRenderer({
    this.panelIdentifier,
    this.content,
    this.targetId,
    this.visibility,
    this.header,
  });

  final String panelIdentifier;
  final EngagementPanelSectionListRendererContent content;
  final String targetId;
  final String visibility;
  final Header header;

  factory EngagementPanelSectionListRenderer.fromRawJson(String str) =>
      EngagementPanelSectionListRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EngagementPanelSectionListRenderer.fromJson(
          Map<String, dynamic> json) =>
      EngagementPanelSectionListRenderer(
        panelIdentifier:
            json["panelIdentifier"] == null ? null : json["panelIdentifier"],
        content: json["content"] == null
            ? null
            : EngagementPanelSectionListRendererContent.fromJson(
                json["content"]),
        targetId: json["targetId"] == null ? null : json["targetId"],
        visibility: json["visibility"] == null ? null : json["visibility"],
        header: json["header"] == null ? null : Header.fromJson(json["header"]),
      );

  Map<String, dynamic> toJson() => {
        "panelIdentifier": panelIdentifier == null ? null : panelIdentifier,
        "content": content == null ? null : content.toJson(),
        "targetId": targetId == null ? null : targetId,
        "visibility": visibility == null ? null : visibility,
        "header": header == null ? null : header.toJson(),
      };
}

class EngagementPanelSectionListRendererContent {
  EngagementPanelSectionListRendererContent({
    this.adsEngagementPanelContentRenderer,
    this.continuationItemRenderer,
  });

  final AdsEngagementPanelContentRenderer adsEngagementPanelContentRenderer;
  final ContinuationItemRenderer continuationItemRenderer;

  factory EngagementPanelSectionListRendererContent.fromRawJson(String str) =>
      EngagementPanelSectionListRendererContent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EngagementPanelSectionListRendererContent.fromJson(
          Map<String, dynamic> json) =>
      EngagementPanelSectionListRendererContent(
        adsEngagementPanelContentRenderer:
            json["adsEngagementPanelContentRenderer"] == null
                ? null
                : AdsEngagementPanelContentRenderer.fromJson(
                    json["adsEngagementPanelContentRenderer"]),
        continuationItemRenderer: json["continuationItemRenderer"] == null
            ? null
            : ContinuationItemRenderer.fromJson(
                json["continuationItemRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "adsEngagementPanelContentRenderer":
            adsEngagementPanelContentRenderer == null
                ? null
                : adsEngagementPanelContentRenderer.toJson(),
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
    this.getTranscriptEndpoint,
  });

  final String clickTrackingParams;
  final OnCreateListCommandCommandMetadata commandMetadata;
  final GetTranscriptEndpoint getTranscriptEndpoint;

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
            : OnCreateListCommandCommandMetadata.fromJson(
                json["commandMetadata"]),
        getTranscriptEndpoint: json["getTranscriptEndpoint"] == null
            ? null
            : GetTranscriptEndpoint.fromJson(json["getTranscriptEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "getTranscriptEndpoint": getTranscriptEndpoint == null
            ? null
            : getTranscriptEndpoint.toJson(),
      };
}

class GetTranscriptEndpoint {
  GetTranscriptEndpoint({
    this.params,
  });

  final String params;

  factory GetTranscriptEndpoint.fromRawJson(String str) =>
      GetTranscriptEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetTranscriptEndpoint.fromJson(Map<String, dynamic> json) =>
      GetTranscriptEndpoint(
        params: json["params"] == null ? null : json["params"],
      );

  Map<String, dynamic> toJson() => {
        "params": params == null ? null : params,
      };
}

class Header {
  Header({
    this.engagementPanelTitleHeaderRenderer,
  });

  final EngagementPanelTitleHeaderRenderer engagementPanelTitleHeaderRenderer;

  factory Header.fromRawJson(String str) => Header.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Header.fromJson(Map<String, dynamic> json) => Header(
        engagementPanelTitleHeaderRenderer:
            json["engagementPanelTitleHeaderRenderer"] == null
                ? null
                : EngagementPanelTitleHeaderRenderer.fromJson(
                    json["engagementPanelTitleHeaderRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "engagementPanelTitleHeaderRenderer":
            engagementPanelTitleHeaderRenderer == null
                ? null
                : engagementPanelTitleHeaderRenderer.toJson(),
      };
}

class EngagementPanelTitleHeaderRenderer {
  EngagementPanelTitleHeaderRenderer({
    this.title,
    this.menu,
    this.visibilityButton,
    this.trackingParams,
  });

  final TextClass title;
  final EngagementPanelTitleHeaderRendererMenu menu;
  final VisibilityButton visibilityButton;
  final String trackingParams;

  factory EngagementPanelTitleHeaderRenderer.fromRawJson(String str) =>
      EngagementPanelTitleHeaderRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EngagementPanelTitleHeaderRenderer.fromJson(
          Map<String, dynamic> json) =>
      EngagementPanelTitleHeaderRenderer(
        title: json["title"] == null ? null : TextClass.fromJson(json["title"]),
        menu: json["menu"] == null
            ? null
            : EngagementPanelTitleHeaderRendererMenu.fromJson(json["menu"]),
        visibilityButton: json["visibilityButton"] == null
            ? null
            : VisibilityButton.fromJson(json["visibilityButton"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title.toJson(),
        "menu": menu == null ? null : menu.toJson(),
        "visibilityButton":
            visibilityButton == null ? null : visibilityButton.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class EngagementPanelTitleHeaderRendererMenu {
  EngagementPanelTitleHeaderRendererMenu({
    this.menuRenderer,
  });

  final FluffyMenuRenderer menuRenderer;

  factory EngagementPanelTitleHeaderRendererMenu.fromRawJson(String str) =>
      EngagementPanelTitleHeaderRendererMenu.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EngagementPanelTitleHeaderRendererMenu.fromJson(
          Map<String, dynamic> json) =>
      EngagementPanelTitleHeaderRendererMenu(
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

  final List<TentacledItem> items;
  final String trackingParams;
  final AccessibilityData accessibility;

  factory FluffyMenuRenderer.fromRawJson(String str) =>
      FluffyMenuRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyMenuRenderer.fromJson(Map<String, dynamic> json) =>
      FluffyMenuRenderer(
        items: json["items"] == null
            ? null
            : List<TentacledItem>.from(
                json["items"].map((x) => TentacledItem.fromJson(x))),
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

class TentacledItem {
  TentacledItem({
    this.menuServiceItemRenderer,
  });

  final MenuServiceItemRenderer menuServiceItemRenderer;

  factory TentacledItem.fromRawJson(String str) =>
      TentacledItem.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledItem.fromJson(Map<String, dynamic> json) => TentacledItem(
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
    this.serviceEndpoint,
    this.trackingParams,
  });

  final TextClass text;
  final OnResponseReceivedEndpoint serviceEndpoint;
  final String trackingParams;

  factory MenuServiceItemRenderer.fromRawJson(String str) =>
      MenuServiceItemRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MenuServiceItemRenderer.fromJson(Map<String, dynamic> json) =>
      MenuServiceItemRenderer(
        text: json["text"] == null ? null : TextClass.fromJson(json["text"]),
        serviceEndpoint: json["serviceEndpoint"] == null
            ? null
            : OnResponseReceivedEndpoint.fromJson(json["serviceEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text.toJson(),
        "serviceEndpoint":
            serviceEndpoint == null ? null : serviceEndpoint.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class OnResponseReceivedEndpoint {
  OnResponseReceivedEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signalServiceEndpoint,
  });

  final String clickTrackingParams;
  final OnResponseReceivedEndpointCommandMetadata commandMetadata;
  final OnResponseReceivedEndpointSignalServiceEndpoint signalServiceEndpoint;

  factory OnResponseReceivedEndpoint.fromRawJson(String str) =>
      OnResponseReceivedEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OnResponseReceivedEndpoint.fromJson(Map<String, dynamic> json) =>
      OnResponseReceivedEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : OnResponseReceivedEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        signalServiceEndpoint: json["signalServiceEndpoint"] == null
            ? null
            : OnResponseReceivedEndpointSignalServiceEndpoint.fromJson(
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

class OnResponseReceivedEndpointSignalServiceEndpoint {
  OnResponseReceivedEndpointSignalServiceEndpoint({
    this.signal,
    this.actions,
  });

  final Signal signal;
  final List<IndigoAction> actions;

  factory OnResponseReceivedEndpointSignalServiceEndpoint.fromRawJson(
          String str) =>
      OnResponseReceivedEndpointSignalServiceEndpoint.fromJson(
          json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OnResponseReceivedEndpointSignalServiceEndpoint.fromJson(
          Map<String, dynamic> json) =>
      OnResponseReceivedEndpointSignalServiceEndpoint(
        signal:
            json["signal"] == null ? null : signalValues.map[json["signal"]],
        actions: json["actions"] == null
            ? null
            : List<IndigoAction>.from(
                json["actions"].map((x) => IndigoAction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "signal": signal == null ? null : signalValues.reverse[signal],
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toJson())),
      };
}

class IndigoAction {
  IndigoAction({
    this.clickTrackingParams,
    this.signalAction,
  });

  final String clickTrackingParams;
  final SignalAction signalAction;

  factory IndigoAction.fromRawJson(String str) =>
      IndigoAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IndigoAction.fromJson(Map<String, dynamic> json) => IndigoAction(
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

class VisibilityButton {
  VisibilityButton({
    this.buttonRenderer,
  });

  final VisibilityButtonButtonRenderer buttonRenderer;

  factory VisibilityButton.fromRawJson(String str) =>
      VisibilityButton.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VisibilityButton.fromJson(Map<String, dynamic> json) =>
      VisibilityButton(
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : VisibilityButtonButtonRenderer.fromJson(json["buttonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toJson(),
      };
}

class VisibilityButtonButtonRenderer {
  VisibilityButtonButtonRenderer({
    this.icon,
    this.accessibility,
    this.trackingParams,
    this.accessibilityData,
    this.command,
  });

  final IconImage icon;
  final Accessibility accessibility;
  final String trackingParams;
  final AccessibilityData accessibilityData;
  final ButtonRendererCommand command;

  factory VisibilityButtonButtonRenderer.fromRawJson(String str) =>
      VisibilityButtonButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VisibilityButtonButtonRenderer.fromJson(Map<String, dynamic> json) =>
      VisibilityButtonButtonRenderer(
        icon: json["icon"] == null ? null : IconImage.fromJson(json["icon"]),
        accessibility: json["accessibility"] == null
            ? null
            : Accessibility.fromJson(json["accessibility"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        accessibilityData: json["accessibilityData"] == null
            ? null
            : AccessibilityData.fromJson(json["accessibilityData"]),
        command: json["command"] == null
            ? null
            : ButtonRendererCommand.fromJson(json["command"]),
      );

  Map<String, dynamic> toJson() => {
        "icon": icon == null ? null : icon.toJson(),
        "accessibility": accessibility == null ? null : accessibility.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "accessibilityData":
            accessibilityData == null ? null : accessibilityData.toJson(),
        "command": command == null ? null : command.toJson(),
      };
}

class ButtonRendererCommand {
  ButtonRendererCommand({
    this.clickTrackingParams,
    this.changeEngagementPanelVisibilityAction,
  });

  final String clickTrackingParams;
  final ChangeEngagementPanelVisibilityAction
      changeEngagementPanelVisibilityAction;

  factory ButtonRendererCommand.fromRawJson(String str) =>
      ButtonRendererCommand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ButtonRendererCommand.fromJson(Map<String, dynamic> json) =>
      ButtonRendererCommand(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        changeEngagementPanelVisibilityAction:
            json["changeEngagementPanelVisibilityAction"] == null
                ? null
                : ChangeEngagementPanelVisibilityAction.fromJson(
                    json["changeEngagementPanelVisibilityAction"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "changeEngagementPanelVisibilityAction":
            changeEngagementPanelVisibilityAction == null
                ? null
                : changeEngagementPanelVisibilityAction.toJson(),
      };
}

class FrameworkUpdates {
  FrameworkUpdates();

  factory FrameworkUpdates.fromRawJson(String str) =>
      FrameworkUpdates.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FrameworkUpdates.fromJson(Map<String, dynamic> json) =>
      FrameworkUpdates();

  Map<String, dynamic> toJson() => {};
}

class PlayerOverlays {
  PlayerOverlays({
    this.playerOverlayRenderer,
  });

  final PlayerOverlayRenderer playerOverlayRenderer;

  factory PlayerOverlays.fromRawJson(String str) =>
      PlayerOverlays.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlayerOverlays.fromJson(Map<String, dynamic> json) => PlayerOverlays(
        playerOverlayRenderer: json["playerOverlayRenderer"] == null
            ? null
            : PlayerOverlayRenderer.fromJson(json["playerOverlayRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "playerOverlayRenderer": playerOverlayRenderer == null
            ? null
            : playerOverlayRenderer.toJson(),
      };
}

class PlayerOverlayRenderer {
  PlayerOverlayRenderer({
    this.endScreen,
  });

  final EndScreen endScreen;

  factory PlayerOverlayRenderer.fromRawJson(String str) =>
      PlayerOverlayRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlayerOverlayRenderer.fromJson(Map<String, dynamic> json) =>
      PlayerOverlayRenderer(
        endScreen: json["endScreen"] == null
            ? null
            : EndScreen.fromJson(json["endScreen"]),
      );

  Map<String, dynamic> toJson() => {
        "endScreen": endScreen == null ? null : endScreen.toJson(),
      };
}

class EndScreen {
  EndScreen({
    this.watchNextEndScreenRenderer,
  });

  final WatchNextEndScreenRenderer watchNextEndScreenRenderer;

  factory EndScreen.fromRawJson(String str) =>
      EndScreen.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EndScreen.fromJson(Map<String, dynamic> json) => EndScreen(
        watchNextEndScreenRenderer: json["watchNextEndScreenRenderer"] == null
            ? null
            : WatchNextEndScreenRenderer.fromJson(
                json["watchNextEndScreenRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "watchNextEndScreenRenderer": watchNextEndScreenRenderer == null
            ? null
            : watchNextEndScreenRenderer.toJson(),
      };
}

class WatchNextEndScreenRenderer {
  WatchNextEndScreenRenderer({
    this.results,
    this.title,
    this.trackingParams,
  });

  final List<WatchNextEndScreenRendererResult> results;
  final TextClass title;
  final String trackingParams;

  factory WatchNextEndScreenRenderer.fromRawJson(String str) =>
      WatchNextEndScreenRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WatchNextEndScreenRenderer.fromJson(Map<String, dynamic> json) =>
      WatchNextEndScreenRenderer(
        results: json["results"] == null
            ? null
            : List<WatchNextEndScreenRendererResult>.from(json["results"]
                .map((x) => WatchNextEndScreenRendererResult.fromJson(x))),
        title: json["title"] == null ? null : TextClass.fromJson(json["title"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "results": results == null
            ? null
            : List<dynamic>.from(results.map((x) => x.toJson())),
        "title": title == null ? null : title.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class WatchNextEndScreenRendererResult {
  WatchNextEndScreenRendererResult({
    this.endScreenVideoRenderer,
    this.endScreenPlaylistRenderer,
  });

  final EndScreenVideoRenderer endScreenVideoRenderer;
  final EndScreenPlaylistRenderer endScreenPlaylistRenderer;

  factory WatchNextEndScreenRendererResult.fromRawJson(String str) =>
      WatchNextEndScreenRendererResult.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WatchNextEndScreenRendererResult.fromJson(
          Map<String, dynamic> json) =>
      WatchNextEndScreenRendererResult(
        endScreenVideoRenderer: json["endScreenVideoRenderer"] == null
            ? null
            : EndScreenVideoRenderer.fromJson(json["endScreenVideoRenderer"]),
        endScreenPlaylistRenderer: json["endScreenPlaylistRenderer"] == null
            ? null
            : EndScreenPlaylistRenderer.fromJson(
                json["endScreenPlaylistRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "endScreenVideoRenderer": endScreenVideoRenderer == null
            ? null
            : endScreenVideoRenderer.toJson(),
        "endScreenPlaylistRenderer": endScreenPlaylistRenderer == null
            ? null
            : endScreenPlaylistRenderer.toJson(),
      };
}

class EndScreenPlaylistRenderer {
  EndScreenPlaylistRenderer({
    this.playlistId,
    this.title,
    this.thumbnail,
    this.longBylineText,
    this.videoCountText,
    this.navigationEndpoint,
    this.trackingParams,
  });

  final String playlistId;
  final DateText title;
  final ChannelThumbnailClass thumbnail;
  final DateText longBylineText;
  final TextClass videoCountText;
  final SecondaryNavigationEndpointClass navigationEndpoint;
  final String trackingParams;

  factory EndScreenPlaylistRenderer.fromRawJson(String str) =>
      EndScreenPlaylistRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EndScreenPlaylistRenderer.fromJson(Map<String, dynamic> json) =>
      EndScreenPlaylistRenderer(
        playlistId: json["playlistId"] == null ? null : json["playlistId"],
        title: json["title"] == null ? null : DateText.fromJson(json["title"]),
        thumbnail: json["thumbnail"] == null
            ? null
            : ChannelThumbnailClass.fromJson(json["thumbnail"]),
        longBylineText: json["longBylineText"] == null
            ? null
            : DateText.fromJson(json["longBylineText"]),
        videoCountText: json["videoCountText"] == null
            ? null
            : TextClass.fromJson(json["videoCountText"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : SecondaryNavigationEndpointClass.fromJson(
                json["navigationEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "playlistId": playlistId == null ? null : playlistId,
        "title": title == null ? null : title.toJson(),
        "thumbnail": thumbnail == null ? null : thumbnail.toJson(),
        "longBylineText":
            longBylineText == null ? null : longBylineText.toJson(),
        "videoCountText":
            videoCountText == null ? null : videoCountText.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class EndScreenVideoRenderer {
  EndScreenVideoRenderer({
    this.videoId,
    this.thumbnail,
    this.title,
    this.shortBylineText,
    this.lengthText,
    this.lengthInSeconds,
    this.navigationEndpoint,
    this.trackingParams,
    this.shortViewCountText,
    this.publishedTimeText,
    this.thumbnailOverlays,
  });

  final String videoId;
  final ChannelThumbnailClass thumbnail;
  final LengthText title;
  final BylineText shortBylineText;
  final DateText lengthText;
  final int lengthInSeconds;
  final Endpoint navigationEndpoint;
  final String trackingParams;
  final DateText shortViewCountText;
  final DateText publishedTimeText;
  final List<EndScreenVideoRendererThumbnailOverlay> thumbnailOverlays;

  factory EndScreenVideoRenderer.fromRawJson(String str) =>
      EndScreenVideoRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EndScreenVideoRenderer.fromJson(Map<String, dynamic> json) =>
      EndScreenVideoRenderer(
        videoId: json["videoId"] == null ? null : json["videoId"],
        thumbnail: json["thumbnail"] == null
            ? null
            : ChannelThumbnailClass.fromJson(json["thumbnail"]),
        title:
            json["title"] == null ? null : LengthText.fromJson(json["title"]),
        shortBylineText: json["shortBylineText"] == null
            ? null
            : BylineText.fromJson(json["shortBylineText"]),
        lengthText: json["lengthText"] == null
            ? null
            : DateText.fromJson(json["lengthText"]),
        lengthInSeconds:
            json["lengthInSeconds"] == null ? null : json["lengthInSeconds"],
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : Endpoint.fromJson(json["navigationEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        shortViewCountText: json["shortViewCountText"] == null
            ? null
            : DateText.fromJson(json["shortViewCountText"]),
        publishedTimeText: json["publishedTimeText"] == null
            ? null
            : DateText.fromJson(json["publishedTimeText"]),
        thumbnailOverlays: json["thumbnailOverlays"] == null
            ? null
            : List<EndScreenVideoRendererThumbnailOverlay>.from(
                json["thumbnailOverlays"].map(
                    (x) => EndScreenVideoRendererThumbnailOverlay.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId == null ? null : videoId,
        "thumbnail": thumbnail == null ? null : thumbnail.toJson(),
        "title": title == null ? null : title.toJson(),
        "shortBylineText":
            shortBylineText == null ? null : shortBylineText.toJson(),
        "lengthText": lengthText == null ? null : lengthText.toJson(),
        "lengthInSeconds": lengthInSeconds == null ? null : lengthInSeconds,
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "shortViewCountText":
            shortViewCountText == null ? null : shortViewCountText.toJson(),
        "publishedTimeText":
            publishedTimeText == null ? null : publishedTimeText.toJson(),
        "thumbnailOverlays": thumbnailOverlays == null
            ? null
            : List<dynamic>.from(thumbnailOverlays.map((x) => x.toJson())),
      };
}

class EndScreenVideoRendererThumbnailOverlay {
  EndScreenVideoRendererThumbnailOverlay({
    this.thumbnailOverlayTimeStatusRenderer,
    this.thumbnailOverlayNowPlayingRenderer,
  });

  final ThumbnailOverlayTimeStatusRenderer thumbnailOverlayTimeStatusRenderer;
  final ThumbnailOverlayNowPlayingRenderer thumbnailOverlayNowPlayingRenderer;

  factory EndScreenVideoRendererThumbnailOverlay.fromRawJson(String str) =>
      EndScreenVideoRendererThumbnailOverlay.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EndScreenVideoRendererThumbnailOverlay.fromJson(
          Map<String, dynamic> json) =>
      EndScreenVideoRendererThumbnailOverlay(
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
    this.trackingParams,
    this.command,
  });

  final String style;
  final String size;
  final bool isDisabled;
  final TextClass text;
  final String trackingParams;
  final OnResponseReceivedEndpoint command;

  factory A11YSkipNavigationButtonButtonRenderer.fromRawJson(String str) =>
      A11YSkipNavigationButtonButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory A11YSkipNavigationButtonButtonRenderer.fromJson(
          Map<String, dynamic> json) =>
      A11YSkipNavigationButtonButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        text: json["text"] == null ? null : TextClass.fromJson(json["text"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        command: json["command"] == null
            ? null
            : OnResponseReceivedEndpoint.fromJson(json["command"]),
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
  final OnResponseReceivedEndpoint command;

  factory BackButtonButtonRenderer.fromRawJson(String str) =>
      BackButtonButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BackButtonButtonRenderer.fromJson(Map<String, dynamic> json) =>
      BackButtonButtonRenderer(
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        command: json["command"] == null
            ? null
            : OnResponseReceivedEndpoint.fromJson(json["command"]),
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

  final TextClass title;
  final List<HotkeyDialogRendererSection> sections;
  final A11YSkipNavigationButtonClass dismissButton;
  final String trackingParams;

  factory HotkeyDialogRenderer.fromRawJson(String str) =>
      HotkeyDialogRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HotkeyDialogRenderer.fromJson(Map<String, dynamic> json) =>
      HotkeyDialogRenderer(
        title: json["title"] == null ? null : TextClass.fromJson(json["title"]),
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

  final TextClass title;
  final List<Option> options;

  factory HotkeyDialogSectionRenderer.fromRawJson(String str) =>
      HotkeyDialogSectionRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HotkeyDialogSectionRenderer.fromJson(Map<String, dynamic> json) =>
      HotkeyDialogSectionRenderer(
        title: json["title"] == null ? null : TextClass.fromJson(json["title"]),
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

  final TextClass label;
  final String hotkey;
  final AccessibilityData hotkeyAccessibilityLabel;

  factory HotkeyDialogSectionOptionRenderer.fromRawJson(String str) =>
      HotkeyDialogSectionOptionRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HotkeyDialogSectionOptionRenderer.fromJson(
          Map<String, dynamic> json) =>
      HotkeyDialogSectionOptionRenderer(
        label: json["label"] == null ? null : TextClass.fromJson(json["label"]),
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
  final TextClass tooltipText;
  final EndpointClass endpoint;
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
            : TextClass.fromJson(json["tooltipText"]),
        endpoint: json["endpoint"] == null
            ? null
            : EndpointClass.fromJson(json["endpoint"]),
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
  final TextClass placeholderText;
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
            : TextClass.fromJson(json["placeholderText"]),
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
  final AutoplayVideoCommandMetadata commandMetadata;
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
            : AutoplayVideoCommandMetadata.fromJson(json["commandMetadata"]),
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
    this.buttonRenderer,
    this.topbarMenuButtonRenderer,
  });

  final TopbarButtonButtonRenderer buttonRenderer;
  final TopbarMenuButtonRenderer topbarMenuButtonRenderer;

  factory TopbarButton.fromRawJson(String str) =>
      TopbarButton.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TopbarButton.fromJson(Map<String, dynamic> json) => TopbarButton(
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : TopbarButtonButtonRenderer.fromJson(json["buttonRenderer"]),
        topbarMenuButtonRenderer: json["topbarMenuButtonRenderer"] == null
            ? null
            : TopbarMenuButtonRenderer.fromJson(
                json["topbarMenuButtonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toJson(),
        "topbarMenuButtonRenderer": topbarMenuButtonRenderer == null
            ? null
            : topbarMenuButtonRenderer.toJson(),
      };
}

class TopbarButtonButtonRenderer {
  TopbarButtonButtonRenderer({
    this.style,
    this.size,
    this.isDisabled,
    this.icon,
    this.navigationEndpoint,
    this.accessibility,
    this.tooltip,
    this.trackingParams,
    this.accessibilityData,
    this.text,
    this.targetId,
  });

  final String style;
  final String size;
  final bool isDisabled;
  final IconImage icon;
  final IndigoNavigationEndpoint navigationEndpoint;
  final Accessibility accessibility;
  final String tooltip;
  final String trackingParams;
  final AccessibilityData accessibilityData;
  final TextClass text;
  final String targetId;

  factory TopbarButtonButtonRenderer.fromRawJson(String str) =>
      TopbarButtonButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TopbarButtonButtonRenderer.fromJson(Map<String, dynamic> json) =>
      TopbarButtonButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        icon: json["icon"] == null ? null : IconImage.fromJson(json["icon"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : IndigoNavigationEndpoint.fromJson(json["navigationEndpoint"]),
        accessibility: json["accessibility"] == null
            ? null
            : Accessibility.fromJson(json["accessibility"]),
        tooltip: json["tooltip"] == null ? null : json["tooltip"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        accessibilityData: json["accessibilityData"] == null
            ? null
            : AccessibilityData.fromJson(json["accessibilityData"]),
        text: json["text"] == null ? null : TextClass.fromJson(json["text"]),
        targetId: json["targetId"] == null ? null : json["targetId"],
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
        "accessibilityData":
            accessibilityData == null ? null : accessibilityData.toJson(),
        "text": text == null ? null : text.toJson(),
        "targetId": targetId == null ? null : targetId,
      };
}

class IndigoNavigationEndpoint {
  IndigoNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signInEndpoint,
  });

  final String clickTrackingParams;
  final AutoplayVideoCommandMetadata commandMetadata;
  final TentacledSignInEndpoint signInEndpoint;

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
            : AutoplayVideoCommandMetadata.fromJson(json["commandMetadata"]),
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

class NextEndpoint {
  NextEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.uploadEndpoint,
  });

  final String clickTrackingParams;
  final AutoplayVideoCommandMetadata commandMetadata;
  final AdsEngagementPanelContentRenderer uploadEndpoint;

  factory NextEndpoint.fromRawJson(String str) =>
      NextEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NextEndpoint.fromJson(Map<String, dynamic> json) => NextEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : AutoplayVideoCommandMetadata.fromJson(json["commandMetadata"]),
        uploadEndpoint: json["uploadEndpoint"] == null
            ? null
            : AdsEngagementPanelContentRenderer.fromJson(
                json["uploadEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "uploadEndpoint":
            uploadEndpoint == null ? null : uploadEndpoint.toJson(),
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
  final TextClass title;
  final CompactLinkRendererNavigationEndpoint navigationEndpoint;
  final String trackingParams;

  factory CompactLinkRenderer.fromRawJson(String str) =>
      CompactLinkRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CompactLinkRenderer.fromJson(Map<String, dynamic> json) =>
      CompactLinkRenderer(
        icon: json["icon"] == null ? null : IconImage.fromJson(json["icon"]),
        title: json["title"] == null ? null : TextClass.fromJson(json["title"]),
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
  final AutoplayVideoCommandMetadata commandMetadata;
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
            : AutoplayVideoCommandMetadata.fromJson(json["commandMetadata"]),
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
  final List<IndecentAction> actions;

  factory MenuRequestSignalServiceEndpoint.fromRawJson(String str) =>
      MenuRequestSignalServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MenuRequestSignalServiceEndpoint.fromJson(
          Map<String, dynamic> json) =>
      MenuRequestSignalServiceEndpoint(
        signal: json["signal"] == null ? null : json["signal"],
        actions: json["actions"] == null
            ? null
            : List<IndecentAction>.from(
                json["actions"].map((x) => IndecentAction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "signal": signal == null ? null : signal,
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
  final FluffyOpenPopupAction openPopupAction;

  factory IndecentAction.fromRawJson(String str) =>
      IndecentAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IndecentAction.fromJson(Map<String, dynamic> json) => IndecentAction(
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

class WebWatchNextResponseExtensionData {
  WebWatchNextResponseExtensionData({
    this.relatedVideoArgs,
  });

  final String relatedVideoArgs;

  factory WebWatchNextResponseExtensionData.fromRawJson(String str) =>
      WebWatchNextResponseExtensionData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WebWatchNextResponseExtensionData.fromJson(
          Map<String, dynamic> json) =>
      WebWatchNextResponseExtensionData(
        relatedVideoArgs:
            json["relatedVideoArgs"] == null ? null : json["relatedVideoArgs"],
      );

  Map<String, dynamic> toJson() => {
        "relatedVideoArgs": relatedVideoArgs == null ? null : relatedVideoArgs,
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
