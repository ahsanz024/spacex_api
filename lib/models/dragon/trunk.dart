import 'cargo.dart';
import 'launch_payload_vol.dart';

class Trunk {
  LaunchPayloadVol _trunkVolume;
  Cargo _cargo;

  Trunk({LaunchPayloadVol trunkVolume, Cargo cargo}) {
    this._trunkVolume = trunkVolume;
    this._cargo = cargo;
  }

  LaunchPayloadVol get trunkVolume => _trunkVolume;
  set trunkVolume(LaunchPayloadVol trunkVolume) => _trunkVolume = trunkVolume;
  Cargo get cargo => _cargo;
  set cargo(Cargo cargo) => _cargo = cargo;

  Trunk.fromJson(Map<String, dynamic> json) {
    _trunkVolume = json['trunk_volume'] != null
        ? new LaunchPayloadVol.fromJson(json['trunk_volume'])
        : null;
    _cargo = json['cargo'] != null ? new Cargo.fromJson(json['cargo']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['trunk_volume'] = this._trunkVolume.toJson();
      data['cargo'] = this._cargo.toJson();
      return data;
  }
}
