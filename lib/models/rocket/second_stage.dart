import 'payloads.dart';
import 'thrust_sea_level.dart';

class SecondStage {
  ThrustSeaLevel _thrust;
  Payloads _payloads;
  bool _reusable;
  num _engines;
  num _fuelAmountTons;
  num _burnTimeSec;

  SecondStage({
    ThrustSeaLevel thrust,
    Payloads payloads,
    bool reusable,
    num engines,
    num fuelAmountTons,
    num burnTimeSec,
  }) {
    this._thrust = thrust;
    this._payloads = payloads;
    this._reusable = reusable;
    this._engines = engines;
    this._fuelAmountTons = fuelAmountTons;
    this._burnTimeSec = burnTimeSec;
  }

  ThrustSeaLevel get thrust => _thrust;
  set thrust(ThrustSeaLevel thrust) => _thrust = thrust;
  Payloads get payloads => _payloads;
  set payloads(Payloads payloads) => _payloads = payloads;
  bool get reusable => _reusable;
  set reusable(bool reusable) => _reusable = reusable;
  num get engines => _engines;
  set engines(num engines) => _engines = engines;
  num get fuelAmountTons => _fuelAmountTons;
  set fuelAmountTons(num fuelAmountTons) => _fuelAmountTons = fuelAmountTons;
  num get burnTimeSec => _burnTimeSec;
  set burnTimeSec(num burnTimeSec) => _burnTimeSec = burnTimeSec;

  SecondStage.fromJson(Map<String, dynamic> json) {
    _thrust = json['thrust'] != null
        ? new ThrustSeaLevel.fromJson(json['thrust'])
        : null;
    _payloads = json['payloads'] != null
        ? new Payloads.fromJson(json['payloads'])
        : null;
    _reusable = json['reusable'];
    _engines = json['engines'];
    _fuelAmountTons = json['fuel_amount_tons'];
    _burnTimeSec = json['burn_time_sec'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['thrust'] = this._thrust.toJson();
      data['payloads'] = this._payloads.toJson();
      data['reusable'] = this._reusable;
    data['engines'] = this._engines;
    data['fuel_amount_tons'] = this._fuelAmountTons;
    data['burn_time_sec'] = this._burnTimeSec;
    return data;
  }
}
