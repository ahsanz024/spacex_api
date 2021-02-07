import 'thrust_sea_level.dart';

class FirstStage {
  ThrustSeaLevel _thrustSeaLevel;
  ThrustSeaLevel _thrustVacuum;
  bool _reusable;
  num _engines;
  num _fuelAmountTons;
  num _burnTimeSec;

  FirstStage({
    ThrustSeaLevel thrustSeaLevel,
    ThrustSeaLevel thrustVacuum,
    bool reusable,
    num engines,
    num fuelAmountTons,
    num burnTimeSec,
  }) {
    this._thrustSeaLevel = thrustSeaLevel;
    this._thrustVacuum = thrustVacuum;
    this._reusable = reusable;
    this._engines = engines;
    this._fuelAmountTons = fuelAmountTons;
    this._burnTimeSec = burnTimeSec;
  }

  ThrustSeaLevel get thrustSeaLevel => _thrustSeaLevel;
  set thrustSeaLevel(ThrustSeaLevel thrustSeaLevel) =>
      _thrustSeaLevel = thrustSeaLevel;
  ThrustSeaLevel get thrustVacuum => _thrustVacuum;
  set thrustVacuum(ThrustSeaLevel thrustVacuum) => _thrustVacuum = thrustVacuum;
  bool get reusable => _reusable;
  set reusable(bool reusable) => _reusable = reusable;
  num get engines => _engines;
  set engines(num engines) => _engines = engines;
  num get fuelAmountTons => _fuelAmountTons;
  set fuelAmountTons(num fuelAmountTons) => _fuelAmountTons = fuelAmountTons;
  num get burnTimeSec => _burnTimeSec;
  set burnTimeSec(num burnTimeSec) => _burnTimeSec = burnTimeSec;

  /// Deserialize recieved data
  FirstStage.fromJson(Map<String, dynamic> json) {
    _thrustSeaLevel = json['thrust_sea_level'] != null
        ? new ThrustSeaLevel.fromJson(json['thrust_sea_level'])
        : null;
    _thrustVacuum = json['thrust_vacuum'] != null
        ? new ThrustSeaLevel.fromJson(json['thrust_vacuum'])
        : null;
    _reusable = json['reusable'];
    _engines = json['engines'];
    _fuelAmountTons = json['fuel_amount_tons'];
    _burnTimeSec = json['burn_time_sec'];
  }

  /// Serializer
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._thrustSeaLevel != null) {
      data['thrust_sea_level'] = this._thrustSeaLevel.toJson();
    }
    if (this._thrustVacuum != null) {
      data['thrust_vacuum'] = this._thrustVacuum.toJson();
    }
    data['reusable'] = this._reusable;
    data['engines'] = this._engines;
    data['fuel_amount_tons'] = this._fuelAmountTons;
    data['burn_time_sec'] = this._burnTimeSec;
    return data;
  }
}
