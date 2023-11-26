import 'dragon/dragon.dart';

class Payload {
  late Dragon? _dragon;
  late String _name;
  late String _type;
  late bool _reused;
  late String _launch;
  late List<String> _customers;
  late List<num> _noradIds;
  late List<String> _nationalities;
  late List<String> _manufacturers;
  late num _massKg;
  late num _massLbs;
  late String _orbit;
  late String _referenceSystem;
  late String _regime;
  late num _longitude;
  late num _semiMajorAxisKm;
  late num _eccentricity;
  late num _periapsisKm;
  late num _apoapsisKm;
  late num _inclinationDeg;
  late num _periodMin;
  late num? _lifespanYears;
  late String? _epoch;
  late num _meanMotion;
  late num _raan;
  late num _argOfPericenter;
  late num _meanAnomaly;
  late String _id;

  Payload({
    required Dragon? dragon,
    required String name,
    required String type,
    required bool reused,
    required String launch,
    required List<String> customers,
    required List<num> noradIds,
    required List<String> nationalities,
    required List<String> manufacturers,
    required num massKg,
    required num massLbs,
    required String orbit,
    required String referenceSystem,
    required String regime,
    required num longitude,
    required num semiMajorAxisKm,
    required num eccentricity,
    required num periapsisKm,
    required num apoapsisKm,
    required num inclinationDeg,
    required num periodMin,
    num? lifespanYears,
    String? epoch,
    required num meanMotion,
    required num raan,
    required num argOfPericenter,
    required num meanAnomaly,
    required String id,
  }) {
    _dragon = dragon;
    _name = name;
    _type = type;
    _reused = reused;
    _launch = launch;
    _customers = customers;
    _noradIds = noradIds;
    _nationalities = nationalities;
    _manufacturers = manufacturers;
    _massKg = massKg;
    _massLbs = massLbs;
    _orbit = orbit;
    _referenceSystem = referenceSystem;
    _regime = regime;
    _longitude = longitude;
    _semiMajorAxisKm = semiMajorAxisKm;
    _eccentricity = eccentricity;
    _periapsisKm = periapsisKm;
    _apoapsisKm = apoapsisKm;
    _inclinationDeg = inclinationDeg;
    _periodMin = periodMin;
    _lifespanYears = lifespanYears;
    _epoch = epoch;
    _meanMotion = meanMotion;
    _raan = raan;
    _argOfPericenter = argOfPericenter;
    _meanAnomaly = meanAnomaly;
    _id = id;
  }

  Dragon? get dragon => _dragon; // Change the return type to Dragon?
  set dragon(Dragon? dragon) =>
      _dragon = dragon; // Change the parameter type to Dragon?
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
  num get lifespanYears => _lifespanYears ?? 0;
  set lifespanYears(num lifespanYears) => _lifespanYears = lifespanYears;
  String get epoch => _epoch ?? '';
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

  factory Payload.fromJson(Map<String, dynamic> json) {
    return Payload(
      dragon:
          json['dragon'] != null ? new Dragon.fromJson(json['dragon']) : null,
      name: json['name'] ?? '',
      type: json['type'] ?? '',
      reused: json['reused'] ?? false,
      launch: json['launch'] ?? '',
      customers: List<String>.from(json['customers'] ?? []),
      noradIds: List<num>.from(json['norad_ids'] ?? []),
      // if (json['norad_ids'] != null) {
      //   _noradIds = new List<num>();
      //   json['norad_ids'].forEach((v) {
      //     _noradIds.add(v);
      //   });
      // }
      nationalities: List<String>.from(json['nationalities'] ?? []),
      manufacturers: List<String>.from(json['manufacturers'] ?? []),
      massKg: json['mass_kg'] ?? 0,
      massLbs: json['mass_lbs'] ?? 0,
      orbit: json['orbit'] ?? '',
      referenceSystem: json['reference_system'] ?? '',
      regime: json['regime'] ?? '',
      longitude: json['longitude'] ?? 0,
      semiMajorAxisKm: json['semi_major_axis_km'] ?? 0,
      eccentricity: json['eccentricity'] ?? 0,
      periapsisKm: json['periapsis_km'] ?? 0,
      apoapsisKm: json['apoapsis_km'] ?? 0,
      inclinationDeg: json['inclination_deg'] ?? 0,
      periodMin: json['period_min'] ?? 0,
      lifespanYears: json['lifespan_years'],
      epoch: json['epoch'],
      meanMotion: json['mean_motion'] ?? 0,
      raan: json['raan'] ?? 0,
      argOfPericenter: json['arg_of_pericenter'] ?? 0,
      meanAnomaly: json['mean_anomaly'] ?? 0,
      id: json['id'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': _name,
      'type': _type,
      'reused': _reused,
      'launch': _launch,
      'customers': _customers,
      'norad_ids': _noradIds,
      'nationalities': _nationalities,
      'manufacturers': _manufacturers,
      'mass_kg': _massKg,
      'mass_lbs': _massLbs,
      'orbit': _orbit,
      'reference_system': _referenceSystem,
      'regime': _regime,
      'longitude': _longitude,
      'semi_major_axis_km': _semiMajorAxisKm,
      'eccentricity': _eccentricity,
      'periapsis_km': _periapsisKm,
      'apoapsis_km': _apoapsisKm,
      'inclination_deg': _inclinationDeg,
      'period_min': _periodMin,
      'lifespan_years': _lifespanYears,
      'epoch': _epoch,
      'mean_motion': _meanMotion,
      'raan': _raan,
      'arg_of_pericenter': _argOfPericenter,
      'mean_anomaly': _meanAnomaly,
      'id': _id,
    };
  }
}
