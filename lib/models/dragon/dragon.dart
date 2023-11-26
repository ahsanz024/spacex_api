import 'diameter.dart';
import 'head_shield.dart';
import 'height_trunk.dart';
import 'launch_payload_mass.dart';
import 'launch_payload_vol.dart';
import 'pressurized_capsule.dart';
import 'thrusters.dart';
import 'trunk.dart';

class Dragon {
  late HeatShield _heatShield;
  late LaunchPayloadMass _launchPayloadMass;
  late LaunchPayloadVol _launchPayloadVol;
  late LaunchPayloadMass _returnPayloadMass;
  late LaunchPayloadVol _returnPayloadVol;
  late PressurizedCapsule _pressurizedCapsule;
  late Trunk _trunk;
  late HeightWTrunk _heightWTrunk;
  late Diameter _diameter;
  late String _firstFlight;
  late List<String> _flickrImages;
  late String _name;
  late String _type;
  late bool _active;
  late num _crewCapacity;
  late num _sidewallAngleDeg;
  late num _orbitDurationYr;
  late num _dryMassKg;
  late num _dryMassLb;
  late List<Thrusters> _thrusters;
  late String _wikipedia;
  late String _description;
  late String _id;

  Dragon({
    required HeatShield heatShield,
    required LaunchPayloadMass launchPayloadMass,
    required LaunchPayloadVol launchPayloadVol,
    required LaunchPayloadMass returnPayloadMass,
    required LaunchPayloadVol returnPayloadVol,
    required PressurizedCapsule pressurizedCapsule,
    required Trunk trunk,
    required HeightWTrunk heightWTrunk,
    required Diameter diameter,
    required String firstFlight,
    required List<String> flickrImages,
    required String name,
    required String type,
    required bool active,
    required num crewCapacity,
    required num sidewallAngleDeg,
    required num orbitDurationYr,
    required num dryMassKg,
    required num dryMassLb,
    required List<Thrusters> thrusters,
    required String wikipedia,
    required String description,
    required String id,
  }) {
    _heatShield = heatShield;
    _launchPayloadMass = launchPayloadMass;
    _launchPayloadVol = launchPayloadVol;
    _returnPayloadMass = returnPayloadMass;
    _returnPayloadVol = returnPayloadVol;
    _pressurizedCapsule = pressurizedCapsule;
    _trunk = trunk;
    _heightWTrunk = heightWTrunk;
    _diameter = diameter;
    _firstFlight = firstFlight;
    _flickrImages = flickrImages;
    _name = name;
    _type = type;
    _active = active;
    _crewCapacity = crewCapacity;
    _sidewallAngleDeg = sidewallAngleDeg;
    _orbitDurationYr = orbitDurationYr;
    _dryMassKg = dryMassKg;
    _dryMassLb = dryMassLb;
    _thrusters = thrusters;
    _wikipedia = wikipedia;
    _description = description;
    _id = id;
  }

  HeatShield get heatShield => _heatShield;
  set heatShield(HeatShield heatShield) => _heatShield = heatShield;
  LaunchPayloadMass get launchPayloadMass => _launchPayloadMass;
  set launchPayloadMass(LaunchPayloadMass launchPayloadMass) =>
      _launchPayloadMass = launchPayloadMass;
  LaunchPayloadVol get launchPayloadVol => _launchPayloadVol;
  set launchPayloadVol(LaunchPayloadVol launchPayloadVol) =>
      _launchPayloadVol = launchPayloadVol;
  LaunchPayloadMass get returnPayloadMass => _returnPayloadMass;
  set returnPayloadMass(LaunchPayloadMass returnPayloadMass) =>
      _returnPayloadMass = returnPayloadMass;
  LaunchPayloadVol get returnPayloadVol => _returnPayloadVol;
  set returnPayloadVol(LaunchPayloadVol returnPayloadVol) =>
      _returnPayloadVol = returnPayloadVol;
  PressurizedCapsule get pressurizedCapsule => _pressurizedCapsule;
  set pressurizedCapsule(PressurizedCapsule pressurizedCapsule) =>
      _pressurizedCapsule = pressurizedCapsule;
  Trunk get trunk => _trunk;
  set trunk(Trunk trunk) => _trunk = trunk;
  HeightWTrunk get heightWTrunk => _heightWTrunk;
  set heightWTrunk(HeightWTrunk heightWTrunk) => _heightWTrunk = heightWTrunk;
  Diameter get diameter => _diameter;
  set diameter(Diameter diameter) => _diameter = diameter;
  String get firstFlight => _firstFlight;
  set firstFlight(String firstFlight) => _firstFlight = firstFlight;
  List<String> get flickrImages => _flickrImages;
  set flickrImages(List<String> flickrImages) => _flickrImages = flickrImages;
  String get name => _name;
  set name(String name) => _name = name;
  String get type => _type;
  set type(String type) => _type = type;
  bool get active => _active;
  set active(bool active) => _active = active;
  num get crewCapacity => _crewCapacity;
  set crewCapacity(num crewCapacity) => _crewCapacity = crewCapacity;
  num get sidewallAngleDeg => _sidewallAngleDeg;
  set sidewallAngleDeg(num sidewallAngleDeg) =>
      _sidewallAngleDeg = sidewallAngleDeg;
  num get orbitDurationYr => _orbitDurationYr;
  set orbitDurationYr(num orbitDurationYr) =>
      _orbitDurationYr = orbitDurationYr;
  num get dryMassKg => _dryMassKg;
  set dryMassKg(num dryMassKg) => _dryMassKg = dryMassKg;
  num get dryMassLb => _dryMassLb;
  set dryMassLb(num dryMassLb) => _dryMassLb = dryMassLb;
  List<Thrusters> get thrusters => _thrusters;
  set thrusters(List<Thrusters> thrusters) => _thrusters = thrusters;
  String get wikipedia => _wikipedia;
  set wikipedia(String wikipedia) => _wikipedia = wikipedia;
  String get description => _description;
  set description(String description) => _description = description;
  String get id => _id;
  set id(String id) => _id = id;

  Dragon.fromJson(Map<String, dynamic> json) {
    _heatShield = (json['heat_shield'] != null)
        ? HeatShield.fromJson(json['heat_shield'])
        : throw ArgumentError('heat_shield cannot be null');

    _launchPayloadMass = (json['launch_payload_mass'] != null)
        ? LaunchPayloadMass.fromJson(json['launch_payload_mass'])
        : throw ArgumentError('launch_payload_mass cannot be null');

    _launchPayloadVol = (json['launch_payload_vol'] != null)
        ? LaunchPayloadVol.fromJson(json['launch_payload_vol'])
        : throw ArgumentError('launch_payload_vol cannot be null');

    _returnPayloadMass = (json['return_payload_mass'] != null)
        ? LaunchPayloadMass.fromJson(json['return_payload_mass'])
        : throw ArgumentError('return_payload_mass cannot be null');

    _returnPayloadVol = (json['return_payload_vol'] != null)
        ? LaunchPayloadVol.fromJson(json['return_payload_vol'])
        : throw ArgumentError('return_payload_vol cannot be null');

    _pressurizedCapsule = (json['pressurized_capsule'] != null)
        ? PressurizedCapsule.fromJson(json['pressurized_capsule'])
        : throw ArgumentError('pressurized_capsule cannot be null');

    _trunk = (json['trunk'] != null)
        ? Trunk.fromJson(json['trunk'])
        : throw ArgumentError('trunk cannot be null');

    _heightWTrunk = (json['height_w_trunk'] != null)
        ? HeightWTrunk.fromJson(json['height_w_trunk'])
        : throw ArgumentError('height_w_trunk cannot be null');

    _diameter = (json['diameter'] != null)
        ? Diameter.fromJson(json['diameter'])
        : throw ArgumentError('diameter cannot be null');

    _firstFlight = json['first_flight'];
    _flickrImages = json['flickr_images'];
    _name = json['name'];
    _type = json['type'];
    _active = json['active'];
    _crewCapacity = json['crew_capacity'];
    _sidewallAngleDeg = json['sidewall_angle_deg'];
    _orbitDurationYr = json['orbit_duration_yr'];
    _dryMassKg = json['dry_mass_kg'];
    _dryMassLb = json['dry_mass_lb'];
    if (json['thrusters'] != null) {
      _thrusters = List<Thrusters>.from(
          json['thrusters'].map((x) => Thrusters.fromJson(x)));
    } else {
      _thrusters = [];
    }
    _wikipedia = json['wikipedia'];
    _description = json['description'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['heat_shield'] = this._heatShield.toJson();
    data['launch_payload_mass'] = this._launchPayloadMass.toJson();
    data['launch_payload_vol'] = this._launchPayloadVol.toJson();
    data['return_payload_mass'] = this._returnPayloadMass.toJson();
    data['return_payload_vol'] = this._returnPayloadVol.toJson();
    data['pressurized_capsule'] = this._pressurizedCapsule.toJson();
    data['trunk'] = this._trunk.toJson();
    data['height_w_trunk'] = this._heightWTrunk.toJson();
    data['diameter'] = this._diameter.toJson();
    data['first_flight'] = this._firstFlight;
    data['flickr_images'] = this._flickrImages;
    data['name'] = this._name;
    data['type'] = this._type;
    data['active'] = this._active;
    data['crew_capacity'] = this._crewCapacity;
    data['sidewall_angle_deg'] = this._sidewallAngleDeg;
    data['orbit_duration_yr'] = this._orbitDurationYr;
    data['dry_mass_kg'] = this._dryMassKg;
    data['dry_mass_lb'] = this._dryMassLb;
    data['thrusters'] = this._thrusters.map((v) => v.toJson()).toList();
    data['wikipedia'] = this._wikipedia;
    data['description'] = this._description;
    data['id'] = this._id;
    return data;
  }
}
