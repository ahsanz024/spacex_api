import 'space_track.dart';

class Starlink {
  SpaceTrack _spaceTrack;
  String _version;
  String _launch;
  num _longitude;
  num _latitude;
  num _heightKm;
  num _velocityKms;
  String _id;

  Starlink(
      {SpaceTrack spaceTrack,
      String version,
      String launch,
      num longitude,
      num latitude,
      num heightKm,
      num velocityKms,
      String id}) {
    this._spaceTrack = spaceTrack;
    this._version = version;
    this._launch = launch;
    this._longitude = longitude;
    this._latitude = latitude;
    this._heightKm = heightKm;
    this._velocityKms = velocityKms;
    this._id = id;
  }

  SpaceTrack get spaceTrack => _spaceTrack;
  set spaceTrack(SpaceTrack spaceTrack) => _spaceTrack = spaceTrack;
  String get version => _version;
  set version(String version) => _version = version;
  String get launch => _launch;
  set launch(String launch) => _launch = launch;
  num get longitude => _longitude;
  set longitude(num longitude) => _longitude = longitude;
  num get latitude => _latitude;
  set latitude(num latitude) => _latitude = latitude;
  num get heightKm => _heightKm;
  set heightKm(num heightKm) => _heightKm = heightKm;
  num get velocityKms => _velocityKms;
  set velocityKms(num velocityKms) => _velocityKms = velocityKms;
  String get id => _id;
  set id(String id) => _id = id;

  Starlink.fromJson(Map<String, dynamic> json) {
    _spaceTrack = json['spaceTrack'] != null
        ? new SpaceTrack.fromJson(json['spaceTrack'])
        : null;
    _version = json['version'];
    _launch = json['launch'];
    _longitude = json['longitude'];
    _latitude = json['latitude'];
    _heightKm = json['height_km'];
    _velocityKms = json['velocity_kms'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['spaceTrack'] = this._spaceTrack.toJson();
      data['version'] = this._version;
    data['launch'] = this._launch;
    data['longitude'] = this._longitude;
    data['latitude'] = this._latitude;
    data['height_km'] = this._heightKm;
    data['velocity_kms'] = this._velocityKms;
    data['id'] = this._id;
    return data;
  }
}
