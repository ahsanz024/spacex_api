import 'dragon/dragon.dart';

class Payload {
  Dragon _dragon;
  String _name;
  String _type;
  bool _reused;
  String _launch;
  List<String> _customers;
  List<num> _noradIds;
  List<String> _nationalities;
  List<String> _manufacturers;
  num _massKg;
  num _massLbs;
  String _orbit;
  String _referenceSystem;
  String _regime;
  num _longitude;
  num _semiMajorAxisKm;
  num _eccentricity;
  num _periapsisKm;
  num _apoapsisKm;
  num _inclinationDeg;
  num _periodMin;
  num _lifespanYears;
  String _epoch;
  num _meanMotion;
  num _raan;
  num _argOfPericenter;
  num _meanAnomaly;
  String _id;

  Payload({
    Dragon dragon,
    String name,
    String type,
    bool reused,
    String launch,
    List<String> customers,
    List<num> noradIds,
    List<String> nationalities,
    List<String> manufacturers,
    num massKg,
    num massLbs,
    String orbit,
    String referenceSystem,
    String regime,
    num longitude,
    num semiMajorAxisKm,
    num eccentricity,
    num periapsisKm,
    num apoapsisKm,
    num inclinationDeg,
    num periodMin,
    num lifespanYears,
    String epoch,
    num meanMotion,
    num raan,
    num argOfPericenter,
    num meanAnomaly,
    String id,
  }) {
    this._dragon = dragon;
    this._name = name;
    this._type = type;
    this._reused = reused;
    this._launch = launch;
    this._customers = customers;
    this._noradIds = noradIds;
    this._nationalities = nationalities;
    this._manufacturers = manufacturers;
    this._massKg = massKg;
    this._massLbs = massLbs;
    this._orbit = orbit;
    this._referenceSystem = referenceSystem;
    this._regime = regime;
    this._longitude = longitude;
    this._semiMajorAxisKm = semiMajorAxisKm;
    this._eccentricity = eccentricity;
    this._periapsisKm = periapsisKm;
    this._apoapsisKm = apoapsisKm;
    this._inclinationDeg = inclinationDeg;
    this._periodMin = periodMin;
    this._lifespanYears = lifespanYears;
    this._epoch = epoch;
    this._meanMotion = meanMotion;
    this._raan = raan;
    this._argOfPericenter = argOfPericenter;
    this._meanAnomaly = meanAnomaly;
    this._id = id;
  }

  Dragon get dragon => _dragon;
  set dragon(Dragon dragon) => _dragon = dragon;
  String get name => _name;
  set name(String name) => _name = name;
  String get type => _type;
  set type(String type) => _type = type;
  bool get reused => _reused;
  set reused(bool reused) => _reused = reused;
  String get launch => _launch;
  set launch(String launch) => _launch = launch;
  List<String> get customers => _customers;
  set customers(List<String> customers) => _customers = customers;
  List<num> get noradIds => _noradIds;
  set noradIds(List<num> noradIds) => _noradIds = noradIds;
  List<String> get nationalities => _nationalities;
  set nationalities(List<String> nationalities) =>
      _nationalities = nationalities;
  List<String> get manufacturers => _manufacturers;
  set manufacturers(List<String> manufacturers) =>
      _manufacturers = manufacturers;
  num get massKg => _massKg;
  set massKg(num massKg) => _massKg = massKg;
  num get massLbs => _massLbs;
  set massLbs(num massLbs) => _massLbs = massLbs;
  String get orbit => _orbit;
  set orbit(String orbit) => _orbit = orbit;
  String get referenceSystem => _referenceSystem;
  set referenceSystem(String referenceSystem) =>
      _referenceSystem = referenceSystem;
  String get regime => _regime;
  set regime(String regime) => _regime = regime;
  num get longitude => _longitude;
  set longitude(num longitude) => _longitude = longitude;
  num get semiMajorAxisKm => _semiMajorAxisKm;
  set semiMajorAxisKm(num semiMajorAxisKm) =>
      _semiMajorAxisKm = semiMajorAxisKm;
  num get eccentricity => _eccentricity;
  set eccentricity(num eccentricity) => _eccentricity = eccentricity;
  num get periapsisKm => _periapsisKm;
  set periapsisKm(num periapsisKm) => _periapsisKm = periapsisKm;
  num get apoapsisKm => _apoapsisKm;
  set apoapsisKm(num apoapsisKm) => _apoapsisKm = apoapsisKm;
  num get inclinationDeg => _inclinationDeg;
  set inclinationDeg(num inclinationDeg) => _inclinationDeg = inclinationDeg;
  num get periodMin => _periodMin;
  set periodMin(num periodMin) => _periodMin = periodMin;
  num get lifespanYears => _lifespanYears;
  set lifespanYears(num lifespanYears) => _lifespanYears = lifespanYears;
  String get epoch => _epoch;
  set epoch(String epoch) => _epoch = epoch;
  num get meanMotion => _meanMotion;
  set meanMotion(num meanMotion) => _meanMotion = meanMotion;
  num get raan => _raan;
  set raan(num raan) => _raan = raan;
  num get argOfPericenter => _argOfPericenter;
  set argOfPericenter(num argOfPericenter) =>
      _argOfPericenter = argOfPericenter;
  num get meanAnomaly => _meanAnomaly;
  set meanAnomaly(num meanAnomaly) => _meanAnomaly = meanAnomaly;
  String get id => _id;
  set id(String id) => _id = id;

  /// Deserialize recieved data
  Payload.fromJson(Map<String, dynamic> json) {
    _dragon =
        json['dragon'] != null ? new Dragon.fromJson(json['dragon']) : null;
    _name = json['name'];
    _type = json['type'];
    _reused = json['reused'];
    _launch = json['launch'];
    _customers = json['customers']?.cast<String>();
    if (json['norad_ids'] != null) {
      _noradIds = new List<num>();
      json['norad_ids'].forEach((v) {
        _noradIds.add(v);
      });
    }
    _nationalities = json['nationalities']?.cast<String>();
    _manufacturers = json['manufacturers']?.cast<String>();
    _massKg = json['mass_kg'];
    _massLbs = json['mass_lbs'];
    _orbit = json['orbit'];
    _referenceSystem = json['reference_system'];
    _regime = json['regime'];
    _longitude = json['longitude'];
    _semiMajorAxisKm = json['semi_major_axis_km'];
    _eccentricity = json['eccentricity'];
    _periapsisKm = json['periapsis_km'];
    _apoapsisKm = json['apoapsis_km'];
    _inclinationDeg = json['inclination_deg'];
    _periodMin = json['period_min'];
    _lifespanYears = json['lifespan_years'];
    _epoch = json['epoch'];
    _meanMotion = json['mean_motion'];
    _raan = json['raan'];
    _argOfPericenter = json['arg_of_pericenter'];
    _meanAnomaly = json['mean_anomaly'];
    _id = json['id'];
  }

  /// Serializer
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._dragon != null) {
      data['dragon'] = this._dragon.toJson();
    }
    data['name'] = this._name;
    data['type'] = this._type;
    data['reused'] = this._reused;
    data['launch'] = this._launch;
    data['customers'] = this._customers;
    if (this._noradIds != null) {
      data['norad_ids'] = this._noradIds.map((v) => v).toList();
    }
    data['nationalities'] = this._nationalities;
    data['manufacturers'] = this._manufacturers;
    data['mass_kg'] = this._massKg;
    data['mass_lbs'] = this._massLbs;
    data['orbit'] = this._orbit;
    data['reference_system'] = this._referenceSystem;
    data['regime'] = this._regime;
    data['longitude'] = this._longitude;
    data['semi_major_axis_km'] = this._semiMajorAxisKm;
    data['eccentricity'] = this._eccentricity;
    data['periapsis_km'] = this._periapsisKm;
    data['apoapsis_km'] = this._apoapsisKm;
    data['inclination_deg'] = this._inclinationDeg;
    data['period_min'] = this._periodMin;
    data['lifespan_years'] = this._lifespanYears;
    data['epoch'] = this._epoch;
    data['mean_motion'] = this._meanMotion;
    data['raan'] = this._raan;
    data['arg_of_pericenter'] = this._argOfPericenter;
    data['mean_anomaly'] = this._meanAnomaly;
    data['id'] = this._id;
    return data;
  }
}
