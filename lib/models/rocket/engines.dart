import 'isp.dart';
import 'thrust_sea_level.dart';

class Engines {
  late Isp _isp;
  late ThrustSeaLevel _thrustSeaLevel;
  late ThrustSeaLevel _thrustVacuum;
  late num _number;
  late String _type;
  late String _version;
  late String _layout;
  late num _engineLossMax;
  late String _propellant1;
  late String _propellant2;
  late num _thrustToWeight;

  Engines({
    required Isp isp,
    required ThrustSeaLevel thrustSeaLevel,
    required ThrustSeaLevel thrustVacuum,
    required num number,
    required String type,
    required String version,
    required String layout,
    required num engineLossMax,
    required String propellant1,
    required String propellant2,
    required num thrustToWeight,
  }) {
    _isp = isp;
    _thrustSeaLevel = thrustSeaLevel;
    _thrustVacuum = thrustVacuum;
    _number = number;
    _type = type;
    _version = version;
    _layout = layout;
    _engineLossMax = engineLossMax;
    _propellant1 = propellant1;
    _propellant2 = propellant2;
    _thrustToWeight = thrustToWeight;
  }

  Isp get isp => _isp;
  ThrustSeaLevel get thrustSeaLevel => _thrustSeaLevel;
  ThrustSeaLevel get thrustVacuum => _thrustVacuum;
  num get number => _number;
  String get type => _type;
  String get version => _version;
  String get layout => _layout;
  num get engineLossMax => _engineLossMax;
  String get propellant1 => _propellant1;
  String get propellant2 => _propellant2;
  num get thrustToWeight => _thrustToWeight;

  Engines.fromJson(Map<String, dynamic> json) {
    _isp = Isp.fromJson(json['isp']);
    _thrustSeaLevel = ThrustSeaLevel.fromJson(json['thrust_sea_level']);
    _thrustVacuum = ThrustSeaLevel.fromJson(json['thrust_vacuum']);
    _number = json['number'];
    _type = json['type'];
    _version = json['version'];
    _layout = json['layout'];
    _engineLossMax = json['engine_loss_max'];
    _propellant1 = json['propellant_1'];
    _propellant2 = json['propellant_2'];
    _thrustToWeight = json['thrust_to_weight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['isp'] = _isp.toJson();
    data['thrust_sea_level'] = _thrustSeaLevel.toJson();
    data['thrust_vacuum'] = _thrustVacuum.toJson();
    data['number'] = _number;
    data['type'] = _type;
    data['version'] = _version;
    data['layout'] = _layout;
    data['engine_loss_max'] = _engineLossMax;
    data['propellant_1'] = _propellant1;
    data['propellant_2'] = _propellant2;
    data['thrust_to_weight'] = _thrustToWeight;
    return data;
  }
}
