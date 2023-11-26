import 'core.dart';
import 'failures.dart';
import 'fairings.dart';
import 'links.dart';

class Launch {
  late Fairings _fairings;
  late Links _links;
  late String _staticFireDateUtc;
  late num _staticFireDateUnix;
  late bool _tbd;
  late bool _net;
  late num _window;
  late String _rocket;
  late bool _success;
  late String _details;
  late List<String> _crew;
  late List<String> _shipsIds;
  late List<String> _capsules;
  late List<String> _payloads;
  late String _launchpad;
  late bool _autoUpdate;
  late List<Failures> _failures;
  late num _flightNumber;
  late String _name;
  late String _dateUtc;
  late num _dateUnix;
  late String _dateLocal;
  late String _datePrecision;
  late bool _upcoming;
  late List<Cores> _cores;
  late String _id;

  Launch({
    required Fairings fairings,
    required Links links,
    required String staticFireDateUtc,
    required num staticFireDateUnix,
    required bool tbd,
    required bool net,
    required num window,
    required String rocket,
    required bool success,
    required String details,
    required List<String> crew,
    required List<String> shipsIds,
    required List<String> capsules,
    required List<String> payloads,
    required String launchpad,
    required bool autoUpdate,
    required List<Failures> failures,
    required num flightNumber,
    required String name,
    required String dateUtc,
    required num dateUnix,
    required String dateLocal,
    required String datePrecision,
    required bool upcoming,
    required List<Cores> cores,
    required String id,
  })  : _fairings = fairings,
        _links = links,
        _staticFireDateUtc = staticFireDateUtc,
        _staticFireDateUnix = staticFireDateUnix,
        _tbd = tbd,
        _net = net,
        _window = window,
        _rocket = rocket,
        _success = success,
        _details = details,
        _crew = crew,
        _shipsIds = shipsIds,
        _capsules = capsules,
        _payloads = payloads,
        _launchpad = launchpad,
        _autoUpdate = autoUpdate,
        _failures = failures,
        _flightNumber = flightNumber,
        _name = name,
        _dateUtc = dateUtc,
        _dateUnix = dateUnix,
        _dateLocal = dateLocal,
        _datePrecision = datePrecision,
        _upcoming = upcoming,
        _cores = cores,
        _id = id;

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
    _fairings = (json['fairings'] != null
        ? Fairings.fromJson(json['fairings'])
        : null)!;
    _links = (json['links'] != null ? Links.fromJson(json['links']) : null)!;
    _staticFireDateUtc =
        json['static_fire_date_utc'] ?? ''; // Assuming empty string as default
    _staticFireDateUnix =
        json['static_fire_date_unix'] ?? 0; // Assuming zero as default
    _tbd = json['tbd'] ?? false; // Assuming false as default
    _net = json['net'] ?? false; // Assuming false as default
    _window = json['window'] ?? 0; // Assuming zero as default
    _rocket = json['rocket'] ?? ''; // Assuming empty string as default
    _success = json['success'] ?? false; // Assuming false as default
    _details = json['details'] ?? ''; // Assuming empty string as default
    _crew =
        json['crew']?.cast<String>() ?? []; // Assuming empty list as default
    _shipsIds =
        json['ships']?.cast<String>() ?? []; // Assuming empty list as default
    _capsules = json['capsules']?.cast<String>() ??
        []; // Assuming empty list as default
    _payloads = json['payloads']?.cast<String>() ??
        []; // Assuming empty list as default
    _launchpad = json['launchpad'] ?? ''; // Assuming empty string as default
    _autoUpdate = json['auto_update'] ?? false; // Assuming false as default
    _failures = (json['failures'] as List?)
            ?.map((v) => Failures.fromJson(v))
            .toList() ??
        []; // Assuming empty list as default
    _flightNumber = json['flight_number'] ?? 0; // Assuming zero as default
    _name = json['name'] ?? ''; // Assuming empty string as default
    _dateUtc = json['date_utc'] ?? ''; // Assuming empty string as default
    _dateUnix = json['date_unix'] ?? 0; // Assuming zero as default
    _dateLocal = json['date_local'] ?? ''; // Assuming empty string as default
    _datePrecision =
        json['date_precision'] ?? ''; // Assuming empty string as default
    _upcoming = json['upcoming'] ?? false; // Assuming false as default
    _cores = (json['cores'] as List?)?.map((v) => Cores.fromJson(v)).toList() ??
        []; // Assuming empty list as default
    _id = json['id'] ?? ''; // Assuming empty string as default
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fairings'] = this._fairings.toJson();
    data['links'] = this._links.toJson();
    data['static_fire_date_utc'] = this._staticFireDateUtc;
    data['static_fire_date_unix'] = this._staticFireDateUnix;
    data['tbd'] = this._tbd;
    data['net'] = this._net;
    data['window'] = this._window;
    data['rocket'] = this._rocket;
    data['success'] = this._success;
    data['details'] = this._details;
    data['crew'] = this._crew.map((v) => v).toList();
    data['ships'] = this._shipsIds.map((v) => v).toList();
    data['capsules'] = this._capsules.map((v) => v).toList();
    data['payloads'] = this._payloads;
    data['launchpad'] = this._launchpad;
    data['auto_update'] = this._autoUpdate;
    data['failures'] = this._failures.map((v) => v.toJson()).toList();
    data['flight_number'] = this._flightNumber;
    data['name'] = this._name;
    data['date_utc'] = this._dateUtc;
    data['date_unix'] = this._dateUnix;
    data['date_local'] = this._dateLocal;
    data['date_precision'] = this._datePrecision;
    data['upcoming'] = this._upcoming;
    data['cores'] = this._cores.map((v) => v.toJson()).toList();
    data['id'] = this._id;
    return data;
  }
}
