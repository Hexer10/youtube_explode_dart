// @dart=2.9

// To parse this JSON data, do
//
//     final playerResponseJson = playerResponseJsonFromJson(jsonString);

import 'dart:convert';

class PlayerResponseJson {
  PlayerResponseJson({
    this.responseContext,
    this.playabilityStatus,
    this.streamingData,
    this.playbackTracking,
    this.captions,
    this.videoDetails,
    this.annotations,
    this.playerConfig,
    this.storyboards,
    this.microformat,
    this.cards,
    this.trackingParams,
    this.attestation,
    this.messages,
    this.endscreen,
  });

  final ResponseContext responseContext;
  final PlayabilityStatus playabilityStatus;
  final StreamingData streamingData;
  final PlaybackTracking playbackTracking;
  final Captions captions;
  final VideoDetails videoDetails;
  final List<Annotation> annotations;
  final PlayerConfig playerConfig;
  final Storyboards storyboards;
  final Microformat microformat;
  final Cards cards;
  final String trackingParams;
  final Attestation attestation;
  final List<Message> messages;
  final Endscreen endscreen;

  factory PlayerResponseJson.fromRawJson(String str) =>
      PlayerResponseJson.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlayerResponseJson.fromJson(Map<String, dynamic> json) =>
      PlayerResponseJson(
        responseContext: json["responseContext"] == null
            ? null
            : ResponseContext.fromJson(json["responseContext"]),
        playabilityStatus: json["playabilityStatus"] == null
            ? null
            : PlayabilityStatus.fromJson(json["playabilityStatus"]),
        streamingData: json["streamingData"] == null
            ? null
            : StreamingData.fromJson(json["streamingData"]),
        playbackTracking: json["playbackTracking"] == null
            ? null
            : PlaybackTracking.fromJson(json["playbackTracking"]),
        captions: json["captions"] == null
            ? null
            : Captions.fromJson(json["captions"]),
        videoDetails: json["videoDetails"] == null
            ? null
            : VideoDetails.fromJson(json["videoDetails"]),
        annotations: json["annotations"] == null
            ? null
            : List<Annotation>.from(
                json["annotations"].map((x) => Annotation.fromJson(x))),
        playerConfig: json["playerConfig"] == null
            ? null
            : PlayerConfig.fromJson(json["playerConfig"]),
        storyboards: json["storyboards"] == null
            ? null
            : Storyboards.fromJson(json["storyboards"]),
        microformat: json["microformat"] == null
            ? null
            : Microformat.fromJson(json["microformat"]),
        cards: json["cards"] == null ? null : Cards.fromJson(json["cards"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        attestation: json["attestation"] == null
            ? null
            : Attestation.fromJson(json["attestation"]),
        messages: json["messages"] == null
            ? null
            : List<Message>.from(
                json["messages"].map((x) => Message.fromJson(x))),
        endscreen: json["endscreen"] == null
            ? null
            : Endscreen.fromJson(json["endscreen"]),
      );

  Map<String, dynamic> toJson() => {
        "responseContext":
            responseContext == null ? null : responseContext.toJson(),
        "playabilityStatus":
            playabilityStatus == null ? null : playabilityStatus.toJson(),
        "streamingData": streamingData == null ? null : streamingData.toJson(),
        "playbackTracking":
            playbackTracking == null ? null : playbackTracking.toJson(),
        "captions": captions == null ? null : captions.toJson(),
        "videoDetails": videoDetails == null ? null : videoDetails.toJson(),
        "annotations": annotations == null
            ? null
            : List<dynamic>.from(annotations.map((x) => x.toJson())),
        "playerConfig": playerConfig == null ? null : playerConfig.toJson(),
        "storyboards": storyboards == null ? null : storyboards.toJson(),
        "microformat": microformat == null ? null : microformat.toJson(),
        "cards": cards == null ? null : cards.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "attestation": attestation == null ? null : attestation.toJson(),
        "messages": messages == null
            ? null
            : List<dynamic>.from(messages.map((x) => x.toJson())),
        "endscreen": endscreen == null ? null : endscreen.toJson(),
      };
}

class Annotation {
  Annotation({
    this.playerAnnotationsExpandedRenderer,
  });

  final PlayerAnnotationsExpandedRenderer playerAnnotationsExpandedRenderer;

  factory Annotation.fromRawJson(String str) =>
      Annotation.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Annotation.fromJson(Map<String, dynamic> json) => Annotation(
        playerAnnotationsExpandedRenderer:
            json["playerAnnotationsExpandedRenderer"] == null
                ? null
                : PlayerAnnotationsExpandedRenderer.fromJson(
                    json["playerAnnotationsExpandedRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "playerAnnotationsExpandedRenderer":
            playerAnnotationsExpandedRenderer == null
                ? null
                : playerAnnotationsExpandedRenderer.toJson(),
      };
}

class PlayerAnnotationsExpandedRenderer {
  PlayerAnnotationsExpandedRenderer({
    this.featuredChannel,
    this.allowSwipeDismiss,
    this.annotationId,
  });

  final FeaturedChannel featuredChannel;
  final bool allowSwipeDismiss;
  final String annotationId;

  factory PlayerAnnotationsExpandedRenderer.fromRawJson(String str) =>
      PlayerAnnotationsExpandedRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlayerAnnotationsExpandedRenderer.fromJson(
          Map<String, dynamic> json) =>
      PlayerAnnotationsExpandedRenderer(
        featuredChannel: json["featuredChannel"] == null
            ? null
            : FeaturedChannel.fromJson(json["featuredChannel"]),
        allowSwipeDismiss: json["allowSwipeDismiss"] == null
            ? null
            : json["allowSwipeDismiss"],
        annotationId:
            json["annotationId"] == null ? null : json["annotationId"],
      );

  Map<String, dynamic> toJson() => {
        "featuredChannel":
            featuredChannel == null ? null : featuredChannel.toJson(),
        "allowSwipeDismiss":
            allowSwipeDismiss == null ? null : allowSwipeDismiss,
        "annotationId": annotationId == null ? null : annotationId,
      };
}

class FeaturedChannel {
  FeaturedChannel({
    this.startTimeMs,
    this.endTimeMs,
    this.watermark,
    this.trackingParams,
    this.navigationEndpoint,
    this.channelName,
    this.subscribeButton,
  });

  final String startTimeMs;
  final String endTimeMs;
  final IconClass watermark;
  final String trackingParams;
  final Endpoint navigationEndpoint;
  final String channelName;
  final SubscribeButtonClass subscribeButton;

  factory FeaturedChannel.fromRawJson(String str) =>
      FeaturedChannel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FeaturedChannel.fromJson(Map<String, dynamic> json) =>
      FeaturedChannel(
        startTimeMs: json["startTimeMs"] == null ? null : json["startTimeMs"],
        endTimeMs: json["endTimeMs"] == null ? null : json["endTimeMs"],
        watermark: json["watermark"] == null
            ? null
            : IconClass.fromJson(json["watermark"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : Endpoint.fromJson(json["navigationEndpoint"]),
        channelName: json["channelName"] == null ? null : json["channelName"],
        subscribeButton: json["subscribeButton"] == null
            ? null
            : SubscribeButtonClass.fromJson(json["subscribeButton"]),
      );

  Map<String, dynamic> toJson() => {
        "startTimeMs": startTimeMs == null ? null : startTimeMs,
        "endTimeMs": endTimeMs == null ? null : endTimeMs,
        "watermark": watermark == null ? null : watermark.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "channelName": channelName == null ? null : channelName,
        "subscribeButton":
            subscribeButton == null ? null : subscribeButton.toJson(),
      };
}

class Endpoint {
  Endpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.browseEndpoint,
    this.watchEndpoint,
  });

  final String clickTrackingParams;
  final NavigationEndpointCommandMetadata commandMetadata;
  final BrowseEndpoint browseEndpoint;
  final NavigationEndpointWatchEndpoint watchEndpoint;

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
            : BrowseEndpoint.fromJson(json["browseEndpoint"]),
        watchEndpoint: json["watchEndpoint"] == null
            ? null
            : NavigationEndpointWatchEndpoint.fromJson(json["watchEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "browseEndpoint":
            browseEndpoint == null ? null : browseEndpoint.toJson(),
        "watchEndpoint": watchEndpoint == null ? null : watchEndpoint.toJson(),
      };
}

class BrowseEndpoint {
  BrowseEndpoint({
    this.browseId,
  });

  final String browseId;

  factory BrowseEndpoint.fromRawJson(String str) =>
      BrowseEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BrowseEndpoint.fromJson(Map<String, dynamic> json) => BrowseEndpoint(
        browseId: json["browseId"] == null ? null : json["browseId"],
      );

  Map<String, dynamic> toJson() => {
        "browseId": browseId == null ? null : browseId,
      };
}

class NavigationEndpointCommandMetadata {
  NavigationEndpointCommandMetadata({
    this.webCommandMetadata,
  });

  final PurpleWebCommandMetadata webCommandMetadata;

  factory NavigationEndpointCommandMetadata.fromRawJson(String str) =>
      NavigationEndpointCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NavigationEndpointCommandMetadata.fromJson(
          Map<String, dynamic> json) =>
      NavigationEndpointCommandMetadata(
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
  WEB_PAGE_TYPE_WATCH
}

final webPageTypeValues = EnumValues({
  "WEB_PAGE_TYPE_CHANNEL": WebPageType.WEB_PAGE_TYPE_CHANNEL,
  "WEB_PAGE_TYPE_UNKNOWN": WebPageType.WEB_PAGE_TYPE_UNKNOWN,
  "WEB_PAGE_TYPE_WATCH": WebPageType.WEB_PAGE_TYPE_WATCH
});

class NavigationEndpointWatchEndpoint {
  NavigationEndpointWatchEndpoint({
    this.videoId,
    this.playlistId,
  });

  final String videoId;
  final String playlistId;

  factory NavigationEndpointWatchEndpoint.fromRawJson(String str) =>
      NavigationEndpointWatchEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NavigationEndpointWatchEndpoint.fromJson(Map<String, dynamic> json) =>
      NavigationEndpointWatchEndpoint(
        videoId: json["videoId"] == null ? null : json["videoId"],
        playlistId: json["playlistId"] == null ? null : json["playlistId"],
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId == null ? null : videoId,
        "playlistId": playlistId == null ? null : playlistId,
      };
}

class SubscribeButtonClass {
  SubscribeButtonClass({
    this.subscribeButtonRenderer,
  });

  final SubscribeButtonRenderer subscribeButtonRenderer;

  factory SubscribeButtonClass.fromRawJson(String str) =>
      SubscribeButtonClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SubscribeButtonClass.fromJson(Map<String, dynamic> json) =>
      SubscribeButtonClass(
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
    this.serviceEndpoints,
    this.subscribeAccessibility,
    this.unsubscribeAccessibility,
    this.signInEndpoint,
  });

  final MessageTitle buttonText;
  final bool subscribed;
  final bool enabled;
  final String type;
  final String channelId;
  final bool showPreferences;
  final MessageTitle subscribedButtonText;
  final MessageTitle unsubscribedButtonText;
  final String trackingParams;
  final MessageTitle unsubscribeButtonText;
  final List<SubscribeCommand> serviceEndpoints;
  final SubscribeAccessibilityClass subscribeAccessibility;
  final SubscribeAccessibilityClass unsubscribeAccessibility;
  final SigninEndpoint signInEndpoint;

  factory SubscribeButtonRenderer.fromRawJson(String str) =>
      SubscribeButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SubscribeButtonRenderer.fromJson(Map<String, dynamic> json) =>
      SubscribeButtonRenderer(
        buttonText: json["buttonText"] == null
            ? null
            : MessageTitle.fromJson(json["buttonText"]),
        subscribed: json["subscribed"] == null ? null : json["subscribed"],
        enabled: json["enabled"] == null ? null : json["enabled"],
        type: json["type"] == null ? null : json["type"],
        channelId: json["channelId"] == null ? null : json["channelId"],
        showPreferences:
            json["showPreferences"] == null ? null : json["showPreferences"],
        subscribedButtonText: json["subscribedButtonText"] == null
            ? null
            : MessageTitle.fromJson(json["subscribedButtonText"]),
        unsubscribedButtonText: json["unsubscribedButtonText"] == null
            ? null
            : MessageTitle.fromJson(json["unsubscribedButtonText"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        unsubscribeButtonText: json["unsubscribeButtonText"] == null
            ? null
            : MessageTitle.fromJson(json["unsubscribeButtonText"]),
        serviceEndpoints: json["serviceEndpoints"] == null
            ? null
            : List<SubscribeCommand>.from(json["serviceEndpoints"]
                .map((x) => SubscribeCommand.fromJson(x))),
        subscribeAccessibility: json["subscribeAccessibility"] == null
            ? null
            : SubscribeAccessibilityClass.fromJson(
                json["subscribeAccessibility"]),
        unsubscribeAccessibility: json["unsubscribeAccessibility"] == null
            ? null
            : SubscribeAccessibilityClass.fromJson(
                json["unsubscribeAccessibility"]),
        signInEndpoint: json["signInEndpoint"] == null
            ? null
            : SigninEndpoint.fromJson(json["signInEndpoint"]),
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
        "serviceEndpoints": serviceEndpoints == null
            ? null
            : List<dynamic>.from(serviceEndpoints.map((x) => x.toJson())),
        "subscribeAccessibility": subscribeAccessibility == null
            ? null
            : subscribeAccessibility.toJson(),
        "unsubscribeAccessibility": unsubscribeAccessibility == null
            ? null
            : unsubscribeAccessibility.toJson(),
        "signInEndpoint":
            signInEndpoint == null ? null : signInEndpoint.toJson(),
      };
}

class MessageTitle {
  MessageTitle({
    this.runs,
  });

  final List<Run> runs;

  factory MessageTitle.fromRawJson(String str) =>
      MessageTitle.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MessageTitle.fromJson(Map<String, dynamic> json) => MessageTitle(
        runs: json["runs"] == null
            ? null
            : List<Run>.from(json["runs"].map((x) => Run.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "runs": runs == null
            ? null
            : List<dynamic>.from(runs.map((x) => x.toJson())),
      };
}

class Run {
  Run({
    this.text,
  });

  final String text;

  factory Run.fromRawJson(String str) => Run.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Run.fromJson(Map<String, dynamic> json) => Run(
        text: json["text"] == null ? null : json["text"],
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text,
      };
}

class SubscribeCommand {
  SubscribeCommand({
    this.clickTrackingParams,
    this.commandMetadata,
    this.subscribeEndpoint,
    this.signalServiceEndpoint,
  });

  final String clickTrackingParams;
  final SubscribeCommandCommandMetadata commandMetadata;
  final SubscribeEndpoint subscribeEndpoint;
  final SignalServiceEndpoint signalServiceEndpoint;

  factory SubscribeCommand.fromRawJson(String str) =>
      SubscribeCommand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SubscribeCommand.fromJson(Map<String, dynamic> json) =>
      SubscribeCommand(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : SubscribeCommandCommandMetadata.fromJson(json["commandMetadata"]),
        subscribeEndpoint: json["subscribeEndpoint"] == null
            ? null
            : SubscribeEndpoint.fromJson(json["subscribeEndpoint"]),
        signalServiceEndpoint: json["signalServiceEndpoint"] == null
            ? null
            : SignalServiceEndpoint.fromJson(json["signalServiceEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "subscribeEndpoint":
            subscribeEndpoint == null ? null : subscribeEndpoint.toJson(),
        "signalServiceEndpoint": signalServiceEndpoint == null
            ? null
            : signalServiceEndpoint.toJson(),
      };
}

class SubscribeCommandCommandMetadata {
  SubscribeCommandCommandMetadata({
    this.webCommandMetadata,
  });

  final FluffyWebCommandMetadata webCommandMetadata;

  factory SubscribeCommandCommandMetadata.fromRawJson(String str) =>
      SubscribeCommandCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SubscribeCommandCommandMetadata.fromJson(Map<String, dynamic> json) =>
      SubscribeCommandCommandMetadata(
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
    this.apiUrl,
  });

  final Url url;
  final bool sendPost;
  final String apiUrl;

  factory FluffyWebCommandMetadata.fromRawJson(String str) =>
      FluffyWebCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyWebCommandMetadata.fromJson(Map<String, dynamic> json) =>
      FluffyWebCommandMetadata(
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

enum Url { SERVICE_AJAX }

final urlValues = EnumValues({"/service_ajax": Url.SERVICE_AJAX});

class SignalServiceEndpoint {
  SignalServiceEndpoint({
    this.signal,
    this.actions,
  });

  final String signal;
  final List<SignalServiceEndpointAction> actions;

  factory SignalServiceEndpoint.fromRawJson(String str) =>
      SignalServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SignalServiceEndpoint.fromJson(Map<String, dynamic> json) =>
      SignalServiceEndpoint(
        signal: json["signal"] == null ? null : json["signal"],
        actions: json["actions"] == null
            ? null
            : List<SignalServiceEndpointAction>.from(json["actions"]
                .map((x) => SignalServiceEndpointAction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "signal": signal == null ? null : signal,
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toJson())),
      };
}

class SignalServiceEndpointAction {
  SignalServiceEndpointAction({
    this.clickTrackingParams,
    this.openPopupAction,
  });

  final String clickTrackingParams;
  final ActionOpenPopupAction openPopupAction;

  factory SignalServiceEndpointAction.fromRawJson(String str) =>
      SignalServiceEndpointAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SignalServiceEndpointAction.fromJson(Map<String, dynamic> json) =>
      SignalServiceEndpointAction(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        openPopupAction: json["openPopupAction"] == null
            ? null
            : ActionOpenPopupAction.fromJson(json["openPopupAction"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "openPopupAction":
            openPopupAction == null ? null : openPopupAction.toJson(),
      };
}

class ActionOpenPopupAction {
  ActionOpenPopupAction({
    this.popup,
    this.popupType,
  });

  final PurplePopup popup;
  final String popupType;

  factory ActionOpenPopupAction.fromRawJson(String str) =>
      ActionOpenPopupAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ActionOpenPopupAction.fromJson(Map<String, dynamic> json) =>
      ActionOpenPopupAction(
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
    this.trackingParams,
    this.dialogMessages,
    this.confirmButton,
    this.cancelButton,
    this.primaryIsCancel,
  });

  final String trackingParams;
  final List<MessageTitle> dialogMessages;
  final CancelButtonClass confirmButton;
  final CancelButtonClass cancelButton;
  final bool primaryIsCancel;

  factory ConfirmDialogRenderer.fromRawJson(String str) =>
      ConfirmDialogRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ConfirmDialogRenderer.fromJson(Map<String, dynamic> json) =>
      ConfirmDialogRenderer(
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        dialogMessages: json["dialogMessages"] == null
            ? null
            : List<MessageTitle>.from(
                json["dialogMessages"].map((x) => MessageTitle.fromJson(x))),
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
    this.accessibility,
    this.trackingParams,
    this.serviceEndpoint,
  });

  final String style;
  final String size;
  final bool isDisabled;
  final MessageTitle text;
  final AccessibilityDataClass accessibility;
  final String trackingParams;
  final UnsubscribeCommand serviceEndpoint;

  factory CancelButtonButtonRenderer.fromRawJson(String str) =>
      CancelButtonButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CancelButtonButtonRenderer.fromJson(Map<String, dynamic> json) =>
      CancelButtonButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        text: json["text"] == null ? null : MessageTitle.fromJson(json["text"]),
        accessibility: json["accessibility"] == null
            ? null
            : AccessibilityDataClass.fromJson(json["accessibility"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        serviceEndpoint: json["serviceEndpoint"] == null
            ? null
            : UnsubscribeCommand.fromJson(json["serviceEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "style": style == null ? null : style,
        "size": size == null ? null : size,
        "isDisabled": isDisabled == null ? null : isDisabled,
        "text": text == null ? null : text.toJson(),
        "accessibility": accessibility == null ? null : accessibility.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "serviceEndpoint":
            serviceEndpoint == null ? null : serviceEndpoint.toJson(),
      };
}

class AccessibilityDataClass {
  AccessibilityDataClass({
    this.label,
  });

  final String label;

  factory AccessibilityDataClass.fromRawJson(String str) =>
      AccessibilityDataClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AccessibilityDataClass.fromJson(Map<String, dynamic> json) =>
      AccessibilityDataClass(
        label: json["label"] == null ? null : json["label"],
      );

  Map<String, dynamic> toJson() => {
        "label": label == null ? null : label,
      };
}

class UnsubscribeCommand {
  UnsubscribeCommand({
    this.clickTrackingParams,
    this.commandMetadata,
    this.unsubscribeEndpoint,
  });

  final String clickTrackingParams;
  final SubscribeCommandCommandMetadata commandMetadata;
  final SubscribeEndpoint unsubscribeEndpoint;

  factory UnsubscribeCommand.fromRawJson(String str) =>
      UnsubscribeCommand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UnsubscribeCommand.fromJson(Map<String, dynamic> json) =>
      UnsubscribeCommand(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : SubscribeCommandCommandMetadata.fromJson(json["commandMetadata"]),
        unsubscribeEndpoint: json["unsubscribeEndpoint"] == null
            ? null
            : SubscribeEndpoint.fromJson(json["unsubscribeEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "unsubscribeEndpoint":
            unsubscribeEndpoint == null ? null : unsubscribeEndpoint.toJson(),
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

class SigninEndpoint {
  SigninEndpoint({
    this.clickTrackingParams,
  });

  final String clickTrackingParams;

  factory SigninEndpoint.fromRawJson(String str) =>
      SigninEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SigninEndpoint.fromJson(Map<String, dynamic> json) => SigninEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
      };
}

class SubscribeAccessibilityClass {
  SubscribeAccessibilityClass({
    this.accessibilityData,
  });

  final AccessibilityDataClass accessibilityData;

  factory SubscribeAccessibilityClass.fromRawJson(String str) =>
      SubscribeAccessibilityClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SubscribeAccessibilityClass.fromJson(Map<String, dynamic> json) =>
      SubscribeAccessibilityClass(
        accessibilityData: json["accessibilityData"] == null
            ? null
            : AccessibilityDataClass.fromJson(json["accessibilityData"]),
      );

  Map<String, dynamic> toJson() => {
        "accessibilityData":
            accessibilityData == null ? null : accessibilityData.toJson(),
      };
}

class IconClass {
  IconClass({
    this.thumbnails,
  });

  final List<ThumbnailThumbnail> thumbnails;

  factory IconClass.fromRawJson(String str) =>
      IconClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IconClass.fromJson(Map<String, dynamic> json) => IconClass(
        thumbnails: json["thumbnails"] == null
            ? null
            : List<ThumbnailThumbnail>.from(
                json["thumbnails"].map((x) => ThumbnailThumbnail.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "thumbnails": thumbnails == null
            ? null
            : List<dynamic>.from(thumbnails.map((x) => x.toJson())),
      };
}

class ThumbnailThumbnail {
  ThumbnailThumbnail({
    this.url,
    this.width,
    this.height,
  });

  final String url;
  final int width;
  final int height;

  factory ThumbnailThumbnail.fromRawJson(String str) =>
      ThumbnailThumbnail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ThumbnailThumbnail.fromJson(Map<String, dynamic> json) =>
      ThumbnailThumbnail(
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

class Attestation {
  Attestation({
    this.playerAttestationRenderer,
  });

  final PlayerAttestationRenderer playerAttestationRenderer;

  factory Attestation.fromRawJson(String str) =>
      Attestation.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Attestation.fromJson(Map<String, dynamic> json) => Attestation(
        playerAttestationRenderer: json["playerAttestationRenderer"] == null
            ? null
            : PlayerAttestationRenderer.fromJson(
                json["playerAttestationRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "playerAttestationRenderer": playerAttestationRenderer == null
            ? null
            : playerAttestationRenderer.toJson(),
      };
}

class PlayerAttestationRenderer {
  PlayerAttestationRenderer({
    this.challenge,
    this.botguardData,
  });

  final String challenge;
  final BotguardData botguardData;

  factory PlayerAttestationRenderer.fromRawJson(String str) =>
      PlayerAttestationRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlayerAttestationRenderer.fromJson(Map<String, dynamic> json) =>
      PlayerAttestationRenderer(
        challenge: json["challenge"] == null ? null : json["challenge"],
        botguardData: json["botguardData"] == null
            ? null
            : BotguardData.fromJson(json["botguardData"]),
      );

  Map<String, dynamic> toJson() => {
        "challenge": challenge == null ? null : challenge,
        "botguardData": botguardData == null ? null : botguardData.toJson(),
      };
}

class BotguardData {
  BotguardData({
    this.program,
    this.interpreterUrl,
  });

  final String program;
  final String interpreterUrl;

  factory BotguardData.fromRawJson(String str) =>
      BotguardData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BotguardData.fromJson(Map<String, dynamic> json) => BotguardData(
        program: json["program"] == null ? null : json["program"],
        interpreterUrl:
            json["interpreterUrl"] == null ? null : json["interpreterUrl"],
      );

  Map<String, dynamic> toJson() => {
        "program": program == null ? null : program,
        "interpreterUrl": interpreterUrl == null ? null : interpreterUrl,
      };
}

class Captions {
  Captions({
    this.playerCaptionsRenderer,
    this.playerCaptionsTracklistRenderer,
  });

  final PlayerCaptionsRenderer playerCaptionsRenderer;
  final PlayerCaptionsTracklistRenderer playerCaptionsTracklistRenderer;

  factory Captions.fromRawJson(String str) =>
      Captions.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Captions.fromJson(Map<String, dynamic> json) => Captions(
        playerCaptionsRenderer: json["playerCaptionsRenderer"] == null
            ? null
            : PlayerCaptionsRenderer.fromJson(json["playerCaptionsRenderer"]),
        playerCaptionsTracklistRenderer:
            json["playerCaptionsTracklistRenderer"] == null
                ? null
                : PlayerCaptionsTracklistRenderer.fromJson(
                    json["playerCaptionsTracklistRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "playerCaptionsRenderer": playerCaptionsRenderer == null
            ? null
            : playerCaptionsRenderer.toJson(),
        "playerCaptionsTracklistRenderer":
            playerCaptionsTracklistRenderer == null
                ? null
                : playerCaptionsTracklistRenderer.toJson(),
      };
}

class PlayerCaptionsRenderer {
  PlayerCaptionsRenderer({
    this.baseUrl,
    this.visibility,
  });

  final String baseUrl;
  final String visibility;

  factory PlayerCaptionsRenderer.fromRawJson(String str) =>
      PlayerCaptionsRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlayerCaptionsRenderer.fromJson(Map<String, dynamic> json) =>
      PlayerCaptionsRenderer(
        baseUrl: json["baseUrl"] == null ? null : json["baseUrl"],
        visibility: json["visibility"] == null ? null : json["visibility"],
      );

  Map<String, dynamic> toJson() => {
        "baseUrl": baseUrl == null ? null : baseUrl,
        "visibility": visibility == null ? null : visibility,
      };
}

class PlayerCaptionsTracklistRenderer {
  PlayerCaptionsTracklistRenderer({
    this.captionTracks,
    this.audioTracks,
    this.translationLanguages,
    this.defaultAudioTrackIndex,
  });

  final List<CaptionTrack> captionTracks;
  final List<AudioTrack> audioTracks;
  final List<TranslationLanguage> translationLanguages;
  final int defaultAudioTrackIndex;

  factory PlayerCaptionsTracklistRenderer.fromRawJson(String str) =>
      PlayerCaptionsTracklistRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlayerCaptionsTracklistRenderer.fromJson(Map<String, dynamic> json) =>
      PlayerCaptionsTracklistRenderer(
        captionTracks: json["captionTracks"] == null
            ? null
            : List<CaptionTrack>.from(
                json["captionTracks"].map((x) => CaptionTrack.fromJson(x))),
        audioTracks: json["audioTracks"] == null
            ? null
            : List<AudioTrack>.from(
                json["audioTracks"].map((x) => AudioTrack.fromJson(x))),
        translationLanguages: json["translationLanguages"] == null
            ? null
            : List<TranslationLanguage>.from(json["translationLanguages"]
                .map((x) => TranslationLanguage.fromJson(x))),
        defaultAudioTrackIndex: json["defaultAudioTrackIndex"] == null
            ? null
            : json["defaultAudioTrackIndex"],
      );

  Map<String, dynamic> toJson() => {
        "captionTracks": captionTracks == null
            ? null
            : List<dynamic>.from(captionTracks.map((x) => x.toJson())),
        "audioTracks": audioTracks == null
            ? null
            : List<dynamic>.from(audioTracks.map((x) => x.toJson())),
        "translationLanguages": translationLanguages == null
            ? null
            : List<dynamic>.from(translationLanguages.map((x) => x.toJson())),
        "defaultAudioTrackIndex":
            defaultAudioTrackIndex == null ? null : defaultAudioTrackIndex,
      };
}

class AudioTrack {
  AudioTrack({
    this.captionTrackIndices,
    this.defaultCaptionTrackIndex,
    this.visibility,
    this.hasDefaultTrack,
  });

  final List<int> captionTrackIndices;
  final int defaultCaptionTrackIndex;
  final String visibility;
  final bool hasDefaultTrack;

  factory AudioTrack.fromRawJson(String str) =>
      AudioTrack.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AudioTrack.fromJson(Map<String, dynamic> json) => AudioTrack(
        captionTrackIndices: json["captionTrackIndices"] == null
            ? null
            : List<int>.from(json["captionTrackIndices"].map((x) => x)),
        defaultCaptionTrackIndex: json["defaultCaptionTrackIndex"] == null
            ? null
            : json["defaultCaptionTrackIndex"],
        visibility: json["visibility"] == null ? null : json["visibility"],
        hasDefaultTrack:
            json["hasDefaultTrack"] == null ? null : json["hasDefaultTrack"],
      );

  Map<String, dynamic> toJson() => {
        "captionTrackIndices": captionTrackIndices == null
            ? null
            : List<dynamic>.from(captionTrackIndices.map((x) => x)),
        "defaultCaptionTrackIndex":
            defaultCaptionTrackIndex == null ? null : defaultCaptionTrackIndex,
        "visibility": visibility == null ? null : visibility,
        "hasDefaultTrack": hasDefaultTrack == null ? null : hasDefaultTrack,
      };
}

class CaptionTrack {
  CaptionTrack({
    this.baseUrl,
    this.name,
    this.vssId,
    this.languageCode,
    this.isTranslatable,
  });

  final String baseUrl;
  final HeaderText name;
  final String vssId;
  final String languageCode;
  final bool isTranslatable;

  factory CaptionTrack.fromRawJson(String str) =>
      CaptionTrack.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CaptionTrack.fromJson(Map<String, dynamic> json) => CaptionTrack(
        baseUrl: json["baseUrl"] == null ? null : json["baseUrl"],
        name: json["name"] == null ? null : HeaderText.fromJson(json["name"]),
        vssId: json["vssId"] == null ? null : json["vssId"],
        languageCode:
            json["languageCode"] == null ? null : json["languageCode"],
        isTranslatable:
            json["isTranslatable"] == null ? null : json["isTranslatable"],
      );

  Map<String, dynamic> toJson() => {
        "baseUrl": baseUrl == null ? null : baseUrl,
        "name": name == null ? null : name.toJson(),
        "vssId": vssId == null ? null : vssId,
        "languageCode": languageCode == null ? null : languageCode,
        "isTranslatable": isTranslatable == null ? null : isTranslatable,
      };
}

class HeaderText {
  HeaderText({
    this.simpleText,
  });

  final String simpleText;

  factory HeaderText.fromRawJson(String str) =>
      HeaderText.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HeaderText.fromJson(Map<String, dynamic> json) => HeaderText(
        simpleText: json["simpleText"] == null ? null : json["simpleText"],
      );

  Map<String, dynamic> toJson() => {
        "simpleText": simpleText == null ? null : simpleText,
      };
}

class TranslationLanguage {
  TranslationLanguage({
    this.languageCode,
    this.languageName,
  });

  final String languageCode;
  final HeaderText languageName;

  factory TranslationLanguage.fromRawJson(String str) =>
      TranslationLanguage.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TranslationLanguage.fromJson(Map<String, dynamic> json) =>
      TranslationLanguage(
        languageCode:
            json["languageCode"] == null ? null : json["languageCode"],
        languageName: json["languageName"] == null
            ? null
            : HeaderText.fromJson(json["languageName"]),
      );

  Map<String, dynamic> toJson() => {
        "languageCode": languageCode == null ? null : languageCode,
        "languageName": languageName == null ? null : languageName.toJson(),
      };
}

class Cards {
  Cards({
    this.cardCollectionRenderer,
  });

  final CardCollectionRenderer cardCollectionRenderer;

  factory Cards.fromRawJson(String str) => Cards.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Cards.fromJson(Map<String, dynamic> json) => Cards(
        cardCollectionRenderer: json["cardCollectionRenderer"] == null
            ? null
            : CardCollectionRenderer.fromJson(json["cardCollectionRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "cardCollectionRenderer": cardCollectionRenderer == null
            ? null
            : cardCollectionRenderer.toJson(),
      };
}

class CardCollectionRenderer {
  CardCollectionRenderer({
    this.cards,
    this.headerText,
    this.icon,
    this.closeButton,
    this.trackingParams,
    this.allowTeaserDismiss,
    this.logIconVisibilityUpdates,
  });

  final List<Card> cards;
  final HeaderText headerText;
  final CloseButton icon;
  final CloseButton closeButton;
  final String trackingParams;
  final bool allowTeaserDismiss;
  final bool logIconVisibilityUpdates;

  factory CardCollectionRenderer.fromRawJson(String str) =>
      CardCollectionRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CardCollectionRenderer.fromJson(Map<String, dynamic> json) =>
      CardCollectionRenderer(
        cards: json["cards"] == null
            ? null
            : List<Card>.from(json["cards"].map((x) => Card.fromJson(x))),
        headerText: json["headerText"] == null
            ? null
            : HeaderText.fromJson(json["headerText"]),
        icon: json["icon"] == null ? null : CloseButton.fromJson(json["icon"]),
        closeButton: json["closeButton"] == null
            ? null
            : CloseButton.fromJson(json["closeButton"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        allowTeaserDismiss: json["allowTeaserDismiss"] == null
            ? null
            : json["allowTeaserDismiss"],
        logIconVisibilityUpdates: json["logIconVisibilityUpdates"] == null
            ? null
            : json["logIconVisibilityUpdates"],
      );

  Map<String, dynamic> toJson() => {
        "cards": cards == null
            ? null
            : List<dynamic>.from(cards.map((x) => x.toJson())),
        "headerText": headerText == null ? null : headerText.toJson(),
        "icon": icon == null ? null : icon.toJson(),
        "closeButton": closeButton == null ? null : closeButton.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "allowTeaserDismiss":
            allowTeaserDismiss == null ? null : allowTeaserDismiss,
        "logIconVisibilityUpdates":
            logIconVisibilityUpdates == null ? null : logIconVisibilityUpdates,
      };
}

class Card {
  Card({
    this.cardRenderer,
  });

  final CardRenderer cardRenderer;

  factory Card.fromRawJson(String str) => Card.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Card.fromJson(Map<String, dynamic> json) => Card(
        cardRenderer: json["cardRenderer"] == null
            ? null
            : CardRenderer.fromJson(json["cardRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "cardRenderer": cardRenderer == null ? null : cardRenderer.toJson(),
      };
}

class CardRenderer {
  CardRenderer({
    this.teaser,
    this.content,
    this.cueRanges,
    this.icon,
    this.trackingParams,
    this.cardId,
    this.feature,
  });

  final Teaser teaser;
  final Content content;
  final List<CueRange> cueRanges;
  final CloseButton icon;
  final String trackingParams;
  final String cardId;
  final String feature;

  factory CardRenderer.fromRawJson(String str) =>
      CardRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CardRenderer.fromJson(Map<String, dynamic> json) => CardRenderer(
        teaser: json["teaser"] == null ? null : Teaser.fromJson(json["teaser"]),
        content:
            json["content"] == null ? null : Content.fromJson(json["content"]),
        cueRanges: json["cueRanges"] == null
            ? null
            : List<CueRange>.from(
                json["cueRanges"].map((x) => CueRange.fromJson(x))),
        icon: json["icon"] == null ? null : CloseButton.fromJson(json["icon"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        cardId: json["cardId"] == null ? null : json["cardId"],
        feature: json["feature"] == null ? null : json["feature"],
      );

  Map<String, dynamic> toJson() => {
        "teaser": teaser == null ? null : teaser.toJson(),
        "content": content == null ? null : content.toJson(),
        "cueRanges": cueRanges == null
            ? null
            : List<dynamic>.from(cueRanges.map((x) => x.toJson())),
        "icon": icon == null ? null : icon.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "cardId": cardId == null ? null : cardId,
        "feature": feature == null ? null : feature,
      };
}

class Content {
  Content({
    this.simpleCardContentRenderer,
    this.videoInfoCardContentRenderer,
  });

  final SimpleCardContentRenderer simpleCardContentRenderer;
  final VideoInfoCardContentRenderer videoInfoCardContentRenderer;

  factory Content.fromRawJson(String str) => Content.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Content.fromJson(Map<String, dynamic> json) => Content(
        simpleCardContentRenderer: json["simpleCardContentRenderer"] == null
            ? null
            : SimpleCardContentRenderer.fromJson(
                json["simpleCardContentRenderer"]),
        videoInfoCardContentRenderer:
            json["videoInfoCardContentRenderer"] == null
                ? null
                : VideoInfoCardContentRenderer.fromJson(
                    json["videoInfoCardContentRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "simpleCardContentRenderer": simpleCardContentRenderer == null
            ? null
            : simpleCardContentRenderer.toJson(),
        "videoInfoCardContentRenderer": videoInfoCardContentRenderer == null
            ? null
            : videoInfoCardContentRenderer.toJson(),
      };
}

class SimpleCardContentRenderer {
  SimpleCardContentRenderer({
    this.image,
    this.title,
    this.actionButton,
    this.trackingParams,
    this.displayDomain,
    this.showLinkIcon,
    this.callToAction,
    this.command,
  });

  final IconClass image;
  final HeaderText title;
  final SimpleCardContentRendererActionButton actionButton;
  final String trackingParams;
  final HeaderText displayDomain;
  final bool showLinkIcon;
  final HeaderText callToAction;
  final NavigationEndpoint command;

  factory SimpleCardContentRenderer.fromRawJson(String str) =>
      SimpleCardContentRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SimpleCardContentRenderer.fromJson(Map<String, dynamic> json) =>
      SimpleCardContentRenderer(
        image: json["image"] == null ? null : IconClass.fromJson(json["image"]),
        title:
            json["title"] == null ? null : HeaderText.fromJson(json["title"]),
        actionButton: json["actionButton"] == null
            ? null
            : SimpleCardContentRendererActionButton.fromJson(
                json["actionButton"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        displayDomain: json["displayDomain"] == null
            ? null
            : HeaderText.fromJson(json["displayDomain"]),
        showLinkIcon:
            json["showLinkIcon"] == null ? null : json["showLinkIcon"],
        callToAction: json["callToAction"] == null
            ? null
            : HeaderText.fromJson(json["callToAction"]),
        command: json["command"] == null
            ? null
            : NavigationEndpoint.fromJson(json["command"]),
      );

  Map<String, dynamic> toJson() => {
        "image": image == null ? null : image.toJson(),
        "title": title == null ? null : title.toJson(),
        "actionButton": actionButton == null ? null : actionButton.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "displayDomain": displayDomain == null ? null : displayDomain.toJson(),
        "showLinkIcon": showLinkIcon == null ? null : showLinkIcon,
        "callToAction": callToAction == null ? null : callToAction.toJson(),
        "command": command == null ? null : command.toJson(),
      };
}

class SimpleCardContentRendererActionButton {
  SimpleCardContentRendererActionButton({
    this.simpleCardButtonRenderer,
  });

  final SimpleCardButtonRenderer simpleCardButtonRenderer;

  factory SimpleCardContentRendererActionButton.fromRawJson(String str) =>
      SimpleCardContentRendererActionButton.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SimpleCardContentRendererActionButton.fromJson(
          Map<String, dynamic> json) =>
      SimpleCardContentRendererActionButton(
        simpleCardButtonRenderer: json["simpleCardButtonRenderer"] == null
            ? null
            : SimpleCardButtonRenderer.fromJson(
                json["simpleCardButtonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "simpleCardButtonRenderer": simpleCardButtonRenderer == null
            ? null
            : simpleCardButtonRenderer.toJson(),
      };
}

class SimpleCardButtonRenderer {
  SimpleCardButtonRenderer({
    this.text,
    this.action,
    this.trackingParams,
  });

  final HeaderText text;
  final NavigationEndpoint action;
  final String trackingParams;

  factory SimpleCardButtonRenderer.fromRawJson(String str) =>
      SimpleCardButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SimpleCardButtonRenderer.fromJson(Map<String, dynamic> json) =>
      SimpleCardButtonRenderer(
        text: json["text"] == null ? null : HeaderText.fromJson(json["text"]),
        action: json["action"] == null
            ? null
            : NavigationEndpoint.fromJson(json["action"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text.toJson(),
        "action": action == null ? null : action.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class NavigationEndpoint {
  NavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.urlEndpoint,
  });

  final String clickTrackingParams;
  final NavigationEndpointCommandMetadata commandMetadata;
  final UrlEndpoint urlEndpoint;

  factory NavigationEndpoint.fromRawJson(String str) =>
      NavigationEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NavigationEndpoint.fromJson(Map<String, dynamic> json) =>
      NavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : NavigationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
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

class UrlEndpoint {
  UrlEndpoint({
    this.url,
    this.target,
  });

  final String url;
  final String target;

  factory UrlEndpoint.fromRawJson(String str) =>
      UrlEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UrlEndpoint.fromJson(Map<String, dynamic> json) => UrlEndpoint(
        url: json["url"] == null ? null : json["url"],
        target: json["target"] == null ? null : json["target"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "target": target == null ? null : target,
      };
}

class VideoInfoCardContentRenderer {
  VideoInfoCardContentRenderer({
    this.videoThumbnail,
    this.lengthString,
    this.videoTitle,
    this.channelName,
    this.viewCountText,
    this.action,
    this.trackingParams,
  });

  final IconClass videoThumbnail;
  final Title lengthString;
  final HeaderText videoTitle;
  final HeaderText channelName;
  final HeaderText viewCountText;
  final VideoInfoCardContentRendererAction action;
  final String trackingParams;

  factory VideoInfoCardContentRenderer.fromRawJson(String str) =>
      VideoInfoCardContentRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VideoInfoCardContentRenderer.fromJson(Map<String, dynamic> json) =>
      VideoInfoCardContentRenderer(
        videoThumbnail: json["videoThumbnail"] == null
            ? null
            : IconClass.fromJson(json["videoThumbnail"]),
        lengthString: json["lengthString"] == null
            ? null
            : Title.fromJson(json["lengthString"]),
        videoTitle: json["videoTitle"] == null
            ? null
            : HeaderText.fromJson(json["videoTitle"]),
        channelName: json["channelName"] == null
            ? null
            : HeaderText.fromJson(json["channelName"]),
        viewCountText: json["viewCountText"] == null
            ? null
            : HeaderText.fromJson(json["viewCountText"]),
        action: json["action"] == null
            ? null
            : VideoInfoCardContentRendererAction.fromJson(json["action"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "videoThumbnail":
            videoThumbnail == null ? null : videoThumbnail.toJson(),
        "lengthString": lengthString == null ? null : lengthString.toJson(),
        "videoTitle": videoTitle == null ? null : videoTitle.toJson(),
        "channelName": channelName == null ? null : channelName.toJson(),
        "viewCountText": viewCountText == null ? null : viewCountText.toJson(),
        "action": action == null ? null : action.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class VideoInfoCardContentRendererAction {
  VideoInfoCardContentRendererAction({
    this.clickTrackingParams,
    this.commandMetadata,
    this.watchEndpoint,
  });

  final String clickTrackingParams;
  final NavigationEndpointCommandMetadata commandMetadata;
  final ActionWatchEndpoint watchEndpoint;

  factory VideoInfoCardContentRendererAction.fromRawJson(String str) =>
      VideoInfoCardContentRendererAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VideoInfoCardContentRendererAction.fromJson(
          Map<String, dynamic> json) =>
      VideoInfoCardContentRendererAction(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : NavigationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        watchEndpoint: json["watchEndpoint"] == null
            ? null
            : ActionWatchEndpoint.fromJson(json["watchEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "watchEndpoint": watchEndpoint == null ? null : watchEndpoint.toJson(),
      };
}

class ActionWatchEndpoint {
  ActionWatchEndpoint({
    this.videoId,
  });

  final String videoId;

  factory ActionWatchEndpoint.fromRawJson(String str) =>
      ActionWatchEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ActionWatchEndpoint.fromJson(Map<String, dynamic> json) =>
      ActionWatchEndpoint(
        videoId: json["videoId"] == null ? null : json["videoId"],
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId == null ? null : videoId,
      };
}

class Title {
  Title({
    this.accessibility,
    this.simpleText,
  });

  final SubscribeAccessibilityClass accessibility;
  final String simpleText;

  factory Title.fromRawJson(String str) => Title.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Title.fromJson(Map<String, dynamic> json) => Title(
        accessibility: json["accessibility"] == null
            ? null
            : SubscribeAccessibilityClass.fromJson(json["accessibility"]),
        simpleText: json["simpleText"] == null ? null : json["simpleText"],
      );

  Map<String, dynamic> toJson() => {
        "accessibility": accessibility == null ? null : accessibility.toJson(),
        "simpleText": simpleText == null ? null : simpleText,
      };
}

class CueRange {
  CueRange({
    this.startCardActiveMs,
    this.endCardActiveMs,
    this.teaserDurationMs,
    this.iconAfterTeaserMs,
  });

  final String startCardActiveMs;
  final String endCardActiveMs;
  final String teaserDurationMs;
  final String iconAfterTeaserMs;

  factory CueRange.fromRawJson(String str) =>
      CueRange.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CueRange.fromJson(Map<String, dynamic> json) => CueRange(
        startCardActiveMs: json["startCardActiveMs"] == null
            ? null
            : json["startCardActiveMs"],
        endCardActiveMs:
            json["endCardActiveMs"] == null ? null : json["endCardActiveMs"],
        teaserDurationMs:
            json["teaserDurationMs"] == null ? null : json["teaserDurationMs"],
        iconAfterTeaserMs: json["iconAfterTeaserMs"] == null
            ? null
            : json["iconAfterTeaserMs"],
      );

  Map<String, dynamic> toJson() => {
        "startCardActiveMs":
            startCardActiveMs == null ? null : startCardActiveMs,
        "endCardActiveMs": endCardActiveMs == null ? null : endCardActiveMs,
        "teaserDurationMs": teaserDurationMs == null ? null : teaserDurationMs,
        "iconAfterTeaserMs":
            iconAfterTeaserMs == null ? null : iconAfterTeaserMs,
      };
}

class CloseButton {
  CloseButton({
    this.infoCardIconRenderer,
  });

  final InfoCardIconRenderer infoCardIconRenderer;

  factory CloseButton.fromRawJson(String str) =>
      CloseButton.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CloseButton.fromJson(Map<String, dynamic> json) => CloseButton(
        infoCardIconRenderer: json["infoCardIconRenderer"] == null
            ? null
            : InfoCardIconRenderer.fromJson(json["infoCardIconRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "infoCardIconRenderer":
            infoCardIconRenderer == null ? null : infoCardIconRenderer.toJson(),
      };
}

class InfoCardIconRenderer {
  InfoCardIconRenderer({
    this.trackingParams,
  });

  final String trackingParams;

  factory InfoCardIconRenderer.fromRawJson(String str) =>
      InfoCardIconRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory InfoCardIconRenderer.fromJson(Map<String, dynamic> json) =>
      InfoCardIconRenderer(
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class Teaser {
  Teaser({
    this.simpleCardTeaserRenderer,
  });

  final SimpleCardTeaserRenderer simpleCardTeaserRenderer;

  factory Teaser.fromRawJson(String str) => Teaser.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Teaser.fromJson(Map<String, dynamic> json) => Teaser(
        simpleCardTeaserRenderer: json["simpleCardTeaserRenderer"] == null
            ? null
            : SimpleCardTeaserRenderer.fromJson(
                json["simpleCardTeaserRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "simpleCardTeaserRenderer": simpleCardTeaserRenderer == null
            ? null
            : simpleCardTeaserRenderer.toJson(),
      };
}

class SimpleCardTeaserRenderer {
  SimpleCardTeaserRenderer({
    this.message,
    this.trackingParams,
    this.prominent,
    this.logVisibilityUpdates,
  });

  final HeaderText message;
  final String trackingParams;
  final bool prominent;
  final bool logVisibilityUpdates;

  factory SimpleCardTeaserRenderer.fromRawJson(String str) =>
      SimpleCardTeaserRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SimpleCardTeaserRenderer.fromJson(Map<String, dynamic> json) =>
      SimpleCardTeaserRenderer(
        message: json["message"] == null
            ? null
            : HeaderText.fromJson(json["message"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        prominent: json["prominent"] == null ? null : json["prominent"],
        logVisibilityUpdates: json["logVisibilityUpdates"] == null
            ? null
            : json["logVisibilityUpdates"],
      );

  Map<String, dynamic> toJson() => {
        "message": message == null ? null : message.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "prominent": prominent == null ? null : prominent,
        "logVisibilityUpdates":
            logVisibilityUpdates == null ? null : logVisibilityUpdates,
      };
}

class Endscreen {
  Endscreen({
    this.endscreenRenderer,
  });

  final EndscreenRenderer endscreenRenderer;

  factory Endscreen.fromRawJson(String str) =>
      Endscreen.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Endscreen.fromJson(Map<String, dynamic> json) => Endscreen(
        endscreenRenderer: json["endscreenRenderer"] == null
            ? null
            : EndscreenRenderer.fromJson(json["endscreenRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "endscreenRenderer":
            endscreenRenderer == null ? null : endscreenRenderer.toJson(),
      };
}

class EndscreenRenderer {
  EndscreenRenderer({
    this.elements,
    this.startMs,
    this.trackingParams,
  });

  final List<Element> elements;
  final String startMs;
  final String trackingParams;

  factory EndscreenRenderer.fromRawJson(String str) =>
      EndscreenRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EndscreenRenderer.fromJson(Map<String, dynamic> json) =>
      EndscreenRenderer(
        elements: json["elements"] == null
            ? null
            : List<Element>.from(
                json["elements"].map((x) => Element.fromJson(x))),
        startMs: json["startMs"] == null ? null : json["startMs"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "elements": elements == null
            ? null
            : List<dynamic>.from(elements.map((x) => x.toJson())),
        "startMs": startMs == null ? null : startMs,
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class Element {
  Element({
    this.endscreenElementRenderer,
  });

  final EndscreenElementRenderer endscreenElementRenderer;

  factory Element.fromRawJson(String str) => Element.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Element.fromJson(Map<String, dynamic> json) => Element(
        endscreenElementRenderer: json["endscreenElementRenderer"] == null
            ? null
            : EndscreenElementRenderer.fromJson(
                json["endscreenElementRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "endscreenElementRenderer": endscreenElementRenderer == null
            ? null
            : endscreenElementRenderer.toJson(),
      };
}

class EndscreenElementRenderer {
  EndscreenElementRenderer({
    this.style,
    this.image,
    this.icon,
    this.left,
    this.width,
    this.top,
    this.aspectRatio,
    this.startMs,
    this.endMs,
    this.title,
    this.metadata,
    this.callToAction,
    this.dismiss,
    this.endpoint,
    this.hovercardButton,
    this.trackingParams,
    this.isSubscribe,
    this.signinEndpoint,
    this.id,
    this.playlistLength,
    this.videoDuration,
  });

  final String style;
  final IconClass image;
  final Icon icon;
  final double left;
  final double width;
  final double top;
  final double aspectRatio;
  final String startMs;
  final String endMs;
  final Title title;
  final HeaderText metadata;
  final HeaderText callToAction;
  final HeaderText dismiss;
  final Endpoint endpoint;
  final SubscribeButtonClass hovercardButton;
  final String trackingParams;
  final bool isSubscribe;
  final SigninEndpoint signinEndpoint;
  final String id;
  final HeaderText playlistLength;
  final HeaderText videoDuration;

  factory EndscreenElementRenderer.fromRawJson(String str) =>
      EndscreenElementRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EndscreenElementRenderer.fromJson(Map<String, dynamic> json) =>
      EndscreenElementRenderer(
        style: json["style"] == null ? null : json["style"],
        image: json["image"] == null ? null : IconClass.fromJson(json["image"]),
        icon: json["icon"] == null ? null : Icon.fromJson(json["icon"]),
        left: json["left"] == null ? null : json["left"].toDouble(),
        width: json["width"] == null ? null : json["width"].toDouble(),
        top: json["top"] == null ? null : json["top"].toDouble(),
        aspectRatio:
            json["aspectRatio"] == null ? null : json["aspectRatio"].toDouble(),
        startMs: json["startMs"] == null ? null : json["startMs"],
        endMs: json["endMs"] == null ? null : json["endMs"],
        title: json["title"] == null ? null : Title.fromJson(json["title"]),
        metadata: json["metadata"] == null
            ? null
            : HeaderText.fromJson(json["metadata"]),
        callToAction: json["callToAction"] == null
            ? null
            : HeaderText.fromJson(json["callToAction"]),
        dismiss: json["dismiss"] == null
            ? null
            : HeaderText.fromJson(json["dismiss"]),
        endpoint: json["endpoint"] == null
            ? null
            : Endpoint.fromJson(json["endpoint"]),
        hovercardButton: json["hovercardButton"] == null
            ? null
            : SubscribeButtonClass.fromJson(json["hovercardButton"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        isSubscribe: json["isSubscribe"] == null ? null : json["isSubscribe"],
        signinEndpoint: json["signinEndpoint"] == null
            ? null
            : SigninEndpoint.fromJson(json["signinEndpoint"]),
        id: json["id"] == null ? null : json["id"],
        playlistLength: json["playlistLength"] == null
            ? null
            : HeaderText.fromJson(json["playlistLength"]),
        videoDuration: json["videoDuration"] == null
            ? null
            : HeaderText.fromJson(json["videoDuration"]),
      );

  Map<String, dynamic> toJson() => {
        "style": style == null ? null : style,
        "image": image == null ? null : image.toJson(),
        "icon": icon == null ? null : icon.toJson(),
        "left": left == null ? null : left,
        "width": width == null ? null : width,
        "top": top == null ? null : top,
        "aspectRatio": aspectRatio == null ? null : aspectRatio,
        "startMs": startMs == null ? null : startMs,
        "endMs": endMs == null ? null : endMs,
        "title": title == null ? null : title.toJson(),
        "metadata": metadata == null ? null : metadata.toJson(),
        "callToAction": callToAction == null ? null : callToAction.toJson(),
        "dismiss": dismiss == null ? null : dismiss.toJson(),
        "endpoint": endpoint == null ? null : endpoint.toJson(),
        "hovercardButton":
            hovercardButton == null ? null : hovercardButton.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "isSubscribe": isSubscribe == null ? null : isSubscribe,
        "signinEndpoint":
            signinEndpoint == null ? null : signinEndpoint.toJson(),
        "id": id == null ? null : id,
        "playlistLength":
            playlistLength == null ? null : playlistLength.toJson(),
        "videoDuration": videoDuration == null ? null : videoDuration.toJson(),
      };
}

class Icon {
  Icon({
    this.thumbnails,
  });

  final List<PurpleThumbnail> thumbnails;

  factory Icon.fromRawJson(String str) => Icon.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Icon.fromJson(Map<String, dynamic> json) => Icon(
        thumbnails: json["thumbnails"] == null
            ? null
            : List<PurpleThumbnail>.from(
                json["thumbnails"].map((x) => PurpleThumbnail.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "thumbnails": thumbnails == null
            ? null
            : List<dynamic>.from(thumbnails.map((x) => x.toJson())),
      };
}

class PurpleThumbnail {
  PurpleThumbnail({
    this.url,
  });

  final String url;

  factory PurpleThumbnail.fromRawJson(String str) =>
      PurpleThumbnail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleThumbnail.fromJson(Map<String, dynamic> json) =>
      PurpleThumbnail(
        url: json["url"] == null ? null : json["url"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
      };
}

class Message {
  Message({
    this.mealbarPromoRenderer,
  });

  final MealbarPromoRenderer mealbarPromoRenderer;

  factory Message.fromRawJson(String str) => Message.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        mealbarPromoRenderer: json["mealbarPromoRenderer"] == null
            ? null
            : MealbarPromoRenderer.fromJson(json["mealbarPromoRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "mealbarPromoRenderer":
            mealbarPromoRenderer == null ? null : mealbarPromoRenderer.toJson(),
      };
}

class MealbarPromoRenderer {
  MealbarPromoRenderer({
    this.icon,
    this.messageTexts,
    this.actionButton,
    this.dismissButton,
    this.triggerCondition,
    this.style,
    this.trackingParams,
    this.impressionEndpoints,
    this.isVisible,
    this.messageTitle,
  });

  final IconClass icon;
  final List<MessageTitle> messageTexts;
  final ActionButtonClass actionButton;
  final ActionButtonClass dismissButton;
  final String triggerCondition;
  final String style;
  final String trackingParams;
  final List<ImpressionEndpointElement> impressionEndpoints;
  final bool isVisible;
  final MessageTitle messageTitle;

  factory MealbarPromoRenderer.fromRawJson(String str) =>
      MealbarPromoRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MealbarPromoRenderer.fromJson(Map<String, dynamic> json) =>
      MealbarPromoRenderer(
        icon: json["icon"] == null ? null : IconClass.fromJson(json["icon"]),
        messageTexts: json["messageTexts"] == null
            ? null
            : List<MessageTitle>.from(
                json["messageTexts"].map((x) => MessageTitle.fromJson(x))),
        actionButton: json["actionButton"] == null
            ? null
            : ActionButtonClass.fromJson(json["actionButton"]),
        dismissButton: json["dismissButton"] == null
            ? null
            : ActionButtonClass.fromJson(json["dismissButton"]),
        triggerCondition:
            json["triggerCondition"] == null ? null : json["triggerCondition"],
        style: json["style"] == null ? null : json["style"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        impressionEndpoints: json["impressionEndpoints"] == null
            ? null
            : List<ImpressionEndpointElement>.from(json["impressionEndpoints"]
                .map((x) => ImpressionEndpointElement.fromJson(x))),
        isVisible: json["isVisible"] == null ? null : json["isVisible"],
        messageTitle: json["messageTitle"] == null
            ? null
            : MessageTitle.fromJson(json["messageTitle"]),
      );

  Map<String, dynamic> toJson() => {
        "icon": icon == null ? null : icon.toJson(),
        "messageTexts": messageTexts == null
            ? null
            : List<dynamic>.from(messageTexts.map((x) => x.toJson())),
        "actionButton": actionButton == null ? null : actionButton.toJson(),
        "dismissButton": dismissButton == null ? null : dismissButton.toJson(),
        "triggerCondition": triggerCondition == null ? null : triggerCondition,
        "style": style == null ? null : style,
        "trackingParams": trackingParams == null ? null : trackingParams,
        "impressionEndpoints": impressionEndpoints == null
            ? null
            : List<dynamic>.from(impressionEndpoints.map((x) => x.toJson())),
        "isVisible": isVisible == null ? null : isVisible,
        "messageTitle": messageTitle == null ? null : messageTitle.toJson(),
      };
}

class ActionButtonClass {
  ActionButtonClass({
    this.buttonRenderer,
  });

  final DismissButtonButtonRenderer buttonRenderer;

  factory ActionButtonClass.fromRawJson(String str) =>
      ActionButtonClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ActionButtonClass.fromJson(Map<String, dynamic> json) =>
      ActionButtonClass(
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
    this.text,
    this.serviceEndpoint,
    this.navigationEndpoint,
    this.trackingParams,
  });

  final String style;
  final String size;
  final MessageTitle text;
  final ImpressionEndpointElement serviceEndpoint;
  final NavigationEndpoint navigationEndpoint;
  final String trackingParams;

  factory DismissButtonButtonRenderer.fromRawJson(String str) =>
      DismissButtonButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DismissButtonButtonRenderer.fromJson(Map<String, dynamic> json) =>
      DismissButtonButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        text: json["text"] == null ? null : MessageTitle.fromJson(json["text"]),
        serviceEndpoint: json["serviceEndpoint"] == null
            ? null
            : ImpressionEndpointElement.fromJson(json["serviceEndpoint"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : NavigationEndpoint.fromJson(json["navigationEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "style": style == null ? null : style,
        "size": size == null ? null : size,
        "text": text == null ? null : text.toJson(),
        "serviceEndpoint":
            serviceEndpoint == null ? null : serviceEndpoint.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class ImpressionEndpointElement {
  ImpressionEndpointElement({
    this.clickTrackingParams,
    this.commandMetadata,
    this.feedbackEndpoint,
  });

  final String clickTrackingParams;
  final SubscribeCommandCommandMetadata commandMetadata;
  final FeedbackEndpoint feedbackEndpoint;

  factory ImpressionEndpointElement.fromRawJson(String str) =>
      ImpressionEndpointElement.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ImpressionEndpointElement.fromJson(Map<String, dynamic> json) =>
      ImpressionEndpointElement(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : SubscribeCommandCommandMetadata.fromJson(json["commandMetadata"]),
        feedbackEndpoint: json["feedbackEndpoint"] == null
            ? null
            : FeedbackEndpoint.fromJson(json["feedbackEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "feedbackEndpoint":
            feedbackEndpoint == null ? null : feedbackEndpoint.toJson(),
      };
}

class FeedbackEndpoint {
  FeedbackEndpoint({
    this.feedbackToken,
    this.uiActions,
  });

  final String feedbackToken;
  final UiActions uiActions;

  factory FeedbackEndpoint.fromRawJson(String str) =>
      FeedbackEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FeedbackEndpoint.fromJson(Map<String, dynamic> json) =>
      FeedbackEndpoint(
        feedbackToken:
            json["feedbackToken"] == null ? null : json["feedbackToken"],
        uiActions: json["uiActions"] == null
            ? null
            : UiActions.fromJson(json["uiActions"]),
      );

  Map<String, dynamic> toJson() => {
        "feedbackToken": feedbackToken == null ? null : feedbackToken,
        "uiActions": uiActions == null ? null : uiActions.toJson(),
      };
}

class UiActions {
  UiActions({
    this.hideEnclosingContainer,
  });

  final bool hideEnclosingContainer;

  factory UiActions.fromRawJson(String str) =>
      UiActions.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UiActions.fromJson(Map<String, dynamic> json) => UiActions(
        hideEnclosingContainer: json["hideEnclosingContainer"] == null
            ? null
            : json["hideEnclosingContainer"],
      );

  Map<String, dynamic> toJson() => {
        "hideEnclosingContainer":
            hideEnclosingContainer == null ? null : hideEnclosingContainer,
      };
}

class Microformat {
  Microformat({
    this.playerMicroformatRenderer,
  });

  final PlayerMicroformatRenderer playerMicroformatRenderer;

  factory Microformat.fromRawJson(String str) =>
      Microformat.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Microformat.fromJson(Map<String, dynamic> json) => Microformat(
        playerMicroformatRenderer: json["playerMicroformatRenderer"] == null
            ? null
            : PlayerMicroformatRenderer.fromJson(
                json["playerMicroformatRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "playerMicroformatRenderer": playerMicroformatRenderer == null
            ? null
            : playerMicroformatRenderer.toJson(),
      };
}

class PlayerMicroformatRenderer {
  PlayerMicroformatRenderer({
    this.thumbnail,
    this.embed,
    this.title,
    this.description,
    this.lengthSeconds,
    this.ownerProfileUrl,
    this.externalChannelId,
    this.availableCountries,
    this.isUnlisted,
    this.hasYpcMetadata,
    this.viewCount,
    this.category,
    this.publishDate,
    this.ownerChannelName,
    this.uploadDate,
    this.liveBroadcastDetails,
  });

  final IconClass thumbnail;
  final Embed embed;
  final HeaderText title;
  final HeaderText description;
  final String lengthSeconds;
  final String ownerProfileUrl;
  final String externalChannelId;
  final List<String> availableCountries;
  final bool isUnlisted;
  final bool hasYpcMetadata;
  final String viewCount;
  final String category;
  final DateTime publishDate;
  final String ownerChannelName;
  final DateTime uploadDate;
  final LiveBroadcastDetails liveBroadcastDetails;

  factory PlayerMicroformatRenderer.fromRawJson(String str) =>
      PlayerMicroformatRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlayerMicroformatRenderer.fromJson(Map<String, dynamic> json) =>
      PlayerMicroformatRenderer(
        thumbnail: json["thumbnail"] == null
            ? null
            : IconClass.fromJson(json["thumbnail"]),
        embed: json["embed"] == null ? null : Embed.fromJson(json["embed"]),
        title:
            json["title"] == null ? null : HeaderText.fromJson(json["title"]),
        description: json["description"] == null
            ? null
            : HeaderText.fromJson(json["description"]),
        lengthSeconds:
            json["lengthSeconds"] == null ? null : json["lengthSeconds"],
        ownerProfileUrl:
            json["ownerProfileUrl"] == null ? null : json["ownerProfileUrl"],
        externalChannelId: json["externalChannelId"] == null
            ? null
            : json["externalChannelId"],
        availableCountries: json["availableCountries"] == null
            ? null
            : List<String>.from(json["availableCountries"].map((x) => x)),
        isUnlisted: json["isUnlisted"] == null ? null : json["isUnlisted"],
        hasYpcMetadata:
            json["hasYpcMetadata"] == null ? null : json["hasYpcMetadata"],
        viewCount: json["viewCount"] == null ? null : json["viewCount"],
        category: json["category"] == null ? null : json["category"],
        publishDate: json["publishDate"] == null
            ? null
            : DateTime.parse(json["publishDate"]),
        ownerChannelName:
            json["ownerChannelName"] == null ? null : json["ownerChannelName"],
        uploadDate: json["uploadDate"] == null
            ? null
            : DateTime.parse(json["uploadDate"]),
        liveBroadcastDetails: json["liveBroadcastDetails"] == null
            ? null
            : LiveBroadcastDetails.fromJson(json["liveBroadcastDetails"]),
      );

  Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail == null ? null : thumbnail.toJson(),
        "embed": embed == null ? null : embed.toJson(),
        "title": title == null ? null : title.toJson(),
        "description": description == null ? null : description.toJson(),
        "lengthSeconds": lengthSeconds == null ? null : lengthSeconds,
        "ownerProfileUrl": ownerProfileUrl == null ? null : ownerProfileUrl,
        "externalChannelId":
            externalChannelId == null ? null : externalChannelId,
        "availableCountries": availableCountries == null
            ? null
            : List<dynamic>.from(availableCountries.map((x) => x)),
        "isUnlisted": isUnlisted == null ? null : isUnlisted,
        "hasYpcMetadata": hasYpcMetadata == null ? null : hasYpcMetadata,
        "viewCount": viewCount == null ? null : viewCount,
        "category": category == null ? null : category,
        "publishDate": publishDate == null
            ? null
            : "${publishDate.year.toString().padLeft(4, '0')}-${publishDate.month.toString().padLeft(2, '0')}-${publishDate.day.toString().padLeft(2, '0')}",
        "ownerChannelName": ownerChannelName == null ? null : ownerChannelName,
        "uploadDate": uploadDate == null
            ? null
            : "${uploadDate.year.toString().padLeft(4, '0')}-${uploadDate.month.toString().padLeft(2, '0')}-${uploadDate.day.toString().padLeft(2, '0')}",
        "liveBroadcastDetails":
            liveBroadcastDetails == null ? null : liveBroadcastDetails.toJson(),
      };
}

class Embed {
  Embed({
    this.iframeUrl,
    this.flashUrl,
    this.width,
    this.height,
    this.flashSecureUrl,
  });

  final String iframeUrl;
  final String flashUrl;
  final int width;
  final int height;
  final String flashSecureUrl;

  factory Embed.fromRawJson(String str) => Embed.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Embed.fromJson(Map<String, dynamic> json) => Embed(
        iframeUrl: json["iframeUrl"] == null ? null : json["iframeUrl"],
        flashUrl: json["flashUrl"] == null ? null : json["flashUrl"],
        width: json["width"] == null ? null : json["width"],
        height: json["height"] == null ? null : json["height"],
        flashSecureUrl:
            json["flashSecureUrl"] == null ? null : json["flashSecureUrl"],
      );

  Map<String, dynamic> toJson() => {
        "iframeUrl": iframeUrl == null ? null : iframeUrl,
        "flashUrl": flashUrl == null ? null : flashUrl,
        "width": width == null ? null : width,
        "height": height == null ? null : height,
        "flashSecureUrl": flashSecureUrl == null ? null : flashSecureUrl,
      };
}

class LiveBroadcastDetails {
  LiveBroadcastDetails({
    this.isLiveNow,
    this.startTimestamp,
  });

  final bool isLiveNow;
  final DateTime startTimestamp;

  factory LiveBroadcastDetails.fromRawJson(String str) =>
      LiveBroadcastDetails.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LiveBroadcastDetails.fromJson(Map<String, dynamic> json) =>
      LiveBroadcastDetails(
        isLiveNow: json["isLiveNow"] == null ? null : json["isLiveNow"],
        startTimestamp: json["startTimestamp"] == null
            ? null
            : DateTime.parse(json["startTimestamp"]),
      );

  Map<String, dynamic> toJson() => {
        "isLiveNow": isLiveNow == null ? null : isLiveNow,
        "startTimestamp":
            startTimestamp == null ? null : startTimestamp.toIso8601String(),
      };
}

class PlayabilityStatus {
  PlayabilityStatus({
    this.status,
    this.playableInEmbed,
    this.miniplayer,
    this.contextParams,
    this.liveStreamability,
    this.reason,
  });

  final String status;
  final bool playableInEmbed;
  final Miniplayer miniplayer;
  final String contextParams;
  final LiveStreamability liveStreamability;
  final String reason;

  factory PlayabilityStatus.fromRawJson(String str) =>
      PlayabilityStatus.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlayabilityStatus.fromJson(Map<String, dynamic> json) =>
      PlayabilityStatus(
        status: json["status"] == null ? null : json["status"],
        playableInEmbed:
            json["playableInEmbed"] == null ? null : json["playableInEmbed"],
        miniplayer: json["miniplayer"] == null
            ? null
            : Miniplayer.fromJson(json["miniplayer"]),
        contextParams:
            json["contextParams"] == null ? null : json["contextParams"],
        liveStreamability: json["liveStreamability"] == null
            ? null
            : LiveStreamability.fromJson(json["liveStreamability"]),
        reason: json["reason"] == null ? null : json["reason"],
      );

  Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
        "playableInEmbed": playableInEmbed == null ? null : playableInEmbed,
        "miniplayer": miniplayer == null ? null : miniplayer.toJson(),
        "contextParams": contextParams == null ? null : contextParams,
        "liveStreamability":
            liveStreamability == null ? null : liveStreamability.toJson(),
        "reason": reason == null ? null : reason,
      };
}

class LiveStreamability {
  LiveStreamability({
    this.liveStreamabilityRenderer,
  });

  final LiveStreamabilityRenderer liveStreamabilityRenderer;

  factory LiveStreamability.fromRawJson(String str) =>
      LiveStreamability.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LiveStreamability.fromJson(Map<String, dynamic> json) =>
      LiveStreamability(
        liveStreamabilityRenderer: json["liveStreamabilityRenderer"] == null
            ? null
            : LiveStreamabilityRenderer.fromJson(
                json["liveStreamabilityRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "liveStreamabilityRenderer": liveStreamabilityRenderer == null
            ? null
            : liveStreamabilityRenderer.toJson(),
      };
}

class LiveStreamabilityRenderer {
  LiveStreamabilityRenderer({
    this.videoId,
    this.pollDelayMs,
  });

  final String videoId;
  final String pollDelayMs;

  factory LiveStreamabilityRenderer.fromRawJson(String str) =>
      LiveStreamabilityRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LiveStreamabilityRenderer.fromJson(Map<String, dynamic> json) =>
      LiveStreamabilityRenderer(
        videoId: json["videoId"] == null ? null : json["videoId"],
        pollDelayMs: json["pollDelayMs"] == null ? null : json["pollDelayMs"],
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId == null ? null : videoId,
        "pollDelayMs": pollDelayMs == null ? null : pollDelayMs,
      };
}

class Miniplayer {
  Miniplayer({
    this.miniplayerRenderer,
  });

  final MiniplayerRenderer miniplayerRenderer;

  factory Miniplayer.fromRawJson(String str) =>
      Miniplayer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Miniplayer.fromJson(Map<String, dynamic> json) => Miniplayer(
        miniplayerRenderer: json["miniplayerRenderer"] == null
            ? null
            : MiniplayerRenderer.fromJson(json["miniplayerRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "miniplayerRenderer":
            miniplayerRenderer == null ? null : miniplayerRenderer.toJson(),
      };
}

class MiniplayerRenderer {
  MiniplayerRenderer({
    this.playbackMode,
    this.minimizedEndpoint,
  });

  final String playbackMode;
  final MinimizedEndpoint minimizedEndpoint;

  factory MiniplayerRenderer.fromRawJson(String str) =>
      MiniplayerRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MiniplayerRenderer.fromJson(Map<String, dynamic> json) =>
      MiniplayerRenderer(
        playbackMode:
            json["playbackMode"] == null ? null : json["playbackMode"],
        minimizedEndpoint: json["minimizedEndpoint"] == null
            ? null
            : MinimizedEndpoint.fromJson(json["minimizedEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "playbackMode": playbackMode == null ? null : playbackMode,
        "minimizedEndpoint":
            minimizedEndpoint == null ? null : minimizedEndpoint.toJson(),
      };
}

class MinimizedEndpoint {
  MinimizedEndpoint({
    this.clickTrackingParams,
    this.openPopupAction,
  });

  final String clickTrackingParams;
  final MinimizedEndpointOpenPopupAction openPopupAction;

  factory MinimizedEndpoint.fromRawJson(String str) =>
      MinimizedEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MinimizedEndpoint.fromJson(Map<String, dynamic> json) =>
      MinimizedEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        openPopupAction: json["openPopupAction"] == null
            ? null
            : MinimizedEndpointOpenPopupAction.fromJson(
                json["openPopupAction"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "openPopupAction":
            openPopupAction == null ? null : openPopupAction.toJson(),
      };
}

class MinimizedEndpointOpenPopupAction {
  MinimizedEndpointOpenPopupAction({
    this.popup,
    this.popupType,
  });

  final FluffyPopup popup;
  final String popupType;

  factory MinimizedEndpointOpenPopupAction.fromRawJson(String str) =>
      MinimizedEndpointOpenPopupAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MinimizedEndpointOpenPopupAction.fromJson(
          Map<String, dynamic> json) =>
      MinimizedEndpointOpenPopupAction(
        popup:
            json["popup"] == null ? null : FluffyPopup.fromJson(json["popup"]),
        popupType: json["popupType"] == null ? null : json["popupType"],
      );

  Map<String, dynamic> toJson() => {
        "popup": popup == null ? null : popup.toJson(),
        "popupType": popupType == null ? null : popupType,
      };
}

class FluffyPopup {
  FluffyPopup({
    this.notificationActionRenderer,
  });

  final NotificationActionRenderer notificationActionRenderer;

  factory FluffyPopup.fromRawJson(String str) =>
      FluffyPopup.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyPopup.fromJson(Map<String, dynamic> json) => FluffyPopup(
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
    this.actionButton,
    this.trackingParams,
  });

  final HeaderText responseText;
  final NotificationActionRendererActionButton actionButton;
  final String trackingParams;

  factory NotificationActionRenderer.fromRawJson(String str) =>
      NotificationActionRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NotificationActionRenderer.fromJson(Map<String, dynamic> json) =>
      NotificationActionRenderer(
        responseText: json["responseText"] == null
            ? null
            : HeaderText.fromJson(json["responseText"]),
        actionButton: json["actionButton"] == null
            ? null
            : NotificationActionRendererActionButton.fromJson(
                json["actionButton"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "responseText": responseText == null ? null : responseText.toJson(),
        "actionButton": actionButton == null ? null : actionButton.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class NotificationActionRendererActionButton {
  NotificationActionRendererActionButton({
    this.buttonRenderer,
  });

  final PurpleButtonRenderer buttonRenderer;

  factory NotificationActionRendererActionButton.fromRawJson(String str) =>
      NotificationActionRendererActionButton.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NotificationActionRendererActionButton.fromJson(
          Map<String, dynamic> json) =>
      NotificationActionRendererActionButton(
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
    this.text,
    this.trackingParams,
    this.command,
  });

  final HeaderText text;
  final String trackingParams;
  final NavigationEndpoint command;

  factory PurpleButtonRenderer.fromRawJson(String str) =>
      PurpleButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleButtonRenderer.fromJson(Map<String, dynamic> json) =>
      PurpleButtonRenderer(
        text: json["text"] == null ? null : HeaderText.fromJson(json["text"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        command: json["command"] == null
            ? null
            : NavigationEndpoint.fromJson(json["command"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "command": command == null ? null : command.toJson(),
      };
}

class PlaybackTracking {
  PlaybackTracking({
    this.videostatsPlaybackUrl,
    this.videostatsDelayplayUrl,
    this.videostatsWatchtimeUrl,
    this.ptrackingUrl,
    this.qoeUrl,
    this.setAwesomeUrl,
    this.atrUrl,
    this.youtubeRemarketingUrl,
  });

  final PtrackingUrlClass videostatsPlaybackUrl;
  final AtrUrlClass videostatsDelayplayUrl;
  final PtrackingUrlClass videostatsWatchtimeUrl;
  final PtrackingUrlClass ptrackingUrl;
  final PtrackingUrlClass qoeUrl;
  final AtrUrlClass setAwesomeUrl;
  final AtrUrlClass atrUrl;
  final AtrUrlClass youtubeRemarketingUrl;

  factory PlaybackTracking.fromRawJson(String str) =>
      PlaybackTracking.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlaybackTracking.fromJson(Map<String, dynamic> json) =>
      PlaybackTracking(
        videostatsPlaybackUrl: json["videostatsPlaybackUrl"] == null
            ? null
            : PtrackingUrlClass.fromJson(json["videostatsPlaybackUrl"]),
        videostatsDelayplayUrl: json["videostatsDelayplayUrl"] == null
            ? null
            : AtrUrlClass.fromJson(json["videostatsDelayplayUrl"]),
        videostatsWatchtimeUrl: json["videostatsWatchtimeUrl"] == null
            ? null
            : PtrackingUrlClass.fromJson(json["videostatsWatchtimeUrl"]),
        ptrackingUrl: json["ptrackingUrl"] == null
            ? null
            : PtrackingUrlClass.fromJson(json["ptrackingUrl"]),
        qoeUrl: json["qoeUrl"] == null
            ? null
            : PtrackingUrlClass.fromJson(json["qoeUrl"]),
        setAwesomeUrl: json["setAwesomeUrl"] == null
            ? null
            : AtrUrlClass.fromJson(json["setAwesomeUrl"]),
        atrUrl: json["atrUrl"] == null
            ? null
            : AtrUrlClass.fromJson(json["atrUrl"]),
        youtubeRemarketingUrl: json["youtubeRemarketingUrl"] == null
            ? null
            : AtrUrlClass.fromJson(json["youtubeRemarketingUrl"]),
      );

  Map<String, dynamic> toJson() => {
        "videostatsPlaybackUrl": videostatsPlaybackUrl == null
            ? null
            : videostatsPlaybackUrl.toJson(),
        "videostatsDelayplayUrl": videostatsDelayplayUrl == null
            ? null
            : videostatsDelayplayUrl.toJson(),
        "videostatsWatchtimeUrl": videostatsWatchtimeUrl == null
            ? null
            : videostatsWatchtimeUrl.toJson(),
        "ptrackingUrl": ptrackingUrl == null ? null : ptrackingUrl.toJson(),
        "qoeUrl": qoeUrl == null ? null : qoeUrl.toJson(),
        "setAwesomeUrl": setAwesomeUrl == null ? null : setAwesomeUrl.toJson(),
        "atrUrl": atrUrl == null ? null : atrUrl.toJson(),
        "youtubeRemarketingUrl": youtubeRemarketingUrl == null
            ? null
            : youtubeRemarketingUrl.toJson(),
      };
}

class AtrUrlClass {
  AtrUrlClass({
    this.baseUrl,
    this.elapsedMediaTimeSeconds,
  });

  final String baseUrl;
  final int elapsedMediaTimeSeconds;

  factory AtrUrlClass.fromRawJson(String str) =>
      AtrUrlClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AtrUrlClass.fromJson(Map<String, dynamic> json) => AtrUrlClass(
        baseUrl: json["baseUrl"] == null ? null : json["baseUrl"],
        elapsedMediaTimeSeconds: json["elapsedMediaTimeSeconds"] == null
            ? null
            : json["elapsedMediaTimeSeconds"],
      );

  Map<String, dynamic> toJson() => {
        "baseUrl": baseUrl == null ? null : baseUrl,
        "elapsedMediaTimeSeconds":
            elapsedMediaTimeSeconds == null ? null : elapsedMediaTimeSeconds,
      };
}

class PtrackingUrlClass {
  PtrackingUrlClass({
    this.baseUrl,
  });

  final String baseUrl;

  factory PtrackingUrlClass.fromRawJson(String str) =>
      PtrackingUrlClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PtrackingUrlClass.fromJson(Map<String, dynamic> json) =>
      PtrackingUrlClass(
        baseUrl: json["baseUrl"] == null ? null : json["baseUrl"],
      );

  Map<String, dynamic> toJson() => {
        "baseUrl": baseUrl == null ? null : baseUrl,
      };
}

class PlayerConfig {
  PlayerConfig({
    this.audioConfig,
    this.streamSelectionConfig,
    this.daiConfig,
    this.mediaCommonConfig,
    this.webPlayerConfig,
    this.livePlayerConfig,
  });

  final AudioConfig audioConfig;
  final StreamSelectionConfig streamSelectionConfig;
  final DaiConfig daiConfig;
  final MediaCommonConfig mediaCommonConfig;
  final WebPlayerConfig webPlayerConfig;
  final LivePlayerConfig livePlayerConfig;

  factory PlayerConfig.fromRawJson(String str) =>
      PlayerConfig.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlayerConfig.fromJson(Map<String, dynamic> json) => PlayerConfig(
        audioConfig: json["audioConfig"] == null
            ? null
            : AudioConfig.fromJson(json["audioConfig"]),
        streamSelectionConfig: json["streamSelectionConfig"] == null
            ? null
            : StreamSelectionConfig.fromJson(json["streamSelectionConfig"]),
        daiConfig: json["daiConfig"] == null
            ? null
            : DaiConfig.fromJson(json["daiConfig"]),
        mediaCommonConfig: json["mediaCommonConfig"] == null
            ? null
            : MediaCommonConfig.fromJson(json["mediaCommonConfig"]),
        webPlayerConfig: json["webPlayerConfig"] == null
            ? null
            : WebPlayerConfig.fromJson(json["webPlayerConfig"]),
        livePlayerConfig: json["livePlayerConfig"] == null
            ? null
            : LivePlayerConfig.fromJson(json["livePlayerConfig"]),
      );

  Map<String, dynamic> toJson() => {
        "audioConfig": audioConfig == null ? null : audioConfig.toJson(),
        "streamSelectionConfig": streamSelectionConfig == null
            ? null
            : streamSelectionConfig.toJson(),
        "daiConfig": daiConfig == null ? null : daiConfig.toJson(),
        "mediaCommonConfig":
            mediaCommonConfig == null ? null : mediaCommonConfig.toJson(),
        "webPlayerConfig":
            webPlayerConfig == null ? null : webPlayerConfig.toJson(),
        "livePlayerConfig":
            livePlayerConfig == null ? null : livePlayerConfig.toJson(),
      };
}

class AudioConfig {
  AudioConfig({
    this.loudnessDb,
    this.perceptualLoudnessDb,
    this.enablePerFormatLoudness,
  });

  final double loudnessDb;
  final double perceptualLoudnessDb;
  final bool enablePerFormatLoudness;

  factory AudioConfig.fromRawJson(String str) =>
      AudioConfig.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AudioConfig.fromJson(Map<String, dynamic> json) => AudioConfig(
        loudnessDb:
            json["loudnessDb"] == null ? null : json["loudnessDb"].toDouble(),
        perceptualLoudnessDb: json["perceptualLoudnessDb"] == null
            ? null
            : json["perceptualLoudnessDb"].toDouble(),
        enablePerFormatLoudness: json["enablePerFormatLoudness"] == null
            ? null
            : json["enablePerFormatLoudness"],
      );

  Map<String, dynamic> toJson() => {
        "loudnessDb": loudnessDb == null ? null : loudnessDb,
        "perceptualLoudnessDb":
            perceptualLoudnessDb == null ? null : perceptualLoudnessDb,
        "enablePerFormatLoudness":
            enablePerFormatLoudness == null ? null : enablePerFormatLoudness,
      };
}

class DaiConfig {
  DaiConfig({
    this.enableServerStitchedDai,
    this.enableDai,
  });

  final bool enableServerStitchedDai;
  final bool enableDai;

  factory DaiConfig.fromRawJson(String str) =>
      DaiConfig.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DaiConfig.fromJson(Map<String, dynamic> json) => DaiConfig(
        enableServerStitchedDai: json["enableServerStitchedDai"] == null
            ? null
            : json["enableServerStitchedDai"],
        enableDai: json["enableDai"] == null ? null : json["enableDai"],
      );

  Map<String, dynamic> toJson() => {
        "enableServerStitchedDai":
            enableServerStitchedDai == null ? null : enableServerStitchedDai,
        "enableDai": enableDai == null ? null : enableDai,
      };
}

class LivePlayerConfig {
  LivePlayerConfig({
    this.liveReadaheadSeconds,
    this.hasSubfragmentedFmp4,
  });

  final double liveReadaheadSeconds;
  final bool hasSubfragmentedFmp4;

  factory LivePlayerConfig.fromRawJson(String str) =>
      LivePlayerConfig.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LivePlayerConfig.fromJson(Map<String, dynamic> json) =>
      LivePlayerConfig(
        liveReadaheadSeconds: json["liveReadaheadSeconds"] == null
            ? null
            : json["liveReadaheadSeconds"].toDouble(),
        hasSubfragmentedFmp4: json["hasSubfragmentedFmp4"] == null
            ? null
            : json["hasSubfragmentedFmp4"],
      );

  Map<String, dynamic> toJson() => {
        "liveReadaheadSeconds":
            liveReadaheadSeconds == null ? null : liveReadaheadSeconds,
        "hasSubfragmentedFmp4":
            hasSubfragmentedFmp4 == null ? null : hasSubfragmentedFmp4,
      };
}

class MediaCommonConfig {
  MediaCommonConfig({
    this.dynamicReadaheadConfig,
  });

  final DynamicReadaheadConfig dynamicReadaheadConfig;

  factory MediaCommonConfig.fromRawJson(String str) =>
      MediaCommonConfig.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MediaCommonConfig.fromJson(Map<String, dynamic> json) =>
      MediaCommonConfig(
        dynamicReadaheadConfig: json["dynamicReadaheadConfig"] == null
            ? null
            : DynamicReadaheadConfig.fromJson(json["dynamicReadaheadConfig"]),
      );

  Map<String, dynamic> toJson() => {
        "dynamicReadaheadConfig": dynamicReadaheadConfig == null
            ? null
            : dynamicReadaheadConfig.toJson(),
      };
}

class DynamicReadaheadConfig {
  DynamicReadaheadConfig({
    this.maxReadAheadMediaTimeMs,
    this.minReadAheadMediaTimeMs,
    this.readAheadGrowthRateMs,
  });

  final int maxReadAheadMediaTimeMs;
  final int minReadAheadMediaTimeMs;
  final int readAheadGrowthRateMs;

  factory DynamicReadaheadConfig.fromRawJson(String str) =>
      DynamicReadaheadConfig.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DynamicReadaheadConfig.fromJson(Map<String, dynamic> json) =>
      DynamicReadaheadConfig(
        maxReadAheadMediaTimeMs: json["maxReadAheadMediaTimeMs"] == null
            ? null
            : json["maxReadAheadMediaTimeMs"],
        minReadAheadMediaTimeMs: json["minReadAheadMediaTimeMs"] == null
            ? null
            : json["minReadAheadMediaTimeMs"],
        readAheadGrowthRateMs: json["readAheadGrowthRateMs"] == null
            ? null
            : json["readAheadGrowthRateMs"],
      );

  Map<String, dynamic> toJson() => {
        "maxReadAheadMediaTimeMs":
            maxReadAheadMediaTimeMs == null ? null : maxReadAheadMediaTimeMs,
        "minReadAheadMediaTimeMs":
            minReadAheadMediaTimeMs == null ? null : minReadAheadMediaTimeMs,
        "readAheadGrowthRateMs":
            readAheadGrowthRateMs == null ? null : readAheadGrowthRateMs,
      };
}

class StreamSelectionConfig {
  StreamSelectionConfig({
    this.maxBitrate,
  });

  final String maxBitrate;

  factory StreamSelectionConfig.fromRawJson(String str) =>
      StreamSelectionConfig.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StreamSelectionConfig.fromJson(Map<String, dynamic> json) =>
      StreamSelectionConfig(
        maxBitrate: json["maxBitrate"] == null ? null : json["maxBitrate"],
      );

  Map<String, dynamic> toJson() => {
        "maxBitrate": maxBitrate == null ? null : maxBitrate,
      };
}

class WebPlayerConfig {
  WebPlayerConfig({
    this.webPlayerActionsPorting,
  });

  final WebPlayerActionsPorting webPlayerActionsPorting;

  factory WebPlayerConfig.fromRawJson(String str) =>
      WebPlayerConfig.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WebPlayerConfig.fromJson(Map<String, dynamic> json) =>
      WebPlayerConfig(
        webPlayerActionsPorting: json["webPlayerActionsPorting"] == null
            ? null
            : WebPlayerActionsPorting.fromJson(json["webPlayerActionsPorting"]),
      );

  Map<String, dynamic> toJson() => {
        "webPlayerActionsPorting": webPlayerActionsPorting == null
            ? null
            : webPlayerActionsPorting.toJson(),
      };
}

class WebPlayerActionsPorting {
  WebPlayerActionsPorting({
    this.getSharePanelCommand,
    this.subscribeCommand,
    this.unsubscribeCommand,
    this.addToWatchLaterCommand,
    this.removeFromWatchLaterCommand,
  });

  final GetSharePanelCommand getSharePanelCommand;
  final SubscribeCommand subscribeCommand;
  final UnsubscribeCommand unsubscribeCommand;
  final AddToWatchLaterCommand addToWatchLaterCommand;
  final RemoveFromWatchLaterCommand removeFromWatchLaterCommand;

  factory WebPlayerActionsPorting.fromRawJson(String str) =>
      WebPlayerActionsPorting.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WebPlayerActionsPorting.fromJson(Map<String, dynamic> json) =>
      WebPlayerActionsPorting(
        getSharePanelCommand: json["getSharePanelCommand"] == null
            ? null
            : GetSharePanelCommand.fromJson(json["getSharePanelCommand"]),
        subscribeCommand: json["subscribeCommand"] == null
            ? null
            : SubscribeCommand.fromJson(json["subscribeCommand"]),
        unsubscribeCommand: json["unsubscribeCommand"] == null
            ? null
            : UnsubscribeCommand.fromJson(json["unsubscribeCommand"]),
        addToWatchLaterCommand: json["addToWatchLaterCommand"] == null
            ? null
            : AddToWatchLaterCommand.fromJson(json["addToWatchLaterCommand"]),
        removeFromWatchLaterCommand: json["removeFromWatchLaterCommand"] == null
            ? null
            : RemoveFromWatchLaterCommand.fromJson(
                json["removeFromWatchLaterCommand"]),
      );

  Map<String, dynamic> toJson() => {
        "getSharePanelCommand":
            getSharePanelCommand == null ? null : getSharePanelCommand.toJson(),
        "subscribeCommand":
            subscribeCommand == null ? null : subscribeCommand.toJson(),
        "unsubscribeCommand":
            unsubscribeCommand == null ? null : unsubscribeCommand.toJson(),
        "addToWatchLaterCommand": addToWatchLaterCommand == null
            ? null
            : addToWatchLaterCommand.toJson(),
        "removeFromWatchLaterCommand": removeFromWatchLaterCommand == null
            ? null
            : removeFromWatchLaterCommand.toJson(),
      };
}

class AddToWatchLaterCommand {
  AddToWatchLaterCommand({
    this.clickTrackingParams,
    this.commandMetadata,
    this.playlistEditEndpoint,
  });

  final String clickTrackingParams;
  final SubscribeCommandCommandMetadata commandMetadata;
  final AddToWatchLaterCommandPlaylistEditEndpoint playlistEditEndpoint;

  factory AddToWatchLaterCommand.fromRawJson(String str) =>
      AddToWatchLaterCommand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddToWatchLaterCommand.fromJson(Map<String, dynamic> json) =>
      AddToWatchLaterCommand(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : SubscribeCommandCommandMetadata.fromJson(json["commandMetadata"]),
        playlistEditEndpoint: json["playlistEditEndpoint"] == null
            ? null
            : AddToWatchLaterCommandPlaylistEditEndpoint.fromJson(
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

class AddToWatchLaterCommandPlaylistEditEndpoint {
  AddToWatchLaterCommandPlaylistEditEndpoint({
    this.playlistId,
    this.actions,
  });

  final String playlistId;
  final List<PurpleAction> actions;

  factory AddToWatchLaterCommandPlaylistEditEndpoint.fromRawJson(String str) =>
      AddToWatchLaterCommandPlaylistEditEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddToWatchLaterCommandPlaylistEditEndpoint.fromJson(
          Map<String, dynamic> json) =>
      AddToWatchLaterCommandPlaylistEditEndpoint(
        playlistId: json["playlistId"] == null ? null : json["playlistId"],
        actions: json["actions"] == null
            ? null
            : List<PurpleAction>.from(
                json["actions"].map((x) => PurpleAction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "playlistId": playlistId == null ? null : playlistId,
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toJson())),
      };
}

class PurpleAction {
  PurpleAction({
    this.addedVideoId,
    this.action,
  });

  final String addedVideoId;
  final String action;

  factory PurpleAction.fromRawJson(String str) =>
      PurpleAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleAction.fromJson(Map<String, dynamic> json) => PurpleAction(
        addedVideoId:
            json["addedVideoId"] == null ? null : json["addedVideoId"],
        action: json["action"] == null ? null : json["action"],
      );

  Map<String, dynamic> toJson() => {
        "addedVideoId": addedVideoId == null ? null : addedVideoId,
        "action": action == null ? null : action,
      };
}

class GetSharePanelCommand {
  GetSharePanelCommand({
    this.clickTrackingParams,
    this.commandMetadata,
    this.webPlayerShareEntityServiceEndpoint,
  });

  final String clickTrackingParams;
  final SubscribeCommandCommandMetadata commandMetadata;
  final WebPlayerShareEntityServiceEndpoint webPlayerShareEntityServiceEndpoint;

  factory GetSharePanelCommand.fromRawJson(String str) =>
      GetSharePanelCommand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetSharePanelCommand.fromJson(Map<String, dynamic> json) =>
      GetSharePanelCommand(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : SubscribeCommandCommandMetadata.fromJson(json["commandMetadata"]),
        webPlayerShareEntityServiceEndpoint:
            json["webPlayerShareEntityServiceEndpoint"] == null
                ? null
                : WebPlayerShareEntityServiceEndpoint.fromJson(
                    json["webPlayerShareEntityServiceEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "webPlayerShareEntityServiceEndpoint":
            webPlayerShareEntityServiceEndpoint == null
                ? null
                : webPlayerShareEntityServiceEndpoint.toJson(),
      };
}

class WebPlayerShareEntityServiceEndpoint {
  WebPlayerShareEntityServiceEndpoint({
    this.serializedShareEntity,
  });

  final String serializedShareEntity;

  factory WebPlayerShareEntityServiceEndpoint.fromRawJson(String str) =>
      WebPlayerShareEntityServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WebPlayerShareEntityServiceEndpoint.fromJson(
          Map<String, dynamic> json) =>
      WebPlayerShareEntityServiceEndpoint(
        serializedShareEntity: json["serializedShareEntity"] == null
            ? null
            : json["serializedShareEntity"],
      );

  Map<String, dynamic> toJson() => {
        "serializedShareEntity":
            serializedShareEntity == null ? null : serializedShareEntity,
      };
}

class RemoveFromWatchLaterCommand {
  RemoveFromWatchLaterCommand({
    this.clickTrackingParams,
    this.commandMetadata,
    this.playlistEditEndpoint,
  });

  final String clickTrackingParams;
  final SubscribeCommandCommandMetadata commandMetadata;
  final RemoveFromWatchLaterCommandPlaylistEditEndpoint playlistEditEndpoint;

  factory RemoveFromWatchLaterCommand.fromRawJson(String str) =>
      RemoveFromWatchLaterCommand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RemoveFromWatchLaterCommand.fromJson(Map<String, dynamic> json) =>
      RemoveFromWatchLaterCommand(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : SubscribeCommandCommandMetadata.fromJson(json["commandMetadata"]),
        playlistEditEndpoint: json["playlistEditEndpoint"] == null
            ? null
            : RemoveFromWatchLaterCommandPlaylistEditEndpoint.fromJson(
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

class RemoveFromWatchLaterCommandPlaylistEditEndpoint {
  RemoveFromWatchLaterCommandPlaylistEditEndpoint({
    this.playlistId,
    this.actions,
  });

  final String playlistId;
  final List<FluffyAction> actions;

  factory RemoveFromWatchLaterCommandPlaylistEditEndpoint.fromRawJson(
          String str) =>
      RemoveFromWatchLaterCommandPlaylistEditEndpoint.fromJson(
          json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RemoveFromWatchLaterCommandPlaylistEditEndpoint.fromJson(
          Map<String, dynamic> json) =>
      RemoveFromWatchLaterCommandPlaylistEditEndpoint(
        playlistId: json["playlistId"] == null ? null : json["playlistId"],
        actions: json["actions"] == null
            ? null
            : List<FluffyAction>.from(
                json["actions"].map((x) => FluffyAction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "playlistId": playlistId == null ? null : playlistId,
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

  final String action;
  final String removedVideoId;

  factory FluffyAction.fromRawJson(String str) =>
      FluffyAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyAction.fromJson(Map<String, dynamic> json) => FluffyAction(
        action: json["action"] == null ? null : json["action"],
        removedVideoId:
            json["removedVideoId"] == null ? null : json["removedVideoId"],
      );

  Map<String, dynamic> toJson() => {
        "action": action == null ? null : action,
        "removedVideoId": removedVideoId == null ? null : removedVideoId,
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
    this.hasDecorated,
  });

  final bool hasDecorated;

  factory WebResponseContextExtensionData.fromRawJson(String str) =>
      WebResponseContextExtensionData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WebResponseContextExtensionData.fromJson(Map<String, dynamic> json) =>
      WebResponseContextExtensionData(
        hasDecorated:
            json["hasDecorated"] == null ? null : json["hasDecorated"],
      );

  Map<String, dynamic> toJson() => {
        "hasDecorated": hasDecorated == null ? null : hasDecorated,
      };
}

class Storyboards {
  Storyboards({
    this.playerStoryboardSpecRenderer,
    this.playerLiveStoryboardSpecRenderer,
  });

  final PlayerStoryboardSpecRenderer playerStoryboardSpecRenderer;
  final PlayerStoryboardSpecRenderer playerLiveStoryboardSpecRenderer;

  factory Storyboards.fromRawJson(String str) =>
      Storyboards.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Storyboards.fromJson(Map<String, dynamic> json) => Storyboards(
        playerStoryboardSpecRenderer:
            json["playerStoryboardSpecRenderer"] == null
                ? null
                : PlayerStoryboardSpecRenderer.fromJson(
                    json["playerStoryboardSpecRenderer"]),
        playerLiveStoryboardSpecRenderer:
            json["playerLiveStoryboardSpecRenderer"] == null
                ? null
                : PlayerStoryboardSpecRenderer.fromJson(
                    json["playerLiveStoryboardSpecRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "playerStoryboardSpecRenderer": playerStoryboardSpecRenderer == null
            ? null
            : playerStoryboardSpecRenderer.toJson(),
        "playerLiveStoryboardSpecRenderer":
            playerLiveStoryboardSpecRenderer == null
                ? null
                : playerLiveStoryboardSpecRenderer.toJson(),
      };
}

class PlayerStoryboardSpecRenderer {
  PlayerStoryboardSpecRenderer({
    this.spec,
  });

  final String spec;

  factory PlayerStoryboardSpecRenderer.fromRawJson(String str) =>
      PlayerStoryboardSpecRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlayerStoryboardSpecRenderer.fromJson(Map<String, dynamic> json) =>
      PlayerStoryboardSpecRenderer(
        spec: json["spec"] == null ? null : json["spec"],
      );

  Map<String, dynamic> toJson() => {
        "spec": spec == null ? null : spec,
      };
}

class StreamingData {
  StreamingData({
    this.expiresInSeconds,
    this.formats,
    this.adaptiveFormats,
    this.dashManifestUrl,
    this.hlsManifestUrl,
  });

  final String expiresInSeconds;
  final List<Format> formats;
  final List<Format> adaptiveFormats;
  final String dashManifestUrl;
  final String hlsManifestUrl;

  factory StreamingData.fromRawJson(String str) =>
      StreamingData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StreamingData.fromJson(Map<String, dynamic> json) => StreamingData(
        expiresInSeconds:
            json["expiresInSeconds"] == null ? null : json["expiresInSeconds"],
        formats: json["formats"] == null
            ? null
            : List<Format>.from(json["formats"].map((x) => Format.fromJson(x))),
        adaptiveFormats: json["adaptiveFormats"] == null
            ? null
            : List<Format>.from(
                json["adaptiveFormats"].map((x) => Format.fromJson(x))),
        dashManifestUrl:
            json["dashManifestUrl"] == null ? null : json["dashManifestUrl"],
        hlsManifestUrl:
            json["hlsManifestUrl"] == null ? null : json["hlsManifestUrl"],
      );

  Map<String, dynamic> toJson() => {
        "expiresInSeconds": expiresInSeconds == null ? null : expiresInSeconds,
        "formats": formats == null
            ? null
            : List<dynamic>.from(formats.map((x) => x.toJson())),
        "adaptiveFormats": adaptiveFormats == null
            ? null
            : List<dynamic>.from(adaptiveFormats.map((x) => x.toJson())),
        "dashManifestUrl": dashManifestUrl == null ? null : dashManifestUrl,
        "hlsManifestUrl": hlsManifestUrl == null ? null : hlsManifestUrl,
      };
}

class Format {
  Format({
    this.itag,
    this.mimeType,
    this.bitrate,
    this.width,
    this.height,
    this.initRange,
    this.indexRange,
    this.lastModified,
    this.contentLength,
    this.quality,
    this.fps,
    this.qualityLabel,
    this.projectionType,
    this.averageBitrate,
    this.approxDurationMs,
    this.signatureCipher,
    this.url,
    this.cipher,
    this.colorInfo,
    this.highReplication,
    this.audioQuality,
    this.audioSampleRate,
    this.audioChannels,
  });

  final int itag;
  final String mimeType;
  final int bitrate;
  final int width;
  final int height;
  final Range initRange;
  final Range indexRange;
  final String lastModified;
  final String contentLength;
  final String quality;
  final int fps;
  final String qualityLabel;
  final ProjectionType projectionType;
  final int averageBitrate;
  final String approxDurationMs;
  final String signatureCipher;
  final String cipher;
  final String url;
  final ColorInfo colorInfo;
  final bool highReplication;
  final String audioQuality;
  final String audioSampleRate;
  final int audioChannels;

  factory Format.fromRawJson(String str) => Format.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Format.fromJson(Map<String, dynamic> json) => Format(
        itag: json["itag"] == null ? null : json["itag"],
        mimeType: json["mimeType"] == null ? null : json["mimeType"],
        bitrate: json["bitrate"] == null ? null : json["bitrate"],
        width: json["width"] == null ? null : json["width"],
        height: json["height"] == null ? null : json["height"],
        initRange: json["initRange"] == null
            ? null
            : Range.fromJson(json["initRange"]),
        indexRange: json["indexRange"] == null
            ? null
            : Range.fromJson(json["indexRange"]),
        lastModified:
            json["lastModified"] == null ? null : json["lastModified"],
        contentLength:
            json["contentLength"] == null ? null : json["contentLength"],
        quality: json["quality"] == null ? null : json["quality"],
        fps: json["fps"] == null ? null : json["fps"],
        qualityLabel:
            json["qualityLabel"] == null ? null : json["qualityLabel"],
        projectionType: json["projectionType"] == null
            ? null
            : projectionTypeValues.map[json["projectionType"]],
        averageBitrate:
            json["averageBitrate"] == null ? null : json["averageBitrate"],
        approxDurationMs:
            json["approxDurationMs"] == null ? null : json["approxDurationMs"],
        signatureCipher:
            json["signatureCipher"] == null ? null : json["signatureCipher"],
        cipher: json["cipher"] == null ? null : json["cipher"],
        url: json["url"] == null ? null : json["url"],
        colorInfo: json["colorInfo"] == null
            ? null
            : ColorInfo.fromJson(json["colorInfo"]),
        highReplication:
            json["highReplication"] == null ? null : json["highReplication"],
        audioQuality:
            json["audioQuality"] == null ? null : json["audioQuality"],
        audioSampleRate:
            json["audioSampleRate"] == null ? null : json["audioSampleRate"],
        audioChannels:
            json["audioChannels"] == null ? null : json["audioChannels"],
      );

  Map<String, dynamic> toJson() => {
        "itag": itag == null ? null : itag,
        "mimeType": mimeType == null ? null : mimeType,
        "bitrate": bitrate == null ? null : bitrate,
        "width": width == null ? null : width,
        "height": height == null ? null : height,
        "initRange": initRange == null ? null : initRange.toJson(),
        "indexRange": indexRange == null ? null : indexRange.toJson(),
        "lastModified": lastModified == null ? null : lastModified,
        "contentLength": contentLength == null ? null : contentLength,
        "quality": quality == null ? null : quality,
        "fps": fps == null ? null : fps,
        "qualityLabel": qualityLabel == null ? null : qualityLabel,
        "projectionType": projectionType == null
            ? null
            : projectionTypeValues.reverse[projectionType],
        "averageBitrate": averageBitrate == null ? null : averageBitrate,
        "approxDurationMs": approxDurationMs == null ? null : approxDurationMs,
        "signatureCipher": signatureCipher == null ? null : signatureCipher,
        "url": url == null ? null : url,
        "cipher": cipher == null ? null : cipher,
        "colorInfo": colorInfo == null ? null : colorInfo.toJson(),
        "highReplication": highReplication == null ? null : highReplication,
        "audioQuality": audioQuality == null ? null : audioQuality,
        "audioSampleRate": audioSampleRate == null ? null : audioSampleRate,
        "audioChannels": audioChannels == null ? null : audioChannels,
      };
}

class ColorInfo {
  ColorInfo({
    this.primaries,
    this.transferCharacteristics,
    this.matrixCoefficients,
  });

  final Primaries primaries;
  final TransferCharacteristics transferCharacteristics;
  final MatrixCoefficients matrixCoefficients;

  factory ColorInfo.fromRawJson(String str) =>
      ColorInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ColorInfo.fromJson(Map<String, dynamic> json) => ColorInfo(
        primaries: json["primaries"] == null
            ? null
            : primariesValues.map[json["primaries"]],
        transferCharacteristics: json["transferCharacteristics"] == null
            ? null
            : transferCharacteristicsValues
                .map[json["transferCharacteristics"]],
        matrixCoefficients: json["matrixCoefficients"] == null
            ? null
            : matrixCoefficientsValues.map[json["matrixCoefficients"]],
      );

  Map<String, dynamic> toJson() => {
        "primaries":
            primaries == null ? null : primariesValues.reverse[primaries],
        "transferCharacteristics": transferCharacteristics == null
            ? null
            : transferCharacteristicsValues.reverse[transferCharacteristics],
        "matrixCoefficients": matrixCoefficients == null
            ? null
            : matrixCoefficientsValues.reverse[matrixCoefficients],
      };
}

enum MatrixCoefficients { COLOR_MATRIX_COEFFICIENTS_BT709 }

final matrixCoefficientsValues = EnumValues({
  "COLOR_MATRIX_COEFFICIENTS_BT709":
      MatrixCoefficients.COLOR_MATRIX_COEFFICIENTS_BT709
});

enum Primaries { COLOR_PRIMARIES_BT709 }

final primariesValues =
    EnumValues({"COLOR_PRIMARIES_BT709": Primaries.COLOR_PRIMARIES_BT709});

enum TransferCharacteristics { COLOR_TRANSFER_CHARACTERISTICS_BT709 }

final transferCharacteristicsValues = EnumValues({
  "COLOR_TRANSFER_CHARACTERISTICS_BT709":
      TransferCharacteristics.COLOR_TRANSFER_CHARACTERISTICS_BT709
});

class Range {
  Range({
    this.start,
    this.end,
  });

  final String start;
  final String end;

  factory Range.fromRawJson(String str) => Range.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Range.fromJson(Map<String, dynamic> json) => Range(
        start: json["start"] == null ? null : json["start"],
        end: json["end"] == null ? null : json["end"],
      );

  Map<String, dynamic> toJson() => {
        "start": start == null ? null : start,
        "end": end == null ? null : end,
      };
}

enum ProjectionType { RECTANGULAR }

final projectionTypeValues =
    EnumValues({"RECTANGULAR": ProjectionType.RECTANGULAR});

class VideoDetails {
  VideoDetails({
    this.videoId,
    this.title,
    this.lengthSeconds,
    this.keywords,
    this.channelId,
    this.isOwnerViewing,
    this.shortDescription,
    this.isCrawlable,
    this.thumbnail,
    this.averageRating,
    this.allowRatings,
    this.viewCount,
    this.author,
    this.isPrivate,
    this.isUnpluggedCorpus,
    this.isLiveContent,
    this.isLive,
    this.isLiveDvrEnabled,
    this.liveChunkReadahead,
    this.isLiveDefaultBroadcast,
    this.isLowLatencyLiveStream,
    this.latencyClass,
  });

  final String videoId;
  final String title;
  final String lengthSeconds;
  final List<String> keywords;
  final String channelId;
  final bool isOwnerViewing;
  final String shortDescription;
  final bool isCrawlable;
  final IconClass thumbnail;
  final double averageRating;
  final bool allowRatings;
  final String viewCount;
  final String author;
  final bool isPrivate;
  final bool isUnpluggedCorpus;
  final bool isLiveContent;
  final bool isLive;
  final bool isLiveDvrEnabled;
  final int liveChunkReadahead;
  final bool isLiveDefaultBroadcast;
  final bool isLowLatencyLiveStream;
  final String latencyClass;

  factory VideoDetails.fromRawJson(String str) =>
      VideoDetails.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VideoDetails.fromJson(Map<String, dynamic> json) => VideoDetails(
        videoId: json["videoId"] == null ? null : json["videoId"],
        title: json["title"] == null ? null : json["title"],
        lengthSeconds:
            json["lengthSeconds"] == null ? null : json["lengthSeconds"],
        keywords: json["keywords"] == null
            ? null
            : List<String>.from(json["keywords"].map((x) => x)),
        channelId: json["channelId"] == null ? null : json["channelId"],
        isOwnerViewing:
            json["isOwnerViewing"] == null ? null : json["isOwnerViewing"],
        shortDescription:
            json["shortDescription"] == null ? null : json["shortDescription"],
        isCrawlable: json["isCrawlable"] == null ? null : json["isCrawlable"],
        thumbnail: json["thumbnail"] == null
            ? null
            : IconClass.fromJson(json["thumbnail"]),
        averageRating: json["averageRating"] == null
            ? null
            : json["averageRating"].toDouble(),
        allowRatings:
            json["allowRatings"] == null ? null : json["allowRatings"],
        viewCount: json["viewCount"] == null ? null : json["viewCount"],
        author: json["author"] == null ? null : json["author"],
        isPrivate: json["isPrivate"] == null ? null : json["isPrivate"],
        isUnpluggedCorpus: json["isUnpluggedCorpus"] == null
            ? null
            : json["isUnpluggedCorpus"],
        isLiveContent:
            json["isLiveContent"] == null ? null : json["isLiveContent"],
        isLive: json["isLive"] == null ? null : json["isLive"],
        isLiveDvrEnabled:
            json["isLiveDvrEnabled"] == null ? null : json["isLiveDvrEnabled"],
        liveChunkReadahead: json["liveChunkReadahead"] == null
            ? null
            : json["liveChunkReadahead"],
        isLiveDefaultBroadcast: json["isLiveDefaultBroadcast"] == null
            ? null
            : json["isLiveDefaultBroadcast"],
        isLowLatencyLiveStream: json["isLowLatencyLiveStream"] == null
            ? null
            : json["isLowLatencyLiveStream"],
        latencyClass:
            json["latencyClass"] == null ? null : json["latencyClass"],
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId == null ? null : videoId,
        "title": title == null ? null : title,
        "lengthSeconds": lengthSeconds == null ? null : lengthSeconds,
        "keywords": keywords == null
            ? null
            : List<dynamic>.from(keywords.map((x) => x)),
        "channelId": channelId == null ? null : channelId,
        "isOwnerViewing": isOwnerViewing == null ? null : isOwnerViewing,
        "shortDescription": shortDescription == null ? null : shortDescription,
        "isCrawlable": isCrawlable == null ? null : isCrawlable,
        "thumbnail": thumbnail == null ? null : thumbnail.toJson(),
        "averageRating": averageRating == null ? null : averageRating,
        "allowRatings": allowRatings == null ? null : allowRatings,
        "viewCount": viewCount == null ? null : viewCount,
        "author": author == null ? null : author,
        "isPrivate": isPrivate == null ? null : isPrivate,
        "isUnpluggedCorpus":
            isUnpluggedCorpus == null ? null : isUnpluggedCorpus,
        "isLiveContent": isLiveContent == null ? null : isLiveContent,
        "isLive": isLive == null ? null : isLive,
        "isLiveDvrEnabled": isLiveDvrEnabled == null ? null : isLiveDvrEnabled,
        "liveChunkReadahead":
            liveChunkReadahead == null ? null : liveChunkReadahead,
        "isLiveDefaultBroadcast":
            isLiveDefaultBroadcast == null ? null : isLiveDefaultBroadcast,
        "isLowLatencyLiveStream":
            isLowLatencyLiveStream == null ? null : isLowLatencyLiveStream,
        "latencyClass": latencyClass == null ? null : latencyClass,
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
