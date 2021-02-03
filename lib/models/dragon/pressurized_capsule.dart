import 'launch_payload_vol.dart';

class PressurizedCapsule {
  LaunchPayloadVol _payloadVolume;

  PressurizedCapsule({LaunchPayloadVol payloadVolume}) {
    this._payloadVolume = payloadVolume;
  }

  LaunchPayloadVol get payloadVolume => _payloadVolume;
  set payloadVolume(LaunchPayloadVol payloadVolume) =>
      _payloadVolume = payloadVolume;

  /// Deserialize recieved data
  PressurizedCapsule.fromJson(Map<String, dynamic> json) {
    _payloadVolume = json['payload_volume'] != null
        ? new LaunchPayloadVol.fromJson(json['payload_volume'])
        : null;
  }

  /// Serializer
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._payloadVolume != null) {
      data['payload_volume'] = this._payloadVolume.toJson();
    }
    return data;
  }
}
