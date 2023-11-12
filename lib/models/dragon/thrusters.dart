import 'thrust.dart';

class Thrusters {
  String _type;
  int _amount;
  int _pods;
  String _fuel1;
  String _fuel2;
  int _isp;
  Thrust _thrust;

  Thrusters({
    required String type,
    required int amount,
    required int pods,
    required String fuel1,
    required String fuel2,
    required int isp,
    required Thrust thrust,
  })  : _type = type,
        _amount = amount,
        _pods = pods,
        _fuel1 = fuel1,
        _fuel2 = fuel2,
        _isp = isp,
        _thrust = thrust;

  String get type => _type;
  set type(String value) => _type = value;
  int get amount => _amount;
  set amount(int value) => _amount = value;
  int get pods => _pods;
  set pods(int value) => _pods = value;
  String get fuel1 => _fuel1;
  set fuel1(String value) => _fuel1 = value;
  String get fuel2 => _fuel2;
  set fuel2(String value) => _fuel2 = value;
  int get isp => _isp;
  set isp(int value) => _isp = value;
  Thrust get thrust => _thrust;
  set thrust(Thrust value) => _thrust = value;

  Thrusters.fromJson(Map<String, dynamic> json)
      : _type = json['type'],
        _amount = json['amount'],
        _pods = json['pods'],
        _fuel1 = json['fuel_1'],
        _fuel2 = json['fuel_2'],
        _isp = json['isp'],
        _thrust = Thrust.fromJson(json['thrust'] ?? {});

  Map<String, dynamic> toJson() {
    return {
      'type': _type,
      'amount': _amount,
      'pods': _pods,
      'fuel_1': _fuel1,
      'fuel_2': _fuel2,
      'isp': _isp,
      'thrust': _thrust.toJson(),
    };
  }
}
