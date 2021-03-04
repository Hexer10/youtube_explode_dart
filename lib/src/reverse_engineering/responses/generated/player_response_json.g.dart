// @dart=2.9

// To parse this JSON data, do
//
//     final playerConfigJson = playerConfigJsonFromJson(jsonString);

import 'dart:convert';

class PlayerConfigJson {
  PlayerConfigJson({
    this.assets,
    this.attrs,
    this.args,
  });

  final Assets assets;
  final Attrs attrs;
  final Args args;

  factory PlayerConfigJson.fromRawJson(String str) =>
      PlayerConfigJson.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PlayerConfigJson.fromJson(Map<String, dynamic> json) =>
      PlayerConfigJson(
        assets: json["assets"] == null ? null : Assets.fromJson(json["assets"]),
        attrs: json["attrs"] == null ? null : Attrs.fromJson(json["attrs"]),
        args: json["args"] == null ? null : Args.fromJson(json["args"]),
      );

  Map<String, dynamic> toJson() => {
        "assets": assets == null ? null : assets.toJson(),
        "attrs": attrs == null ? null : attrs.toJson(),
        "args": args == null ? null : args.toJson(),
      };
}

class Args {
  Args({
    this.innertubeApiKey,
    this.showMiniplayerButton,
    this.useMiniplayerUi,
    this.gapiHintParams,
    this.playerResponse,
    this.cbrver,
    this.cbr,
    this.innertubeApiVersion,
    this.innertubeContextClientVersion,
    this.vssHost,
    this.hostLanguage,
    this.cr,
    this.externalFullscreen,
    this.useFastSizingOnWatchDefault,
    this.c,
    this.ps,
    this.csiPageType,
    this.cos,
    this.enablecsi,
    this.watermark,
    this.cver,
    this.transparentBackground,
    this.hl,
    this.enablejsapi,
    this.cosver,
    this.loaderUrl,
  });

  final String innertubeApiKey;
  final String showMiniplayerButton;
  final String useMiniplayerUi;
  final String gapiHintParams;
  final String playerResponse;
  final String cbrver;
  final String cbr;
  final String innertubeApiVersion;
  final String innertubeContextClientVersion;
  final String vssHost;
  final String hostLanguage;
  final String cr;
  final bool externalFullscreen;
  final bool useFastSizingOnWatchDefault;
  final String c;
  final String ps;
  final String csiPageType;
  final String cos;
  final String enablecsi;
  final String watermark;
  final String cver;
  final String transparentBackground;
  final String hl;
  final String enablejsapi;
  final String cosver;
  final String loaderUrl;

  factory Args.fromRawJson(String str) => Args.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Args.fromJson(Map<String, dynamic> json) => Args(
        innertubeApiKey: json["innertube_api_key"] == null
            ? null
            : json["innertube_api_key"],
        showMiniplayerButton: json["show_miniplayer_button"] == null
            ? null
            : json["show_miniplayer_button"],
        useMiniplayerUi: json["use_miniplayer_ui"] == null
            ? null
            : json["use_miniplayer_ui"],
        gapiHintParams:
            json["gapi_hint_params"] == null ? null : json["gapi_hint_params"],
        playerResponse:
            json["player_response"] == null ? null : json["player_response"],
        cbrver: json["cbrver"] == null ? null : json["cbrver"],
        cbr: json["cbr"] == null ? null : json["cbr"],
        innertubeApiVersion: json["innertube_api_version"] == null
            ? null
            : json["innertube_api_version"],
        innertubeContextClientVersion:
            json["innertube_context_client_version"] == null
                ? null
                : json["innertube_context_client_version"],
        vssHost: json["vss_host"] == null ? null : json["vss_host"],
        hostLanguage:
            json["host_language"] == null ? null : json["host_language"],
        cr: json["cr"] == null ? null : json["cr"],
        externalFullscreen: json["external_fullscreen"] == null
            ? null
            : json["external_fullscreen"],
        useFastSizingOnWatchDefault:
            json["use_fast_sizing_on_watch_default"] == null
                ? null
                : json["use_fast_sizing_on_watch_default"],
        c: json["c"] == null ? null : json["c"],
        ps: json["ps"] == null ? null : json["ps"],
        csiPageType:
            json["csi_page_type"] == null ? null : json["csi_page_type"],
        cos: json["cos"] == null ? null : json["cos"],
        enablecsi: json["enablecsi"] == null ? null : json["enablecsi"],
        watermark: json["watermark"] == null ? null : json["watermark"],
        cver: json["cver"] == null ? null : json["cver"],
        transparentBackground: json["transparent_background"] == null
            ? null
            : json["transparent_background"],
        hl: json["hl"] == null ? null : json["hl"],
        enablejsapi: json["enablejsapi"] == null ? null : json["enablejsapi"],
        cosver: json["cosver"] == null ? null : json["cosver"],
        loaderUrl: json["loaderUrl"] == null ? null : json["loaderUrl"],
      );

  Map<String, dynamic> toJson() => {
        "innertube_api_key": innertubeApiKey == null ? null : innertubeApiKey,
        "show_miniplayer_button":
            showMiniplayerButton == null ? null : showMiniplayerButton,
        "use_miniplayer_ui": useMiniplayerUi == null ? null : useMiniplayerUi,
        "gapi_hint_params": gapiHintParams == null ? null : gapiHintParams,
        "player_response": playerResponse == null ? null : playerResponse,
        "cbrver": cbrver == null ? null : cbrver,
        "cbr": cbr == null ? null : cbr,
        "innertube_api_version":
            innertubeApiVersion == null ? null : innertubeApiVersion,
        "innertube_context_client_version":
            innertubeContextClientVersion == null
                ? null
                : innertubeContextClientVersion,
        "vss_host": vssHost == null ? null : vssHost,
        "host_language": hostLanguage == null ? null : hostLanguage,
        "cr": cr == null ? null : cr,
        "external_fullscreen":
            externalFullscreen == null ? null : externalFullscreen,
        "use_fast_sizing_on_watch_default": useFastSizingOnWatchDefault == null
            ? null
            : useFastSizingOnWatchDefault,
        "c": c == null ? null : c,
        "ps": ps == null ? null : ps,
        "csi_page_type": csiPageType == null ? null : csiPageType,
        "cos": cos == null ? null : cos,
        "enablecsi": enablecsi == null ? null : enablecsi,
        "watermark": watermark == null ? null : watermark,
        "cver": cver == null ? null : cver,
        "transparent_background":
            transparentBackground == null ? null : transparentBackground,
        "hl": hl == null ? null : hl,
        "enablejsapi": enablejsapi == null ? null : enablejsapi,
        "cosver": cosver == null ? null : cosver,
        "loaderUrl": loaderUrl == null ? null : loaderUrl,
      };
}

class Assets {
  Assets({
    this.playerCanaryState,
    this.js,
    this.css,
  });

  final String playerCanaryState;
  final String js;
  final String css;

  factory Assets.fromRawJson(String str) => Assets.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Assets.fromJson(Map<String, dynamic> json) => Assets(
        playerCanaryState: json["player_canary_state"] == null
            ? null
            : json["player_canary_state"],
        js: json["js"] == null ? null : json["js"],
        css: json["css"] == null ? null : json["css"],
      );

  Map<String, dynamic> toJson() => {
        "player_canary_state":
            playerCanaryState == null ? null : playerCanaryState,
        "js": js == null ? null : js,
        "css": css == null ? null : css,
      };
}

class Attrs {
  Attrs({
    this.id,
  });

  final String id;

  factory Attrs.fromRawJson(String str) => Attrs.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Attrs.fromJson(Map<String, dynamic> json) => Attrs(
        id: json["id"] == null ? null : json["id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
      };
}
