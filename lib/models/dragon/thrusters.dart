import 'thrust.dart';

class Thrusters {
  String _type;
  num _amount;
  num _pods;
  String _fuel1;
  String _fuel2;
  num _isp;
  Thrust _thrust;

  Thrusters(
      {String type,
      num amount,
      num pods,
      String fuel1,
      String fuel2,
      num isp,
      Thrust thrust}) {
    this._type = type;
    this._amount = amount;
    this._pods = pods;
    this._fuel1 = fuel1;
    this._fuel2 = fuel2;
    this._isp = isp;
    this._thrust = thrust;
  }

  String get type => _type;
  set type(String type) => _type = type;
  num get amount => _amount;
  set amount(num amount) => _amount = amount;
  num get pods => _pods;
  set pods(num pods) => _pods = pods;
  String get fuel1 => _fuel1;
  set fuel1(String fuel1) => _fuel1 = fuel1;
  String get fuel2 => _fuel2;
  set fuel2(String fuel2) => _fuel2 = fuel2;
  num get isp => _isp;
  set isp(num isp) => _isp = isp;
  Thrust get thrust => _thrust;
  set thrust(Thrust thrust) => _thrust = thrust;

  Thrusters.fromJson(Map<String, dynamic> json) {
    _type = json['type'];
    _amount = json['amount'];
    _pods = json['pods'];
    _fuel1 = json['fuel_1'];
    _fuel2 = json['fuel_2'];
    _isp = json['isp'];
    _thrust =
        json['thrust'] != null ? new Thrust.fromJson(json['thrust']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this._type;
    data['amount'] = this._amount;
    data['pods'] = this._pods;
    data['fuel_1'] = this._fuel1;
    data['fuel_2'] = this._fuel2;
    data['isp'] = this._isp;
    if (this._thrust != null) {
      data['thrust'] = this._thrust.toJson();
    }
    return data;
  }
}
