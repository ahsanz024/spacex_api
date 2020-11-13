import 'dart:convert' as convert;

import 'package:spacex_api/models/capsule.dart';
import 'package:spacex_api/models/crew.dart';
import 'package:spacex_api/models/ship.dart';

import 'core.dart';
import 'failures.dart';
import 'fairings.dart';
import 'links.dart';

class Launch {
  Fairings _fairings;
  Links _links;
  String _staticFireDateUtc;
  num _staticFireDateUnix;
  bool _tbd;
  bool _net;
  num _window;
  String _rocket;
  bool _success;
  String _details;
  List<String> _crew;
  List<String> _shipsIds;
  List<String> _capsules;
  List<String> _payloads;
  String _launchpad;
  bool _autoUpdate;
  List<Failures> _failures;
  num _flightNumber;
  String _name;
  String _dateUtc;
  num _dateUnix;
  String _dateLocal;
  String _datePrecision;
  bool _upcoming;
  List<Cores> _cores;
  String _id;

  Launch(
      {Fairings fairings,
      Links links,
      String staticFireDateUtc,
      num staticFireDateUnix,
      bool tbd,
      bool net,
      num window,
      String rocket,
      bool success,
      String details,
      List<String> crew,
      List<String> shipsIds,
      List<String> capsules,
      List<String> payloads,
      String launchpad,
      bool autoUpdate,
      List<Failures> failures,
      num flightNumber,
      String name,
      String dateUtc,
      num dateUnix,
      String dateLocal,
      String datePrecision,
      bool upcoming,
      List<Cores> cores,
      String id}) {
    this._fairings = fairings;
    this._links = links;
    this._staticFireDateUtc = staticFireDateUtc;
    this._staticFireDateUnix = staticFireDateUnix;
    this._tbd = tbd;
    this._net = net;
    this._window = window;
    this._rocket = rocket;
    this._success = success;
    this._details = details;
    this._crew = crew;
    this._shipsIds = shipsIds;
    this._capsules = capsules;
    this._payloads = payloads;
    this._launchpad = launchpad;
    this._autoUpdate = autoUpdate;
    this._failures = failures;
    this._flightNumber = flightNumber;
    this._name = name;
    this._dateUtc = dateUtc;
    this._dateUnix = dateUnix;
    this._dateLocal = dateLocal;
    this._datePrecision = datePrecision;
    this._upcoming = upcoming;
    this._cores = cores;
    this._id = id;
  }

  Fairings get fairings => _fairings;
  set fairings(Fairings fairings) => _fairings = fairings;
  Links get links => _links;
  set links(Links links) => _links = links;
  String get staticFireDateUtc => _staticFireDateUtc;
  set staticFireDateUtc(String staticFireDateUtc) =>
      _staticFireDateUtc = staticFireDateUtc;
  num get staticFireDateUnix => _staticFireDateUnix;
  set staticFireDateUnix(num staticFireDateUnix) =>
      _staticFireDateUnix = staticFireDateUnix;
  bool get tbd => _tbd;
  set tbd(bool tbd) => _tbd = tbd;
  bool get net => _net;
  set net(bool net) => _net = net;
  num get window => _window;
  set window(num window) => _window = window;
  String get rocket => _rocket;
  set rocket(String rocket) => _rocket = rocket;
  bool get success => _success;
  set success(bool success) => _success = success;
  String get details => _details;
  set details(String details) => _details = details;
  List<String> get crew => _crew;
  set crew(List<String> crew) => _crew = crew;
  List<String> get shipsIds => _shipsIds;
  set shipsIds(List<String> shipsIds) => _shipsIds = shipsIds;
  List<String> get capsules => _capsules;
  set capsules(List<String> capsules) => _capsules = capsules;
  List<String> get payloads => _payloads;
  set payloads(List<String> payloads) => _payloads = payloads;
  String get launchpad => _launchpad;
  set launchpad(String launchpad) => _launchpad = launchpad;
  bool get autoUpdate => _autoUpdate;
  set autoUpdate(bool autoUpdate) => _autoUpdate = autoUpdate;
  List<Failures> get failures => _failures;
  set failures(List<Failures> failures) => _failures = failures;
  num get flightNumber => _flightNumber;
  set flightNumber(num flightNumber) => _flightNumber = flightNumber;
  String get name => _name;
  set name(String name) => _name = name;
  String get dateUtc => _dateUtc;
  set dateUtc(String dateUtc) => _dateUtc = dateUtc;
  num get dateUnix => _dateUnix;
  set dateUnix(num dateUnix) => _dateUnix = dateUnix;
  String get dateLocal => _dateLocal;
  set dateLocal(String dateLocal) => _dateLocal = dateLocal;
  String get datePrecision => _datePrecision;
  set datePrecision(String datePrecision) => _datePrecision = datePrecision;
  bool get upcoming => _upcoming;
  set upcoming(bool upcoming) => _upcoming = upcoming;
  List<Cores> get cores => _cores;
  set cores(List<Cores> cores) => _cores = cores;
  String get id => _id;
  set id(String id) => _id = id;

  Launch.fromJson(Map<String, dynamic> json) {
    _fairings = json['fairings'] != null
        ? new Fairings.fromJson(json['fairings'])
        : null;
    _links = json['links'] != null ? new Links.fromJson(json['links']) : null;
    _staticFireDateUtc = json['static_fire_date_utc'];
    _staticFireDateUnix = json['static_fire_date_unix'];
    _tbd = json['tbd'];
    _net = json['net'];
    _window = json['window'];
    _rocket = json['rocket'];
    _success = json['success'];
    _details = json['details'];
    if (json['crew'] != null) {
      _crew = new List<String>();
      json['crew'].forEach((v) {
        _crew.add(v);
      });
    }
    if (json['ships'] != null) {
      _shipsIds = new List<String>();
      json['ships'].forEach((v) {
        _shipsIds.add(v);
      });
    }
    if (json['capsules'] != null) {
      _capsules = new List<String>();
      json['capsules'].forEach((v) {
        _capsules.add(v);
      });
    }
    _payloads = json['payloads'].cast<String>();
    _launchpad = json['launchpad'];
    _autoUpdate = json['auto_update'];
    if (json['failures'] != null) {
      _failures = new List<Failures>();
      json['failures'].forEach((v) {
        _failures.add(new Failures.fromJson(v));
      });
    }
    _flightNumber = json['flight_number'];
    _name = json['name'];
    _dateUtc = json['date_utc'];
    _dateUnix = json['date_unix'];
    _dateLocal = json['date_local'];
    _datePrecision = json['date_precision'];
    _upcoming = json['upcoming'];
    if (json['cores'] != null) {
      _cores = new List<Cores>();
      json['cores'].forEach((v) {
        _cores.add(new Cores.fromJson(v));
      });
    }
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._fairings != null) {
      data['fairings'] = this._fairings.toJson();
    }
    if (this._links != null) {
      data['links'] = this._links.toJson();
    }
    data['static_fire_date_utc'] = this._staticFireDateUtc;
    data['static_fire_date_unix'] = this._staticFireDateUnix;
    data['tbd'] = this._tbd;
    data['net'] = this._net;
    data['window'] = this._window;
    data['rocket'] = this._rocket;
    data['success'] = this._success;
    data['details'] = this._details;
    if (this._crew != null) {
      data['crew'] = this._crew.map((v) => v).toList();
    }
    if (this._shipsIds != null) {
      data['ships'] = this._shipsIds.map((v) => v).toList();
    }
    if (this._capsules != null) {
      data['capsules'] = this._capsules.map((v) => v).toList();
    }
    data['payloads'] = this._payloads;
    data['launchpad'] = this._launchpad;
    data['auto_update'] = this._autoUpdate;
    if (this._failures != null) {
      data['failures'] = this._failures.map((v) => v.toJson()).toList();
    }
    data['flight_number'] = this._flightNumber;
    data['name'] = this._name;
    data['date_utc'] = this._dateUtc;
    data['date_unix'] = this._dateUnix;
    data['date_local'] = this._dateLocal;
    data['date_precision'] = this._datePrecision;
    data['upcoming'] = this._upcoming;
    if (this._cores != null) {
      data['cores'] = this._cores.map((v) => v.toJson()).toList();
    }
    data['id'] = this._id;
    return data;
  }
}
