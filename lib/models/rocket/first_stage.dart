import 'thrust_sea_level.dart';

class FirstStage {
  late ThrustSeaLevel _thrustSeaLevel;
  late ThrustSeaLevel _thrustVacuum;
  late bool _reusable;
  late num _engines;
  late num _fuelAmountTons;
  late num _burnTimeSec;

  FirstStage({
    required ThrustSeaLevel thrustSeaLevel,
    required ThrustSeaLevel thrustVacuum,
    required bool reusable,
    required num engines,
    required num fuelAmountTons,
    required num burnTimeSec,
  }) {
    _thrustSeaLevel = thrustSeaLevel;
    _thrustVacuum = thrustVacuum;
    _reusable = reusable;
    _engines = engines;
    _fuelAmountTons = fuelAmountTons;
    _burnTimeSec = burnTimeSec;
  }

  ThrustSeaLevel get thrustSeaLevel => _thrustSeaLevel;
  ThrustSeaLevel get thrustVacuum => _thrustVacuum;
  bool get reusable => _reusable;
  num get engines => _engines;
  num get fuelAmountTons => _fuelAmountTons;
  num get burnTimeSec => _burnTimeSec;

  FirstStage.fromJson(Map<String, dynamic> json) {
    _thrustSeaLevel = ThrustSeaLevel.fromJson(json['thrust_sea_level']);
    _thrustVacuum = ThrustSeaLevel.fromJson(json['thrust_vacuum']);
    _reusable = json['reusable'];
    _engines = json['engines'];
    _fuelAmountTons = json['fuel_amount_tons'];
    _burnTimeSec = json['burn_time_sec'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['thrust_sea_level'] = _thrustSeaLevel.toJson();
    data['thrust_vacuum'] = _thrustVacuum.toJson();
    data['reusable'] = _reusable;
    data['engines'] = _engines;
    data['fuel_amount_tons'] = _fuelAmountTons;
    data['burn_time_sec'] = _burnTimeSec;
    return data;
  }
}
