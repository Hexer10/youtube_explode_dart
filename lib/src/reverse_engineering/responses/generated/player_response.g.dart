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
        responseContext: ResponseContext.fromJson(json["responseContext"]),
        playabilityStatus:
            PlayabilityStatus.fromJson(json["playabilityStatus"]),
        streamingData: StreamingData.fromJson(json["streamingData"]),
        playbackTracking: PlaybackTracking.fromJson(json["playbackTracking"]),
        captions: Captions.fromJson(json["captions"]),
        videoDetails: VideoDetails.fromJson(json["videoDetails"]),
        annotations: List<Annotation>.from(
            json["annotations"].map((x) => Annotation.fromJson(x))),
        playerConfig: PlayerConfig.fromJson(json["playerConfig"]),
        storyboards: Storyboards.fromJson(json["storyboards"]),
        microformat: Microformat.fromJson(json["microformat"]),
        cards: Cards.fromJson(json["cards"]),
        trackingParams: json["trackingParams"],
        attestation: Attestation.fromJson(json["attestation"]),
        messages: List<Message>.from(
            json["messages"].map((x) => Message.fromJson(x))),
        endscreen: Endscreen.fromJson(json["endscreen"]),
      );

  Map<String, dynamic> toJson() => {
        "responseContext": responseContext.toJson(),
        "playabilityStatus": playabilityStatus.toJson(),
        "streamingData": streamingData.toJson(),
        "playbackTracking": playbackTracking.toJson(),
        "captions": captions.toJson(),
        "videoDetails": videoDetails.toJson(),
        "annotations": List<dynamic>.from(annotations.map((x) => x.toJson())),
        "playerConfig": playerConfig.toJson(),
        "storyboards": storyboards.toJson(),
        "microformat": microformat.toJson(),
        "cards": cards.toJson(),
        "trackingParams": trackingParams,
        "attestation": attestation.toJson(),
        "messages": List<dynamic>.from(messages.map((x) => x.toJson())),
        "endscreen": endscreen.toJson(),
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
            PlayerAnnotationsExpandedRenderer.fromJson(
                json["playerAnnotationsExpandedRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "playerAnnotationsExpandedRenderer":
            playerAnnotationsExpandedRenderer.toJson(),
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
        featuredChannel: FeaturedChannel.fromJson(json["featuredChannel"]),
        allowSwipeDismiss: json["allowSwipeDismiss"],
        annotationId: json["annotationId"],
      );

  Map<String, dynamic> toJson() => {
        "featuredChannel": featuredChannel.toJson(),
        "allowSwipeDismiss": allowSwipeDismiss,
        "annotationId": annotationId,
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
        startTimeMs: json["startTimeMs"],
        endTimeMs: json["endTimeMs"],
        watermark: IconClass.fromJson(json["watermark"]),
        trackingParams: json["trackingParams"],
        navigationEndpoint: Endpoint.fromJson(json["navigationEndpoint"]),
        channelName: json["channelName"],
        subscribeButton: SubscribeButtonClass.fromJson(json["subscribeButton"]),
      );

  Map<String, dynamic> toJson() => {
        "startTimeMs": startTimeMs,
        "endTimeMs": endTimeMs,
        "watermark": watermark.toJson(),
        "trackingParams": trackingParams,
        "navigationEndpoint": navigationEndpoint.toJson(),
        "channelName": channelName,
        "subscribeButton": subscribeButton.toJson(),
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
        clickTrackingParams: json["clickTrackingParams"],
        commandMetadata:
            NavigationEndpointCommandMetadata.fromJson(json["commandMetadata"]),
        browseEndpoint: json["browseEndpoint"] == null
            ? null
            : BrowseEndpoint.fromJson(json["browseEndpoint"]),
        watchEndpoint: json["watchEndpoint"] == null
            ? null
            : NavigationEndpointWatchEndpoint.fromJson(json["watchEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams": clickTrackingParams,
        "commandMetadata": commandMetadata.toJson(),
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
        browseId: json["browseId"],
      );

  Map<String, dynamic> toJson() => {
        "browseId": browseId,
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
        webCommandMetadata:
            PurpleWebCommandMetadata.fromJson(json["webCommandMetadata"]),
      );

  Map<String, dynamic> toJson() => {
        "webCommandMetadata": webCommandMetadata.toJson(),
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
        url: json["url"],
        webPageType: webPageTypeValues.map[json["webPageType"]],
        rootVe: json["rootVe"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "webPageType": webPageTypeValues.reverse[webPageType],
        "rootVe": rootVe,
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
        videoId: json["videoId"],
        playlistId: json["playlistId"] == null ? null : json["playlistId"],
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId,
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
        subscribeButtonRenderer:
            SubscribeButtonRenderer.fromJson(json["subscribeButtonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "subscribeButtonRenderer": subscribeButtonRenderer.toJson(),
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
  final List<ServiceEndpoint> serviceEndpoints;
  final SubscribeAccessibilityClass subscribeAccessibility;
  final SubscribeAccessibilityClass unsubscribeAccessibility;
  final SigninEndpoint signInEndpoint;

  factory SubscribeButtonRenderer.fromRawJson(String str) =>
      SubscribeButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SubscribeButtonRenderer.fromJson(Map<String, dynamic> json) =>
      SubscribeButtonRenderer(
        buttonText: MessageTitle.fromJson(json["buttonText"]),
        subscribed: json["subscribed"],
        enabled: json["enabled"],
        type: json["type"],
        channelId: json["channelId"],
        showPreferences: json["showPreferences"],
        subscribedButtonText:
            MessageTitle.fromJson(json["subscribedButtonText"]),
        unsubscribedButtonText:
            MessageTitle.fromJson(json["unsubscribedButtonText"]),
        trackingParams: json["trackingParams"],
        unsubscribeButtonText:
            MessageTitle.fromJson(json["unsubscribeButtonText"]),
        serviceEndpoints: List<ServiceEndpoint>.from(
            json["serviceEndpoints"].map((x) => ServiceEndpoint.fromJson(x))),
        subscribeAccessibility: SubscribeAccessibilityClass.fromJson(
            json["subscribeAccessibility"]),
        unsubscribeAccessibility: SubscribeAccessibilityClass.fromJson(
            json["unsubscribeAccessibility"]),
        signInEndpoint: json["signInEndpoint"] == null
            ? null
            : SigninEndpoint.fromJson(json["signInEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "buttonText": buttonText.toJson(),
        "subscribed": subscribed,
        "enabled": enabled,
        "type": type,
        "channelId": channelId,
        "showPreferences": showPreferences,
        "subscribedButtonText": subscribedButtonText.toJson(),
        "unsubscribedButtonText": unsubscribedButtonText.toJson(),
        "trackingParams": trackingParams,
        "unsubscribeButtonText": unsubscribeButtonText.toJson(),
        "serviceEndpoints":
            List<dynamic>.from(serviceEndpoints.map((x) => x.toJson())),
        "subscribeAccessibility": subscribeAccessibility.toJson(),
        "unsubscribeAccessibility": unsubscribeAccessibility.toJson(),
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
        runs: List<Run>.from(json["runs"].map((x) => Run.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "runs": List<dynamic>.from(runs.map((x) => x.toJson())),
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
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "text": text,
      };
}

class ServiceEndpoint {
  ServiceEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.subscribeEndpoint,
    this.signalServiceEndpoint,
  });

  final String clickTrackingParams;
  final ServiceEndpointCommandMetadata commandMetadata;
  final SubscribeEndpoint subscribeEndpoint;
  final SignalServiceEndpoint signalServiceEndpoint;

  factory ServiceEndpoint.fromRawJson(String str) =>
      ServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ServiceEndpoint.fromJson(Map<String, dynamic> json) =>
      ServiceEndpoint(
        clickTrackingParams: json["clickTrackingParams"],
        commandMetadata:
            ServiceEndpointCommandMetadata.fromJson(json["commandMetadata"]),
        subscribeEndpoint: json["subscribeEndpoint"] == null
            ? null
            : SubscribeEndpoint.fromJson(json["subscribeEndpoint"]),
        signalServiceEndpoint: json["signalServiceEndpoint"] == null
            ? null
            : SignalServiceEndpoint.fromJson(json["signalServiceEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams": clickTrackingParams,
        "commandMetadata": commandMetadata.toJson(),
        "subscribeEndpoint":
            subscribeEndpoint == null ? null : subscribeEndpoint.toJson(),
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
        webCommandMetadata:
            FluffyWebCommandMetadata.fromJson(json["webCommandMetadata"]),
      );

  Map<String, dynamic> toJson() => {
        "webCommandMetadata": webCommandMetadata.toJson(),
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
        url: urlValues.map[json["url"]],
        sendPost: json["sendPost"],
        apiUrl: json["apiUrl"] == null ? null : json["apiUrl"],
      );

  Map<String, dynamic> toJson() => {
        "url": urlValues.reverse[url],
        "sendPost": sendPost,
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
        signal: json["signal"],
        actions: List<SignalServiceEndpointAction>.from(json["actions"]
            .map((x) => SignalServiceEndpointAction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "signal": signal,
        "actions": List<dynamic>.from(actions.map((x) => x.toJson())),
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
        clickTrackingParams: json["clickTrackingParams"],
        openPopupAction:
            ActionOpenPopupAction.fromJson(json["openPopupAction"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams": clickTrackingParams,
        "openPopupAction": openPopupAction.toJson(),
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
        popup: PurplePopup.fromJson(json["popup"]),
        popupType: json["popupType"],
      );

  Map<String, dynamic> toJson() => {
        "popup": popup.toJson(),
        "popupType": popupType,
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
        confirmDialogRenderer:
            ConfirmDialogRenderer.fromJson(json["confirmDialogRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "confirmDialogRenderer": confirmDialogRenderer.toJson(),
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
        trackingParams: json["trackingParams"],
        dialogMessages: List<MessageTitle>.from(
            json["dialogMessages"].map((x) => MessageTitle.fromJson(x))),
        confirmButton: CancelButtonClass.fromJson(json["confirmButton"]),
        cancelButton: CancelButtonClass.fromJson(json["cancelButton"]),
        primaryIsCancel: json["primaryIsCancel"],
      );

  Map<String, dynamic> toJson() => {
        "trackingParams": trackingParams,
        "dialogMessages":
            List<dynamic>.from(dialogMessages.map((x) => x.toJson())),
        "confirmButton": confirmButton.toJson(),
        "cancelButton": cancelButton.toJson(),
        "primaryIsCancel": primaryIsCancel,
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
        buttonRenderer:
            CancelButtonButtonRenderer.fromJson(json["buttonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "buttonRenderer": buttonRenderer.toJson(),
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
        style: json["style"],
        size: json["size"],
        isDisabled: json["isDisabled"],
        text: MessageTitle.fromJson(json["text"]),
        accessibility: AccessibilityDataClass.fromJson(json["accessibility"]),
        trackingParams: json["trackingParams"],
        serviceEndpoint: json["serviceEndpoint"] == null
            ? null
            : UnsubscribeCommand.fromJson(json["serviceEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "style": style,
        "size": size,
        "isDisabled": isDisabled,
        "text": text.toJson(),
        "accessibility": accessibility.toJson(),
        "trackingParams": trackingParams,
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
        label: json["label"],
      );

  Map<String, dynamic> toJson() => {
        "label": label,
      };
}

class UnsubscribeCommand {
  UnsubscribeCommand({
    this.clickTrackingParams,
    this.commandMetadata,
    this.unsubscribeEndpoint,
  });

  final String clickTrackingParams;
  final ServiceEndpointCommandMetadata commandMetadata;
  final SubscribeEndpoint unsubscribeEndpoint;

  factory UnsubscribeCommand.fromRawJson(String str) =>
      UnsubscribeCommand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UnsubscribeCommand.fromJson(Map<String, dynamic> json) =>
      UnsubscribeCommand(
        clickTrackingParams: json["clickTrackingParams"],
        commandMetadata:
            ServiceEndpointCommandMetadata.fromJson(json["commandMetadata"]),
        unsubscribeEndpoint:
            SubscribeEndpoint.fromJson(json["unsubscribeEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams": clickTrackingParams,
        "commandMetadata": commandMetadata.toJson(),
        "unsubscribeEndpoint": unsubscribeEndpoint.toJson(),
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
        channelIds: List<String>.from(json["channelIds"].map((x) => x)),
        params: json["params"],
      );

  Map<String, dynamic> toJson() => {
        "channelIds": List<dynamic>.from(channelIds.map((x) => x)),
        "params": params,
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
        clickTrackingParams: json["clickTrackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams": clickTrackingParams,
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
        accessibilityData:
            AccessibilityDataClass.fromJson(json["accessibilityData"]),
      );

  Map<String, dynamic> toJson() => {
        "accessibilityData": accessibilityData.toJson(),
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
        thumbnails: List<ThumbnailThumbnail>.from(
            json["thumbnails"].map((x) => ThumbnailThumbnail.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "thumbnails": List<dynamic>.from(thumbnails.map((x) => x.toJson())),
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
        url: json["url"],
        width: json["width"],
        height: json["height"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "width": width,
        "height": height,
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
        playerAttestationRenderer: PlayerAttestationRenderer.fromJson(
            json["playerAttestationRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "playerAttestationRenderer": playerAttestationRenderer.toJson(),
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
        challenge: json["challenge"],
        botguardData: BotguardData.fromJson(json["botguardData"]),
      );

  Map<String, dynamic> toJson() => {
        "challenge": challenge,
        "botguardData": botguardData.toJson(),
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
        program: json["program"],
        interpreterUrl: json["interpreterUrl"],
      );

  Map<String, dynamic> toJson() => {
        "program": program,
        "interpreterUrl": interpreterUrl,
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
        playerCaptionsRenderer:
            PlayerCaptionsRenderer.fromJson(json["playerCaptionsRenderer"]),
        playerCaptionsTracklistRenderer:
            PlayerCaptionsTracklistRenderer.fromJson(
                json["playerCaptionsTracklistRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "playerCaptionsRenderer": playerCaptionsRenderer.toJson(),
        "playerCaptionsTracklistRenderer":
            playerCaptionsTracklistRenderer.toJson(),
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
        baseUrl: json["baseUrl"],
        visibility: json["visibility"],
      );

  Map<String, dynamic> toJson() => {
        "baseUrl": baseUrl,
        "visibility": visibility,
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
        captionTracks: List<CaptionTrack>.from(
            json["captionTracks"].map((x) => CaptionTrack.fromJson(x))),
        audioTracks: List<AudioTrack>.from(
            json["audioTracks"].map((x) => AudioTrack.fromJson(x))),
        translationLanguages: List<TranslationLanguage>.from(
            json["translationLanguages"]
                .map((x) => TranslationLanguage.fromJson(x))),
        defaultAudioTrackIndex: json["defaultAudioTrackIndex"],
      );

  Map<String, dynamic> toJson() => {
        "captionTracks":
            List<dynamic>.from(captionTracks.map((x) => x.toJson())),
        "audioTracks": List<dynamic>.from(audioTracks.map((x) => x.toJson())),
        "translationLanguages":
            List<dynamic>.from(translationLanguages.map((x) => x.toJson())),
        "defaultAudioTrackIndex": defaultAudioTrackIndex,
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
        captionTrackIndices:
            List<int>.from(json["captionTrackIndices"].map((x) => x)),
        defaultCaptionTrackIndex: json["defaultCaptionTrackIndex"],
        visibility: json["visibility"],
        hasDefaultTrack: json["hasDefaultTrack"],
      );

  Map<String, dynamic> toJson() => {
        "captionTrackIndices":
            List<dynamic>.from(captionTrackIndices.map((x) => x)),
        "defaultCaptionTrackIndex": defaultCaptionTrackIndex,
        "visibility": visibility,
        "hasDefaultTrack": hasDefaultTrack,
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
        baseUrl: json["baseUrl"],
        name: HeaderText.fromJson(json["name"]),
        vssId: json["vssId"],
        languageCode: json["languageCode"],
        isTranslatable: json["isTranslatable"],
      );

  Map<String, dynamic> toJson() => {
        "baseUrl": baseUrl,
        "name": name.toJson(),
        "vssId": vssId,
        "languageCode": languageCode,
        "isTranslatable": isTranslatable,
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
        simpleText: json["simpleText"],
      );

  Map<String, dynamic> toJson() => {
        "simpleText": simpleText,
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
        languageCode: json["languageCode"],
        languageName: HeaderText.fromJson(json["languageName"]),
      );

  Map<String, dynamic> toJson() => {
        "languageCode": languageCode,
        "languageName": languageName.toJson(),
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
        cardCollectionRenderer:
            CardCollectionRenderer.fromJson(json["cardCollectionRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "cardCollectionRenderer": cardCollectionRenderer.toJson(),
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
        cards: List<Card>.from(json["cards"].map((x) => Card.fromJson(x))),
        headerText: HeaderText.fromJson(json["headerText"]),
        icon: CloseButton.fromJson(json["icon"]),
        closeButton: CloseButton.fromJson(json["closeButton"]),
        trackingParams: json["trackingParams"],
        allowTeaserDismiss: json["allowTeaserDismiss"],
        logIconVisibilityUpdates: json["logIconVisibilityUpdates"],
      );

  Map<String, dynamic> toJson() => {
        "cards": List<dynamic>.from(cards.map((x) => x.toJson())),
        "headerText": headerText.toJson(),
        "icon": icon.toJson(),
        "closeButton": closeButton.toJson(),
        "trackingParams": trackingParams,
        "allowTeaserDismiss": allowTeaserDismiss,
        "logIconVisibilityUpdates": logIconVisibilityUpdates,
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
        cardRenderer: CardRenderer.fromJson(json["cardRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "cardRenderer": cardRenderer.toJson(),
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
        teaser: Teaser.fromJson(json["teaser"]),
        content: Content.fromJson(json["content"]),
        cueRanges: List<CueRange>.from(
            json["cueRanges"].map((x) => CueRange.fromJson(x))),
        icon: CloseButton.fromJson(json["icon"]),
        trackingParams: json["trackingParams"],
        cardId: json["cardId"],
        feature: json["feature"],
      );

  Map<String, dynamic> toJson() => {
        "teaser": teaser.toJson(),
        "content": content.toJson(),
        "cueRanges": List<dynamic>.from(cueRanges.map((x) => x.toJson())),
        "icon": icon.toJson(),
        "trackingParams": trackingParams,
        "cardId": cardId,
        "feature": feature,
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
        image: IconClass.fromJson(json["image"]),
        title: HeaderText.fromJson(json["title"]),
        actionButton: SimpleCardContentRendererActionButton.fromJson(
            json["actionButton"]),
        trackingParams: json["trackingParams"],
        displayDomain: HeaderText.fromJson(json["displayDomain"]),
        showLinkIcon: json["showLinkIcon"],
        callToAction: HeaderText.fromJson(json["callToAction"]),
        command: NavigationEndpoint.fromJson(json["command"]),
      );

  Map<String, dynamic> toJson() => {
        "image": image.toJson(),
        "title": title.toJson(),
        "actionButton": actionButton.toJson(),
        "trackingParams": trackingParams,
        "displayDomain": displayDomain.toJson(),
        "showLinkIcon": showLinkIcon,
        "callToAction": callToAction.toJson(),
        "command": command.toJson(),
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
        simpleCardButtonRenderer:
            SimpleCardButtonRenderer.fromJson(json["simpleCardButtonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "simpleCardButtonRenderer": simpleCardButtonRenderer.toJson(),
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
        text: HeaderText.fromJson(json["text"]),
        action: NavigationEndpoint.fromJson(json["action"]),
        trackingParams: json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "text": text.toJson(),
        "action": action.toJson(),
        "trackingParams": trackingParams,
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
        clickTrackingParams: json["clickTrackingParams"],
        commandMetadata:
            NavigationEndpointCommandMetadata.fromJson(json["commandMetadata"]),
        urlEndpoint: UrlEndpoint.fromJson(json["urlEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams": clickTrackingParams,
        "commandMetadata": commandMetadata.toJson(),
        "urlEndpoint": urlEndpoint.toJson(),
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
        url: json["url"],
        target: json["target"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "target": target,
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
        videoThumbnail: IconClass.fromJson(json["videoThumbnail"]),
        lengthString: Title.fromJson(json["lengthString"]),
        videoTitle: HeaderText.fromJson(json["videoTitle"]),
        channelName: HeaderText.fromJson(json["channelName"]),
        viewCountText: HeaderText.fromJson(json["viewCountText"]),
        action: VideoInfoCardContentRendererAction.fromJson(json["action"]),
        trackingParams: json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "videoThumbnail": videoThumbnail.toJson(),
        "lengthString": lengthString.toJson(),
        "videoTitle": videoTitle.toJson(),
        "channelName": channelName.toJson(),
        "viewCountText": viewCountText.toJson(),
        "action": action.toJson(),
        "trackingParams": trackingParams,
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
        clickTrackingParams: json["clickTrackingParams"],
        commandMetadata:
            NavigationEndpointCommandMetadata.fromJson(json["commandMetadata"]),
        watchEndpoint: ActionWatchEndpoint.fromJson(json["watchEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams": clickTrackingParams,
        "commandMetadata": commandMetadata.toJson(),
        "watchEndpoint": watchEndpoint.toJson(),
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
        videoId: json["videoId"],
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId,
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
        accessibility:
            SubscribeAccessibilityClass.fromJson(json["accessibility"]),
        simpleText: json["simpleText"],
      );

  Map<String, dynamic> toJson() => {
        "accessibility": accessibility.toJson(),
        "simpleText": simpleText,
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
        startCardActiveMs: json["startCardActiveMs"],
        endCardActiveMs: json["endCardActiveMs"],
        teaserDurationMs: json["teaserDurationMs"],
        iconAfterTeaserMs: json["iconAfterTeaserMs"],
      );

  Map<String, dynamic> toJson() => {
        "startCardActiveMs": startCardActiveMs,
        "endCardActiveMs": endCardActiveMs,
        "teaserDurationMs": teaserDurationMs,
        "iconAfterTeaserMs": iconAfterTeaserMs,
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
        infoCardIconRenderer:
            InfoCardIconRenderer.fromJson(json["infoCardIconRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "infoCardIconRenderer": infoCardIconRenderer.toJson(),
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
        trackingParams: json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "trackingParams": trackingParams,
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
        simpleCardTeaserRenderer:
            SimpleCardTeaserRenderer.fromJson(json["simpleCardTeaserRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "simpleCardTeaserRenderer": simpleCardTeaserRenderer.toJson(),
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
        message: HeaderText.fromJson(json["message"]),
        trackingParams: json["trackingParams"],
        prominent: json["prominent"],
        logVisibilityUpdates: json["logVisibilityUpdates"],
      );

  Map<String, dynamic> toJson() => {
        "message": message.toJson(),
        "trackingParams": trackingParams,
        "prominent": prominent,
        "logVisibilityUpdates": logVisibilityUpdates,
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
        endscreenRenderer:
            EndscreenRenderer.fromJson(json["endscreenRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "endscreenRenderer": endscreenRenderer.toJson(),
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
        elements: List<Element>.from(
            json["elements"].map((x) => Element.fromJson(x))),
        startMs: json["startMs"],
        trackingParams: json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "elements": List<dynamic>.from(elements.map((x) => x.toJson())),
        "startMs": startMs,
        "trackingParams": trackingParams,
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
        endscreenElementRenderer:
            EndscreenElementRenderer.fromJson(json["endscreenElementRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "endscreenElementRenderer": endscreenElementRenderer.toJson(),
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
        style: json["style"],
        image: IconClass.fromJson(json["image"]),
        icon: json["icon"] == null ? null : Icon.fromJson(json["icon"]),
        left: json["left"].toDouble(),
        width: json["width"].toDouble(),
        top: json["top"].toDouble(),
        aspectRatio: json["aspectRatio"].toDouble(),
        startMs: json["startMs"],
        endMs: json["endMs"],
        title: Title.fromJson(json["title"]),
        metadata: HeaderText.fromJson(json["metadata"]),
        callToAction: json["callToAction"] == null
            ? null
            : HeaderText.fromJson(json["callToAction"]),
        dismiss: json["dismiss"] == null
            ? null
            : HeaderText.fromJson(json["dismiss"]),
        endpoint: Endpoint.fromJson(json["endpoint"]),
        hovercardButton: json["hovercardButton"] == null
            ? null
            : SubscribeButtonClass.fromJson(json["hovercardButton"]),
        trackingParams: json["trackingParams"],
        isSubscribe: json["isSubscribe"] == null ? null : json["isSubscribe"],
        signinEndpoint: json["signinEndpoint"] == null
            ? null
            : SigninEndpoint.fromJson(json["signinEndpoint"]),
        id: json["id"],
        playlistLength: json["playlistLength"] == null
            ? null
            : HeaderText.fromJson(json["playlistLength"]),
        videoDuration: json["videoDuration"] == null
            ? null
            : HeaderText.fromJson(json["videoDuration"]),
      );

  Map<String, dynamic> toJson() => {
        "style": style,
        "image": image.toJson(),
        "icon": icon == null ? null : icon.toJson(),
        "left": left,
        "width": width,
        "top": top,
        "aspectRatio": aspectRatio,
        "startMs": startMs,
        "endMs": endMs,
        "title": title.toJson(),
        "metadata": metadata.toJson(),
        "callToAction": callToAction == null ? null : callToAction.toJson(),
        "dismiss": dismiss == null ? null : dismiss.toJson(),
        "endpoint": endpoint.toJson(),
        "hovercardButton":
            hovercardButton == null ? null : hovercardButton.toJson(),
        "trackingParams": trackingParams,
        "isSubscribe": isSubscribe == null ? null : isSubscribe,
        "signinEndpoint":
            signinEndpoint == null ? null : signinEndpoint.toJson(),
        "id": id,
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
        thumbnails: List<PurpleThumbnail>.from(
            json["thumbnails"].map((x) => PurpleThumbnail.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "thumbnails": List<dynamic>.from(thumbnails.map((x) => x.toJson())),
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
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
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
        mealbarPromoRenderer:
            MealbarPromoRenderer.fromJson(json["mealbarPromoRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "mealbarPromoRenderer": mealbarPromoRenderer.toJson(),
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
        icon: IconClass.fromJson(json["icon"]),
        messageTexts: List<MessageTitle>.from(
            json["messageTexts"].map((x) => MessageTitle.fromJson(x))),
        actionButton: ActionButtonClass.fromJson(json["actionButton"]),
        dismissButton: ActionButtonClass.fromJson(json["dismissButton"]),
        triggerCondition: json["triggerCondition"],
        style: json["style"],
        trackingParams: json["trackingParams"],
        impressionEndpoints: List<ImpressionEndpointElement>.from(
            json["impressionEndpoints"]
                .map((x) => ImpressionEndpointElement.fromJson(x))),
        isVisible: json["isVisible"],
        messageTitle: MessageTitle.fromJson(json["messageTitle"]),
      );

  Map<String, dynamic> toJson() => {
        "icon": icon.toJson(),
        "messageTexts": List<dynamic>.from(messageTexts.map((x) => x.toJson())),
        "actionButton": actionButton.toJson(),
        "dismissButton": dismissButton.toJson(),
        "triggerCondition": triggerCondition,
        "style": style,
        "trackingParams": trackingParams,
        "impressionEndpoints":
            List<dynamic>.from(impressionEndpoints.map((x) => x.toJson())),
        "isVisible": isVisible,
        "messageTitle": messageTitle.toJson(),
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
        buttonRenderer:
            DismissButtonButtonRenderer.fromJson(json["buttonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "buttonRenderer": buttonRenderer.toJson(),
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
        style: json["style"],
        size: json["size"],
        text: MessageTitle.fromJson(json["text"]),
        serviceEndpoint:
            ImpressionEndpointElement.fromJson(json["serviceEndpoint"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : NavigationEndpoint.fromJson(json["navigationEndpoint"]),
        trackingParams: json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "style": style,
        "size": size,
        "text": text.toJson(),
        "serviceEndpoint": serviceEndpoint.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "trackingParams": trackingParams,
      };
}

class ImpressionEndpointElement {
  ImpressionEndpointElement({
    this.clickTrackingParams,
    this.commandMetadata,
    this.feedbackEndpoint,
  });

  final String clickTrackingParams;
  final ServiceEndpointCommandMetadata commandMetadata;
  final FeedbackEndpoint feedbackEndpoint;

  factory ImpressionEndpointElement.fromRawJson(String str) =>
      ImpressionEndpointElement.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ImpressionEndpointElement.fromJson(Map<String, dynamic> json) =>
      ImpressionEndpointElement(
        clickTrackingParams: json["clickTrackingParams"],
        commandMetadata:
            ServiceEndpointCommandMetadata.fromJson(json["commandMetadata"]),
        feedbackEndpoint: FeedbackEndpoint.fromJson(json["feedbackEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams": clickTrackingParams,
        "commandMetadata": commandMetadata.toJson(),
        "feedbackEndpoint": feedbackEndpoint.toJson(),
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
        feedbackToken: json["feedbackToken"],
        uiActions: UiActions.fromJson(json["uiActions"]),
      );

  Map<String, dynamic> toJson() => {
        "feedbackToken": feedbackToken,
        "uiActions": uiActions.toJson(),
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
        hideEnclosingContainer: json["hideEnclosingContainer"],
      );

  Map<String, dynamic> toJson() => {
        "hideEnclosingContainer": hideEnclosingContainer,
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
        playerMicroformatRenderer: PlayerMicroformatRenderer.fromJson(
            json["playerMicroformatRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "playerMicroformatRenderer": playerMicroformatRenderer.toJson(),
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
        thumbnail: IconClass.fromJson(json["thumbnail"]),
        embed: Embed.fromJson(json["embed"]),
        title: HeaderText.fromJson(json["title"]),
        description: HeaderText.fromJson(json["description"]),
        lengthSeconds: json["lengthSeconds"],
        ownerProfileUrl: json["ownerProfileUrl"],
        externalChannelId: json["externalChannelId"],
        availableCountries:
            List<String>.from(json["availableCountries"].map((x) => x)),
        isUnlisted: json["isUnlisted"],
        hasYpcMetadata: json["hasYpcMetadata"],
        viewCount: json["viewCount"],
        category: json["category"],
        publishDate: DateTime.parse(json["publishDate"]),
        ownerChannelName: json["ownerChannelName"],
        uploadDate: DateTime.parse(json["uploadDate"]),
        liveBroadcastDetails:
            LiveBroadcastDetails.fromJson(json["liveBroadcastDetails"]),
      );

  Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail.toJson(),
        "embed": embed.toJson(),
        "title": title.toJson(),
        "description": description.toJson(),
        "lengthSeconds": lengthSeconds,
        "ownerProfileUrl": ownerProfileUrl,
        "externalChannelId": externalChannelId,
        "availableCountries":
            List<dynamic>.from(availableCountries.map((x) => x)),
        "isUnlisted": isUnlisted,
        "hasYpcMetadata": hasYpcMetadata,
        "viewCount": viewCount,
        "category": category,
        "publishDate":
            "${publishDate.year.toString().padLeft(4, '0')}-${publishDate.month.toString().padLeft(2, '0')}-${publishDate.day.toString().padLeft(2, '0')}",
        "ownerChannelName": ownerChannelName,
        "uploadDate":
            "${uploadDate.year.toString().padLeft(4, '0')}-${uploadDate.month.toString().padLeft(2, '0')}-${uploadDate.day.toString().padLeft(2, '0')}",
        "liveBroadcastDetails": liveBroadcastDetails.toJson(),
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
        iframeUrl: json["iframeUrl"],
        flashUrl: json["flashUrl"],
        width: json["width"],
        height: json["height"],
        flashSecureUrl: json["flashSecureUrl"],
      );

  Map<String, dynamic> toJson() => {
        "iframeUrl": iframeUrl,
        "flashUrl": flashUrl,
        "width": width,
        "height": height,
        "flashSecureUrl": flashSecureUrl,
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
        isLiveNow: json["isLiveNow"],
        startTimestamp: DateTime.parse(json["startTimestamp"]),
      );

  Map<String, dynamic> toJson() => {
        "isLiveNow": isLiveNow,
        "startTimestamp": startTimestamp.toIso8601String(),
      };
}

class PlayabilityStatus {
  PlayabilityStatus({
    this.status,
    this.playableInEmbed,
    this.miniplayer,
    this.contextParams,
    this.liveStreamability,
  });

  final String status;
  final bool playableInEmbed;
  final Miniplayer miniplayer;
  final String contextParams;
  final LiveStreamability liveStreamability;

  factory PlayabilityStatus.fromRawJson(String str) =>
      PlayabilityStatus.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlayabilityStatus.fromJson(Map<String, dynamic> json) =>
      PlayabilityStatus(
        status: json["status"],
        playableInEmbed: json["playableInEmbed"],
        miniplayer: Miniplayer.fromJson(json["miniplayer"]),
        contextParams: json["contextParams"],
        liveStreamability:
            LiveStreamability.fromJson(json["liveStreamability"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "playableInEmbed": playableInEmbed,
        "miniplayer": miniplayer.toJson(),
        "contextParams": contextParams,
        "liveStreamability": liveStreamability.toJson(),
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
        liveStreamabilityRenderer: LiveStreamabilityRenderer.fromJson(
            json["liveStreamabilityRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "liveStreamabilityRenderer": liveStreamabilityRenderer.toJson(),
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
        videoId: json["videoId"],
        pollDelayMs: json["pollDelayMs"],
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId,
        "pollDelayMs": pollDelayMs,
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
        miniplayerRenderer:
            MiniplayerRenderer.fromJson(json["miniplayerRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "miniplayerRenderer": miniplayerRenderer.toJson(),
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
        playbackMode: json["playbackMode"],
        minimizedEndpoint:
            MinimizedEndpoint.fromJson(json["minimizedEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "playbackMode": playbackMode,
        "minimizedEndpoint": minimizedEndpoint.toJson(),
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
        clickTrackingParams: json["clickTrackingParams"],
        openPopupAction:
            MinimizedEndpointOpenPopupAction.fromJson(json["openPopupAction"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams": clickTrackingParams,
        "openPopupAction": openPopupAction.toJson(),
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
        popup: FluffyPopup.fromJson(json["popup"]),
        popupType: json["popupType"],
      );

  Map<String, dynamic> toJson() => {
        "popup": popup.toJson(),
        "popupType": popupType,
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
        notificationActionRenderer: NotificationActionRenderer.fromJson(
            json["notificationActionRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "notificationActionRenderer": notificationActionRenderer.toJson(),
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
        responseText: HeaderText.fromJson(json["responseText"]),
        actionButton: NotificationActionRendererActionButton.fromJson(
            json["actionButton"]),
        trackingParams: json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "responseText": responseText.toJson(),
        "actionButton": actionButton.toJson(),
        "trackingParams": trackingParams,
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
        buttonRenderer: PurpleButtonRenderer.fromJson(json["buttonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "buttonRenderer": buttonRenderer.toJson(),
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
        text: HeaderText.fromJson(json["text"]),
        trackingParams: json["trackingParams"],
        command: NavigationEndpoint.fromJson(json["command"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text.toJson(),
        "trackingParams": trackingParams,
        "command": command.toJson(),
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
        videostatsPlaybackUrl:
            PtrackingUrlClass.fromJson(json["videostatsPlaybackUrl"]),
        videostatsDelayplayUrl:
            AtrUrlClass.fromJson(json["videostatsDelayplayUrl"]),
        videostatsWatchtimeUrl:
            PtrackingUrlClass.fromJson(json["videostatsWatchtimeUrl"]),
        ptrackingUrl: PtrackingUrlClass.fromJson(json["ptrackingUrl"]),
        qoeUrl: PtrackingUrlClass.fromJson(json["qoeUrl"]),
        setAwesomeUrl: AtrUrlClass.fromJson(json["setAwesomeUrl"]),
        atrUrl: AtrUrlClass.fromJson(json["atrUrl"]),
        youtubeRemarketingUrl:
            AtrUrlClass.fromJson(json["youtubeRemarketingUrl"]),
      );

  Map<String, dynamic> toJson() => {
        "videostatsPlaybackUrl": videostatsPlaybackUrl.toJson(),
        "videostatsDelayplayUrl": videostatsDelayplayUrl.toJson(),
        "videostatsWatchtimeUrl": videostatsWatchtimeUrl.toJson(),
        "ptrackingUrl": ptrackingUrl.toJson(),
        "qoeUrl": qoeUrl.toJson(),
        "setAwesomeUrl": setAwesomeUrl.toJson(),
        "atrUrl": atrUrl.toJson(),
        "youtubeRemarketingUrl": youtubeRemarketingUrl.toJson(),
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
        baseUrl: json["baseUrl"],
        elapsedMediaTimeSeconds: json["elapsedMediaTimeSeconds"],
      );

  Map<String, dynamic> toJson() => {
        "baseUrl": baseUrl,
        "elapsedMediaTimeSeconds": elapsedMediaTimeSeconds,
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
        baseUrl: json["baseUrl"],
      );

  Map<String, dynamic> toJson() => {
        "baseUrl": baseUrl,
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
        audioConfig: AudioConfig.fromJson(json["audioConfig"]),
        streamSelectionConfig:
            StreamSelectionConfig.fromJson(json["streamSelectionConfig"]),
        daiConfig: DaiConfig.fromJson(json["daiConfig"]),
        mediaCommonConfig:
            MediaCommonConfig.fromJson(json["mediaCommonConfig"]),
        webPlayerConfig: WebPlayerConfig.fromJson(json["webPlayerConfig"]),
        livePlayerConfig: LivePlayerConfig.fromJson(json["livePlayerConfig"]),
      );

  Map<String, dynamic> toJson() => {
        "audioConfig": audioConfig.toJson(),
        "streamSelectionConfig": streamSelectionConfig.toJson(),
        "daiConfig": daiConfig.toJson(),
        "mediaCommonConfig": mediaCommonConfig.toJson(),
        "webPlayerConfig": webPlayerConfig.toJson(),
        "livePlayerConfig": livePlayerConfig.toJson(),
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
        loudnessDb: json["loudnessDb"].toDouble(),
        perceptualLoudnessDb: json["perceptualLoudnessDb"].toDouble(),
        enablePerFormatLoudness: json["enablePerFormatLoudness"],
      );

  Map<String, dynamic> toJson() => {
        "loudnessDb": loudnessDb,
        "perceptualLoudnessDb": perceptualLoudnessDb,
        "enablePerFormatLoudness": enablePerFormatLoudness,
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
        enableServerStitchedDai: json["enableServerStitchedDai"],
        enableDai: json["enableDai"],
      );

  Map<String, dynamic> toJson() => {
        "enableServerStitchedDai": enableServerStitchedDai,
        "enableDai": enableDai,
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
        liveReadaheadSeconds: json["liveReadaheadSeconds"].toDouble(),
        hasSubfragmentedFmp4: json["hasSubfragmentedFmp4"],
      );

  Map<String, dynamic> toJson() => {
        "liveReadaheadSeconds": liveReadaheadSeconds,
        "hasSubfragmentedFmp4": hasSubfragmentedFmp4,
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
        dynamicReadaheadConfig:
            DynamicReadaheadConfig.fromJson(json["dynamicReadaheadConfig"]),
      );

  Map<String, dynamic> toJson() => {
        "dynamicReadaheadConfig": dynamicReadaheadConfig.toJson(),
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
        maxReadAheadMediaTimeMs: json["maxReadAheadMediaTimeMs"],
        minReadAheadMediaTimeMs: json["minReadAheadMediaTimeMs"],
        readAheadGrowthRateMs: json["readAheadGrowthRateMs"],
      );

  Map<String, dynamic> toJson() => {
        "maxReadAheadMediaTimeMs": maxReadAheadMediaTimeMs,
        "minReadAheadMediaTimeMs": minReadAheadMediaTimeMs,
        "readAheadGrowthRateMs": readAheadGrowthRateMs,
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
        maxBitrate: json["maxBitrate"],
      );

  Map<String, dynamic> toJson() => {
        "maxBitrate": maxBitrate,
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
        webPlayerActionsPorting:
            WebPlayerActionsPorting.fromJson(json["webPlayerActionsPorting"]),
      );

  Map<String, dynamic> toJson() => {
        "webPlayerActionsPorting": webPlayerActionsPorting.toJson(),
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
        getSharePanelCommand:
            GetSharePanelCommand.fromJson(json["getSharePanelCommand"]),
        subscribeCommand: SubscribeCommand.fromJson(json["subscribeCommand"]),
        unsubscribeCommand:
            UnsubscribeCommand.fromJson(json["unsubscribeCommand"]),
        addToWatchLaterCommand:
            AddToWatchLaterCommand.fromJson(json["addToWatchLaterCommand"]),
        removeFromWatchLaterCommand: RemoveFromWatchLaterCommand.fromJson(
            json["removeFromWatchLaterCommand"]),
      );

  Map<String, dynamic> toJson() => {
        "getSharePanelCommand": getSharePanelCommand.toJson(),
        "subscribeCommand": subscribeCommand.toJson(),
        "unsubscribeCommand": unsubscribeCommand.toJson(),
        "addToWatchLaterCommand": addToWatchLaterCommand.toJson(),
        "removeFromWatchLaterCommand": removeFromWatchLaterCommand.toJson(),
      };
}

class AddToWatchLaterCommand {
  AddToWatchLaterCommand({
    this.clickTrackingParams,
    this.commandMetadata,
    this.playlistEditEndpoint,
  });

  final String clickTrackingParams;
  final ServiceEndpointCommandMetadata commandMetadata;
  final AddToWatchLaterCommandPlaylistEditEndpoint playlistEditEndpoint;

  factory AddToWatchLaterCommand.fromRawJson(String str) =>
      AddToWatchLaterCommand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddToWatchLaterCommand.fromJson(Map<String, dynamic> json) =>
      AddToWatchLaterCommand(
        clickTrackingParams: json["clickTrackingParams"],
        commandMetadata:
            ServiceEndpointCommandMetadata.fromJson(json["commandMetadata"]),
        playlistEditEndpoint:
            AddToWatchLaterCommandPlaylistEditEndpoint.fromJson(
                json["playlistEditEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams": clickTrackingParams,
        "commandMetadata": commandMetadata.toJson(),
        "playlistEditEndpoint": playlistEditEndpoint.toJson(),
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
        playlistId: json["playlistId"],
        actions: List<PurpleAction>.from(
            json["actions"].map((x) => PurpleAction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "playlistId": playlistId,
        "actions": List<dynamic>.from(actions.map((x) => x.toJson())),
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
        addedVideoId: json["addedVideoId"],
        action: json["action"],
      );

  Map<String, dynamic> toJson() => {
        "addedVideoId": addedVideoId,
        "action": action,
      };
}

class GetSharePanelCommand {
  GetSharePanelCommand({
    this.clickTrackingParams,
    this.commandMetadata,
    this.webPlayerShareEntityServiceEndpoint,
  });

  final String clickTrackingParams;
  final ServiceEndpointCommandMetadata commandMetadata;
  final WebPlayerShareEntityServiceEndpoint webPlayerShareEntityServiceEndpoint;

  factory GetSharePanelCommand.fromRawJson(String str) =>
      GetSharePanelCommand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetSharePanelCommand.fromJson(Map<String, dynamic> json) =>
      GetSharePanelCommand(
        clickTrackingParams: json["clickTrackingParams"],
        commandMetadata:
            ServiceEndpointCommandMetadata.fromJson(json["commandMetadata"]),
        webPlayerShareEntityServiceEndpoint:
            WebPlayerShareEntityServiceEndpoint.fromJson(
                json["webPlayerShareEntityServiceEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams": clickTrackingParams,
        "commandMetadata": commandMetadata.toJson(),
        "webPlayerShareEntityServiceEndpoint":
            webPlayerShareEntityServiceEndpoint.toJson(),
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
        serializedShareEntity: json["serializedShareEntity"],
      );

  Map<String, dynamic> toJson() => {
        "serializedShareEntity": serializedShareEntity,
      };
}

class RemoveFromWatchLaterCommand {
  RemoveFromWatchLaterCommand({
    this.clickTrackingParams,
    this.commandMetadata,
    this.playlistEditEndpoint,
  });

  final String clickTrackingParams;
  final ServiceEndpointCommandMetadata commandMetadata;
  final RemoveFromWatchLaterCommandPlaylistEditEndpoint playlistEditEndpoint;

  factory RemoveFromWatchLaterCommand.fromRawJson(String str) =>
      RemoveFromWatchLaterCommand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RemoveFromWatchLaterCommand.fromJson(Map<String, dynamic> json) =>
      RemoveFromWatchLaterCommand(
        clickTrackingParams: json["clickTrackingParams"],
        commandMetadata:
            ServiceEndpointCommandMetadata.fromJson(json["commandMetadata"]),
        playlistEditEndpoint:
            RemoveFromWatchLaterCommandPlaylistEditEndpoint.fromJson(
                json["playlistEditEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams": clickTrackingParams,
        "commandMetadata": commandMetadata.toJson(),
        "playlistEditEndpoint": playlistEditEndpoint.toJson(),
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
        playlistId: json["playlistId"],
        actions: List<FluffyAction>.from(
            json["actions"].map((x) => FluffyAction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "playlistId": playlistId,
        "actions": List<dynamic>.from(actions.map((x) => x.toJson())),
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
        action: json["action"],
        removedVideoId: json["removedVideoId"],
      );

  Map<String, dynamic> toJson() => {
        "action": action,
        "removedVideoId": removedVideoId,
      };
}

class SubscribeCommand {
  SubscribeCommand({
    this.clickTrackingParams,
    this.commandMetadata,
    this.subscribeEndpoint,
  });

  final String clickTrackingParams;
  final ServiceEndpointCommandMetadata commandMetadata;
  final SubscribeEndpoint subscribeEndpoint;

  factory SubscribeCommand.fromRawJson(String str) =>
      SubscribeCommand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SubscribeCommand.fromJson(Map<String, dynamic> json) =>
      SubscribeCommand(
        clickTrackingParams: json["clickTrackingParams"],
        commandMetadata:
            ServiceEndpointCommandMetadata.fromJson(json["commandMetadata"]),
        subscribeEndpoint:
            SubscribeEndpoint.fromJson(json["subscribeEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams": clickTrackingParams,
        "commandMetadata": commandMetadata.toJson(),
        "subscribeEndpoint": subscribeEndpoint.toJson(),
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
        serviceTrackingParams: List<ServiceTrackingParam>.from(
            json["serviceTrackingParams"]
                .map((x) => ServiceTrackingParam.fromJson(x))),
        webResponseContextExtensionData:
            WebResponseContextExtensionData.fromJson(
                json["webResponseContextExtensionData"]),
      );

  Map<String, dynamic> toJson() => {
        "serviceTrackingParams":
            List<dynamic>.from(serviceTrackingParams.map((x) => x.toJson())),
        "webResponseContextExtensionData":
            webResponseContextExtensionData.toJson(),
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
        service: json["service"],
        params: List<Param>.from(json["params"].map((x) => Param.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "service": service,
        "params": List<dynamic>.from(params.map((x) => x.toJson())),
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
        key: json["key"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "key": key,
        "value": value,
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
        hasDecorated: json["hasDecorated"],
      );

  Map<String, dynamic> toJson() => {
        "hasDecorated": hasDecorated,
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
        playerStoryboardSpecRenderer: PlayerStoryboardSpecRenderer.fromJson(
            json["playerStoryboardSpecRenderer"]),
        playerLiveStoryboardSpecRenderer: PlayerStoryboardSpecRenderer.fromJson(
            json["playerLiveStoryboardSpecRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "playerStoryboardSpecRenderer": playerStoryboardSpecRenderer.toJson(),
        "playerLiveStoryboardSpecRenderer":
            playerLiveStoryboardSpecRenderer.toJson(),
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
        spec: json["spec"],
      );

  Map<String, dynamic> toJson() => {
        "spec": spec,
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
        expiresInSeconds: json["expiresInSeconds"],
        formats:
            List<Format>.from(json["formats"].map((x) => Format.fromJson(x))),
        adaptiveFormats: List<Format>.from(
            json["adaptiveFormats"].map((x) => Format.fromJson(x))),
        dashManifestUrl: json["dashManifestUrl"],
        hlsManifestUrl: json["hlsManifestUrl"],
      );

  Map<String, dynamic> toJson() => {
        "expiresInSeconds": expiresInSeconds,
        "formats": List<dynamic>.from(formats.map((x) => x.toJson())),
        "adaptiveFormats":
            List<dynamic>.from(adaptiveFormats.map((x) => x.toJson())),
        "dashManifestUrl": dashManifestUrl,
        "hlsManifestUrl": hlsManifestUrl,
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
  final ColorInfo colorInfo;
  final bool highReplication;
  final String audioQuality;
  final String audioSampleRate;
  final int audioChannels;

  factory Format.fromRawJson(String str) => Format.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Format.fromJson(Map<String, dynamic> json) => Format(
        itag: json["itag"],
        mimeType: json["mimeType"],
        bitrate: json["bitrate"],
        width: json["width"] == null ? null : json["width"],
        height: json["height"] == null ? null : json["height"],
        initRange: json["initRange"] == null
            ? null
            : Range.fromJson(json["initRange"]),
        indexRange: json["indexRange"] == null
            ? null
            : Range.fromJson(json["indexRange"]),
        lastModified: json["lastModified"],
        contentLength: json["contentLength"],
        quality: json["quality"],
        fps: json["fps"] == null ? null : json["fps"],
        qualityLabel:
            json["qualityLabel"] == null ? null : json["qualityLabel"],
        projectionType: projectionTypeValues.map[json["projectionType"]],
        averageBitrate: json["averageBitrate"],
        approxDurationMs: json["approxDurationMs"],
        signatureCipher: json["signatureCipher"],
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
        "itag": itag,
        "mimeType": mimeType,
        "bitrate": bitrate,
        "width": width == null ? null : width,
        "height": height == null ? null : height,
        "initRange": initRange == null ? null : initRange.toJson(),
        "indexRange": indexRange == null ? null : indexRange.toJson(),
        "lastModified": lastModified,
        "contentLength": contentLength,
        "quality": quality,
        "fps": fps == null ? null : fps,
        "qualityLabel": qualityLabel == null ? null : qualityLabel,
        "projectionType": projectionTypeValues.reverse[projectionType],
        "averageBitrate": averageBitrate,
        "approxDurationMs": approxDurationMs,
        "signatureCipher": signatureCipher,
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
        primaries: primariesValues.map[json["primaries"]],
        transferCharacteristics:
            transferCharacteristicsValues.map[json["transferCharacteristics"]],
        matrixCoefficients:
            matrixCoefficientsValues.map[json["matrixCoefficients"]],
      );

  Map<String, dynamic> toJson() => {
        "primaries": primariesValues.reverse[primaries],
        "transferCharacteristics":
            transferCharacteristicsValues.reverse[transferCharacteristics],
        "matrixCoefficients":
            matrixCoefficientsValues.reverse[matrixCoefficients],
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
        start: json["start"],
        end: json["end"],
      );

  Map<String, dynamic> toJson() => {
        "start": start,
        "end": end,
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
        videoId: json["videoId"],
        title: json["title"],
        lengthSeconds: json["lengthSeconds"],
        keywords: List<String>.from(json["keywords"].map((x) => x)),
        channelId: json["channelId"],
        isOwnerViewing: json["isOwnerViewing"],
        shortDescription: json["shortDescription"],
        isCrawlable: json["isCrawlable"],
        thumbnail: IconClass.fromJson(json["thumbnail"]),
        averageRating: json["averageRating"].toDouble(),
        allowRatings: json["allowRatings"],
        viewCount: json["viewCount"],
        author: json["author"],
        isPrivate: json["isPrivate"],
        isUnpluggedCorpus: json["isUnpluggedCorpus"],
        isLiveContent: json["isLiveContent"],
        isLive: json["isLive"],
        isLiveDvrEnabled: json["isLiveDvrEnabled"],
        liveChunkReadahead: json["liveChunkReadahead"],
        isLiveDefaultBroadcast: json["isLiveDefaultBroadcast"],
        isLowLatencyLiveStream: json["isLowLatencyLiveStream"],
        latencyClass: json["latencyClass"],
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId,
        "title": title,
        "lengthSeconds": lengthSeconds,
        "keywords": List<dynamic>.from(keywords.map((x) => x)),
        "channelId": channelId,
        "isOwnerViewing": isOwnerViewing,
        "shortDescription": shortDescription,
        "isCrawlable": isCrawlable,
        "thumbnail": thumbnail.toJson(),
        "averageRating": averageRating,
        "allowRatings": allowRatings,
        "viewCount": viewCount,
        "author": author,
        "isPrivate": isPrivate,
        "isUnpluggedCorpus": isUnpluggedCorpus,
        "isLiveContent": isLiveContent,
        "isLive": isLive,
        "isLiveDvrEnabled": isLiveDvrEnabled,
        "liveChunkReadahead": liveChunkReadahead,
        "isLiveDefaultBroadcast": isLiveDefaultBroadcast,
        "isLowLatencyLiveStream": isLowLatencyLiveStream,
        "latencyClass": latencyClass,
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
