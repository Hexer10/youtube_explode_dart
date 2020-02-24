import 'package:equatable/equatable.dart';

import 'models.dart';

/// Player configuration.
class PlayerConfiguration extends Equatable {
  /// Player source url.
  final String playerSourceUrl;

  /// Dash manifest url.
  final String dashManifestUrl;

  /// Live stream raw url.
  final String hlsManifestUrl;

  /// Muxed stream url encoded.
  final String muxedStreamInfosUrlEncoded;

  /// Adaptive stream url encoded.
  final String adaptiveStreamInfosUrlEncoded;

  /// Muxed stream info.
  final List<dynamic> muxedStreamInfoJson;

  /// Adaptive stream info.
  final List<dynamic> adaptiveStreamInfosJson;

  /// Video associated with this player configuration.
  final Video video;

  /// Date until this player configuration is valid.
  final DateTime validUntil;

  /// Initializes an instance of [PlayerConfiguration]
  const PlayerConfiguration(
      this.playerSourceUrl,
      this.dashManifestUrl,
      this.hlsManifestUrl,
      this.muxedStreamInfosUrlEncoded,
      this.adaptiveStreamInfosUrlEncoded,
      this.muxedStreamInfoJson,
      this.adaptiveStreamInfosJson,
      this.video,
      this.validUntil);

  @override
  List<Object> get props => [
        playerSourceUrl,
        dashManifestUrl,
        hlsManifestUrl,
        muxedStreamInfosUrlEncoded,
        adaptiveStreamInfosUrlEncoded,
        muxedStreamInfoJson,
        adaptiveStreamInfosJson,
        video,
        validUntil
      ];
}
