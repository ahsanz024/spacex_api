import 'diameter.dart';
import 'engines.dart';
import 'first_stage.dart';
import 'landing_legs.dart';
import 'mass.dart';
import 'payload_weights.dart';
import 'second_stage.dart';

class Rocket {
  Diameter _height;
  Diameter _diameter;
  Mass _mass;
  FirstStage _firstStage;
  SecondStage _secondStage;
  Engines _engines;
  LandingLegs _landingLegs;
  List<PayloadWeights> _payloadWeights;
  List<String> _flickrImages;
  String _name;
  String _type;
  bool _active;
  num _stages;
  num _boosters;
  num _costPerLaunch;
  num _successRatePct;
  String _firstFlight;
  String _country;
  String _company;
  String _wikipedia;
  String _description;
  String _id;

  Rocket(
      {Diameter height,
      Diameter diameter,
      Mass mass,
      FirstStage firstStage,
      SecondStage secondStage,
      Engines engines,
      LandingLegs landingLegs,
      List<PayloadWeights> payloadWeights,
      List<String> flickrImages,
      String name,
      String type,
      bool active,
      num stages,
      num boosters,
      num costPerLaunch,
      num successRatePct,
      String firstFlight,
      String country,
      String company,
      String wikipedia,
      String description,
      String id}) {
    this._height = height;
    this._diameter = diameter;
    this._mass = mass;
    this._firstStage = firstStage;
    this._secondStage = secondStage;
    this._engines = engines;
    this._landingLegs = landingLegs;
    this._payloadWeights = payloadWeights;
    this._flickrImages = flickrImages;
    this._name = name;
    this._type = type;
    this._active = active;
    this._stages = stages;
    this._boosters = boosters;
    this._costPerLaunch = costPerLaunch;
    this._successRatePct = successRatePct;
    this._firstFlight = firstFlight;
    this._country = country;
    this._company = company;
    this._wikipedia = wikipedia;
    this._description = description;
    this._id = id;
  }

  Diameter get height => _height;
  set height(Diameter height) => _height = height;
  Diameter get diameter => _diameter;
  set diameter(Diameter diameter) => _diameter = diameter;
  Mass get mass => _mass;
  set mass(Mass mass) => _mass = mass;
  FirstStage get firstStage => _firstStage;
  set firstStage(FirstStage firstStage) => _firstStage = firstStage;
  SecondStage get secondStage => _secondStage;
  set secondStage(SecondStage secondStage) => _secondStage = secondStage;
  Engines get engines => _engines;
  set engines(Engines engines) => _engines = engines;
  LandingLegs get landingLegs => _landingLegs;
  set landingLegs(LandingLegs landingLegs) => _landingLegs = landingLegs;
  List<PayloadWeights> get payloadWeights => _payloadWeights;
  set payloadWeights(List<PayloadWeights> payloadWeights) =>
      _payloadWeights = payloadWeights;
  List<String> get flickrImages => _flickrImages;
  set flickrImages(List<String> flickrImages) => _flickrImages = flickrImages;
  String get name => _name;
  set name(String name) => _name = name;
  String get type => _type;
  set type(String type) => _type = type;
  bool get active => _active;
  set active(bool active) => _active = active;
  num get stages => _stages;
  set stages(num stages) => _stages = stages;
  num get boosters => _boosters;
  set boosters(num boosters) => _boosters = boosters;
  num get costPerLaunch => _costPerLaunch;
  set costPerLaunch(num costPerLaunch) => _costPerLaunch = costPerLaunch;
  num get successRatePct => _successRatePct;
  set successRatePct(num successRatePct) => _successRatePct = successRatePct;
  String get firstFlight => _firstFlight;
  set firstFlight(String firstFlight) => _firstFlight = firstFlight;
  String get country => _country;
  set country(String country) => _country = country;
  String get company => _company;
  set company(String company) => _company = company;
  String get wikipedia => _wikipedia;
  set wikipedia(String wikipedia) => _wikipedia = wikipedia;
  String get description => _description;
  set description(String description) => _description = description;
  String get id => _id;
  set id(String id) => _id = id;

  Rocket.fromJson(Map<String, dynamic> json) {
    _height =
        json['height'] != null ? new Diameter.fromJson(json['height']) : null;
    _diameter = json['diameter'] != null
        ? new Diameter.fromJson(json['diameter'])
        : null;
    _mass = json['mass'] != null ? new Mass.fromJson(json['mass']) : null;
    _firstStage = json['first_stage'] != null
        ? new FirstStage.fromJson(json['first_stage'])
        : null;
    _secondStage = json['second_stage'] != null
        ? new SecondStage.fromJson(json['second_stage'])
        : null;
    _engines =
        json['engines'] != null ? new Engines.fromJson(json['engines']) : null;
    _landingLegs = json['landing_legs'] != null
        ? new LandingLegs.fromJson(json['landing_legs'])
        : null;
    if (json['payload_weights'] != null) {
      _payloadWeights = new List<PayloadWeights>();
      json['payload_weights'].forEach((v) {
        _payloadWeights.add(new PayloadWeights.fromJson(v));
      });
    }
    _flickrImages = json['flickr_images']?.cast<String>();
    _name = json['name'];
    _type = json['type'];
    _active = json['active'];
    _stages = json['stages'];
    _boosters = json['boosters'];
    _costPerLaunch = json['cost_per_launch'];
    _successRatePct = json['success_rate_pct'];
    _firstFlight = json['first_flight'];
    _country = json['country'];
    _company = json['company'];
    _wikipedia = json['wikipedia'];
    _description = json['description'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._height != null) {
      data['height'] = this._height.toJson();
    }
    if (this._diameter != null) {
      data['diameter'] = this._diameter.toJson();
    }
    if (this._mass != null) {
      data['mass'] = this._mass.toJson();
    }
    if (this._firstStage != null) {
      data['first_stage'] = this._firstStage.toJson();
    }
    if (this._secondStage != null) {
      data['second_stage'] = this._secondStage.toJson();
    }
    if (this._engines != null) {
      data['engines'] = this._engines.toJson();
    }
    if (this._landingLegs != null) {
      data['landing_legs'] = this._landingLegs.toJson();
    }
    if (this._payloadWeights != null) {
      data['payload_weights'] =
          this._payloadWeights.map((v) => v.toJson()).toList();
    }
    data['flickr_images'] = this._flickrImages;
    data['name'] = this._name;
    data['type'] = this._type;
    data['active'] = this._active;
    data['stages'] = this._stages;
    data['boosters'] = this._boosters;
    data['cost_per_launch'] = this._costPerLaunch;
    data['success_rate_pct'] = this._successRatePct;
    data['first_flight'] = this._firstFlight;
    data['country'] = this._country;
    data['company'] = this._company;
    data['wikipedia'] = this._wikipedia;
    data['description'] = this._description;
    data['id'] = this._id;
    return data;
  }
}
