import 'headquarter.dart';
import 'links.dart';

class Company {
  Headquarters _headquarters;
  Links _links;
  String _name;
  String _founder;
  num _founded;
  num _employees;
  num _vehicles;
  num _launchSites;
  num _testSites;
  String _ceo;
  String _cto;
  String _coo;
  String _ctoPropulsion;
  num _valuation;
  String _summary;
  String _id;

  Company(
      {Headquarters headquarters,
      Links links,
      String name,
      String founder,
      num founded,
      num employees,
      num vehicles,
      num launchSites,
      num testSites,
      String ceo,
      String cto,
      String coo,
      String ctoPropulsion,
      num valuation,
      String summary,
      String id}) {
    this._headquarters = headquarters;
    this._links = links;
    this._name = name;
    this._founder = founder;
    this._founded = founded;
    this._employees = employees;
    this._vehicles = vehicles;
    this._launchSites = launchSites;
    this._testSites = testSites;
    this._ceo = ceo;
    this._cto = cto;
    this._coo = coo;
    this._ctoPropulsion = ctoPropulsion;
    this._valuation = valuation;
    this._summary = summary;
    this._id = id;
  }

  Headquarters get headquarters => _headquarters;
  set headquarters(Headquarters headquarters) => _headquarters = headquarters;
  Links get links => _links;
  set links(Links links) => _links = links;
  String get name => _name;
  set name(String name) => _name = name;
  String get founder => _founder;
  set founder(String founder) => _founder = founder;
  num get founded => _founded;
  set founded(num founded) => _founded = founded;
  num get employees => _employees;
  set employees(num employees) => _employees = employees;
  num get vehicles => _vehicles;
  set vehicles(num vehicles) => _vehicles = vehicles;
  num get launchSites => _launchSites;
  set launchSites(num launchSites) => _launchSites = launchSites;
  num get testSites => _testSites;
  set testSites(num testSites) => _testSites = testSites;
  String get ceo => _ceo;
  set ceo(String ceo) => _ceo = ceo;
  String get cto => _cto;
  set cto(String cto) => _cto = cto;
  String get coo => _coo;
  set coo(String coo) => _coo = coo;
  String get ctoPropulsion => _ctoPropulsion;
  set ctoPropulsion(String ctoPropulsion) => _ctoPropulsion = ctoPropulsion;
  num get valuation => _valuation;
  set valuation(num valuation) => _valuation = valuation;
  String get summary => _summary;
  set summary(String summary) => _summary = summary;
  String get id => _id;
  set id(String id) => _id = id;

  Company.fromJson(Map<String, dynamic> json) {
    _headquarters = json['headquarters'] != null
        ? Headquarters.fromJson(json['headquarters'])
        : null;
    _links = json['links'] != null ? Links.fromJson(json['links']) : null;
    _name = json['name'];
    _founder = json['founder'];
    _founded = json['founded'];
    _employees = json['employees'];
    _vehicles = json['vehicles'];
    _launchSites = json['launch_sites'];
    _testSites = json['test_sites'];
    _ceo = json['ceo'];
    _cto = json['cto'];
    _coo = json['coo'];
    _ctoPropulsion = json['cto_propulsion'];
    _valuation = json['valuation'];
    _summary = json['summary'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._headquarters != null) {
      data['headquarters'] = this._headquarters.toJson();
    }
    if (this._links != null) {
      data['links'] = this._links.toJson();
    }
    data['name'] = this._name;
    data['founder'] = this._founder;
    data['founded'] = this._founded;
    data['employees'] = this._employees;
    data['vehicles'] = this._vehicles;
    data['launch_sites'] = this._launchSites;
    data['test_sites'] = this._testSites;
    data['ceo'] = this._ceo;
    data['cto'] = this._cto;
    data['coo'] = this._coo;
    data['cto_propulsion'] = this._ctoPropulsion;
    data['valuation'] = this._valuation;
    data['summary'] = this._summary;
    data['id'] = this._id;
    return data;
  }
}
