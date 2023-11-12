import 'space_track.dart';

class Starlink {
  late SpaceTrack _spaceTrack;
  late String _version;
  late String _launch;
  late num _longitude;
  late num _latitude;
  late num _heightKm;
  late num _velocityKms;
  late String _id;

  Starlink({
    required SpaceTrack spaceTrack,
    required String version,
    required String launch,
    required num longitude,
    required num latitude,
    required num heightKm,
    required num velocityKms,
    required String id,
  }) {
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
        ? SpaceTrack.fromJson(json['spaceTrack'])
        : SpaceTrack(); // You can provide a default SpaceTrack if null.
    _version = json['version'];
    _launch = json['launch'];
    _longitude = json['longitude'];
    _latitude = json['latitude'];
    _heightKm = json['height_km'];
    _velocityKms = json['velocity_kms'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['spaceTrack'] = _spaceTrack.toJson();
    data['version'] = _version;
    data['launch'] = _launch;
    data['longitude'] = _longitude;
    data['latitude'] = _latitude;
    data['height_km'] = _heightKm;
    data['velocity_kms'] = _velocityKms;
    data['id'] = _id;
    return data;
  }
}
