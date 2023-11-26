import 'cargo.dart';
import 'launch_payload_vol.dart';

class Trunk {
  LaunchPayloadVol _trunkVolume;
  Cargo _cargo;

  Trunk({
    required LaunchPayloadVol trunkVolume,
    required Cargo cargo,
  })  : _trunkVolume = trunkVolume,
        _cargo = cargo;

  LaunchPayloadVol get trunkVolume => _trunkVolume;
  set trunkVolume(LaunchPayloadVol value) => _trunkVolume = value;
  Cargo get cargo => _cargo;
  set cargo(Cargo value) => _cargo = value;

  Trunk.fromJson(Map<String, dynamic> json)
      : _trunkVolume = LaunchPayloadVol.fromJson(json['trunk_volume'] ?? {}),
        _cargo = Cargo.fromJson(json['cargo'] ?? {});

  Map<String, dynamic> toJson() {
    return {
      'trunk_volume': _trunkVolume.toJson(),
      'cargo': _cargo.toJson(),
    };
  }
}
