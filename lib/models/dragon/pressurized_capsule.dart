import 'launch_payload_vol.dart';

class PressurizedCapsule {
  LaunchPayloadVol _payloadVolume;

  PressurizedCapsule({required LaunchPayloadVol payloadVolume})
      : _payloadVolume = payloadVolume;

  LaunchPayloadVol get payloadVolume => _payloadVolume;
  set payloadVolume(LaunchPayloadVol payloadVolume) =>
      _payloadVolume = payloadVolume;

  PressurizedCapsule.fromJson(Map<String, dynamic> json)
      : _payloadVolume =
            LaunchPayloadVol.fromJson(json['payload_volume'] ?? {});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['payload_volume'] = this._payloadVolume.toJson();
    return data;
  }
}
