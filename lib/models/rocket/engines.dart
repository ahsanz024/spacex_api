import 'isp.dart';
import 'thrust_sea_level.dart';

class Engines {
  Isp _isp;
  ThrustSeaLevel _thrustSeaLevel;
  ThrustSeaLevel _thrustVacuum;
  num _number;
  String _type;
  String _version;
  String _layout;
  num _engineLossMax;
  String _propellant1;
  String _propellant2;
  num _thrustToWeight;

  Engines({
    Isp isp,
    ThrustSeaLevel thrustSeaLevel,
    ThrustSeaLevel thrustVacuum,
    num number,
    String type,
    String version,
    String layout,
    num engineLossMax,
    String propellant1,
    String propellant2,
    num thrustToWeight,
  }) {
    this._isp = isp;
    this._thrustSeaLevel = thrustSeaLevel;
    this._thrustVacuum = thrustVacuum;
    this._number = number;
    this._type = type;
    this._version = version;
    this._layout = layout;
    this._engineLossMax = engineLossMax;
    this._propellant1 = propellant1;
    this._propellant2 = propellant2;
    this._thrustToWeight = thrustToWeight;
  }

  Isp get isp => _isp;
  set isp(Isp isp) => _isp = isp;
  ThrustSeaLevel get thrustSeaLevel => _thrustSeaLevel;
  set thrustSeaLevel(ThrustSeaLevel thrustSeaLevel) =>
      _thrustSeaLevel = thrustSeaLevel;
  ThrustSeaLevel get thrustVacuum => _thrustVacuum;
  set thrustVacuum(ThrustSeaLevel thrustVacuum) => _thrustVacuum = thrustVacuum;
  num get number => _number;
  set number(num number) => _number = number;
  String get type => _type;
  set type(String type) => _type = type;
  String get version => _version;
  set version(String version) => _version = version;
  String get layout => _layout;
  set layout(String layout) => _layout = layout;
  num get engineLossMax => _engineLossMax;
  set engineLossMax(num engineLossMax) => _engineLossMax = engineLossMax;
  String get propellant1 => _propellant1;
  set propellant1(String propellant1) => _propellant1 = propellant1;
  String get propellant2 => _propellant2;
  set propellant2(String propellant2) => _propellant2 = propellant2;
  num get thrustToWeight => _thrustToWeight;
  set thrustToWeight(num thrustToWeight) => _thrustToWeight = thrustToWeight;

  Engines.fromJson(Map<String, dynamic> json) {
    _isp = json['isp'] != null ? new Isp.fromJson(json['isp']) : null;
    _thrustSeaLevel = json['thrust_sea_level'] != null
        ? new ThrustSeaLevel.fromJson(json['thrust_sea_level'])
        : null;
    _thrustVacuum = json['thrust_vacuum'] != null
        ? new ThrustSeaLevel.fromJson(json['thrust_vacuum'])
        : null;
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._isp != null) {
      data['isp'] = this._isp.toJson();
    }
    if (this._thrustSeaLevel != null) {
      data['thrust_sea_level'] = this._thrustSeaLevel.toJson();
    }
    if (this._thrustVacuum != null) {
      data['thrust_vacuum'] = this._thrustVacuum.toJson();
    }
    data['number'] = this._number;
    data['type'] = this._type;
    data['version'] = this._version;
    data['layout'] = this._layout;
    data['engine_loss_max'] = this._engineLossMax;
    data['propellant_1'] = this._propellant1;
    data['propellant_2'] = this._propellant2;
    data['thrust_to_weight'] = this._thrustToWeight;
    return data;
  }
}
