import 'diameter.dart';
import 'head_shield.dart';
import 'height_trunk.dart';
import 'launch_payload_mass.dart';
import 'launch_payload_vol.dart';
import 'pressurized_capsule.dart';
import 'thrusters.dart';
import 'trunk.dart';

class Dragon {
  HeatShield _heatShield;
  LaunchPayloadMass _launchPayloadMass;
  LaunchPayloadVol _launchPayloadVol;
  LaunchPayloadMass _returnPayloadMass;
  LaunchPayloadVol _returnPayloadVol;
  PressurizedCapsule _pressurizedCapsule;
  Trunk _trunk;
  HeightWTrunk _heightWTrunk;
  Diameter _diameter;
  String _firstFlight;
  List _flickrImages;
  String _name;
  String _type;
  bool _active;
  num _crewCapacity;
  num _sidewallAngleDeg;
  num _orbitDurationYr;
  num _dryMassKg;
  num _dryMassLb;
  List<Thrusters> _thrusters;
  String _wikipedia;
  String _description;
  String _id;

  Dragon(
      {HeatShield heatShield,
      LaunchPayloadMass launchPayloadMass,
      LaunchPayloadVol launchPayloadVol,
      LaunchPayloadMass returnPayloadMass,
      LaunchPayloadVol returnPayloadVol,
      PressurizedCapsule pressurizedCapsule,
      Trunk trunk,
      HeightWTrunk heightWTrunk,
      Diameter diameter,
      String firstFlight,
      List<String> flickrImages,
      String name,
      String type,
      bool active,
      num crewCapacity,
      num sidewallAngleDeg,
      num orbitDurationYr,
      num dryMassKg,
      num dryMassLb,
      List<Thrusters> thrusters,
      String wikipedia,
      String description,
      String id}) {
    this._heatShield = heatShield;
    this._launchPayloadMass = launchPayloadMass;
    this._launchPayloadVol = launchPayloadVol;
    this._returnPayloadMass = returnPayloadMass;
    this._returnPayloadVol = returnPayloadVol;
    this._pressurizedCapsule = pressurizedCapsule;
    this._trunk = trunk;
    this._heightWTrunk = heightWTrunk;
    this._diameter = diameter;
    this._firstFlight = firstFlight;
    this._flickrImages = flickrImages;
    this._name = name;
    this._type = type;
    this._active = active;
    this._crewCapacity = crewCapacity;
    this._sidewallAngleDeg = sidewallAngleDeg;
    this._orbitDurationYr = orbitDurationYr;
    this._dryMassKg = dryMassKg;
    this._dryMassLb = dryMassLb;
    this._thrusters = thrusters;
    this._wikipedia = wikipedia;
    this._description = description;
    this._id = id;
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

  /// Deserialize recieved data
  Dragon.fromJson(Map<String, dynamic> json) {
    _heatShield = json['heat_shield'] != null
        ? new HeatShield.fromJson(json['heat_shield'])
        : null;
    _launchPayloadMass = json['launch_payload_mass'] != null
        ? new LaunchPayloadMass.fromJson(json['launch_payload_mass'])
        : null;
    _launchPayloadVol = json['launch_payload_vol'] != null
        ? new LaunchPayloadVol.fromJson(json['launch_payload_vol'])
        : null;
    _returnPayloadMass = json['return_payload_mass'] != null
        ? new LaunchPayloadMass.fromJson(json['return_payload_mass'])
        : null;
    _returnPayloadVol = json['return_payload_vol'] != null
        ? new LaunchPayloadVol.fromJson(json['return_payload_vol'])
        : null;
    _pressurizedCapsule = json['pressurized_capsule'] != null
        ? new PressurizedCapsule.fromJson(json['pressurized_capsule'])
        : null;
    _trunk = json['trunk'] != null ? new Trunk.fromJson(json['trunk']) : null;
    _heightWTrunk = json['height_w_trunk'] != null
        ? new HeightWTrunk.fromJson(json['height_w_trunk'])
        : null;
    _diameter = json['diameter'] != null
        ? new Diameter.fromJson(json['diameter'])
        : null;
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
      _thrusters = new List<Thrusters>();
      json['thrusters'].forEach((v) {
        _thrusters.add(new Thrusters.fromJson(v));
      });
    }
    _wikipedia = json['wikipedia'];
    _description = json['description'];
    _id = json['id'];
  }

  /// Serializer
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._heatShield != null) {
      data['heat_shield'] = this._heatShield.toJson();
    }
    if (this._launchPayloadMass != null) {
      data['launch_payload_mass'] = this._launchPayloadMass.toJson();
    }
    if (this._launchPayloadVol != null) {
      data['launch_payload_vol'] = this._launchPayloadVol.toJson();
    }
    if (this._returnPayloadMass != null) {
      data['return_payload_mass'] = this._returnPayloadMass.toJson();
    }
    if (this._returnPayloadVol != null) {
      data['return_payload_vol'] = this._returnPayloadVol.toJson();
    }
    if (this._pressurizedCapsule != null) {
      data['pressurized_capsule'] = this._pressurizedCapsule.toJson();
    }
    if (this._trunk != null) {
      data['trunk'] = this._trunk.toJson();
    }
    if (this._heightWTrunk != null) {
      data['height_w_trunk'] = this._heightWTrunk.toJson();
    }
    if (this._diameter != null) {
      data['diameter'] = this._diameter.toJson();
    }
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
    if (this._thrusters != null) {
      data['thrusters'] = this._thrusters.map((v) => v.toJson()).toList();
    }
    data['wikipedia'] = this._wikipedia;
    data['description'] = this._description;
    data['id'] = this._id;
    return data;
  }
}
