class Landpad {
  late String _name;
  late String _fullName;
  late String _type;
  late String _locality;
  late String _region;
  late num _latitude;
  late num _longitude;
  late num _landingAttempts;
  late num _landingSuccesses;
  late String _wikipedia;
  late String _details;
  late List<String> _launches;
  late String _status;
  late String _id;

  Landpad({
    required String name,
    required String fullName,
    required String type,
    required String locality,
    required String region,
    required num latitude,
    required num longitude,
    required num landingAttempts,
    required num landingSuccesses,
    required String wikipedia,
    required String details,
    required List<String> launches,
    required String status,
    required String id,
  }) {
    _name = name;
    _fullName = fullName;
    _type = type;
    _locality = locality;
    _region = region;
    _latitude = latitude;
    _longitude = longitude;
    _landingAttempts = landingAttempts;
    _landingSuccesses = landingSuccesses;
    _wikipedia = wikipedia;
    _details = details;
    _launches = launches;
    _status = status;
    _id = id;
  }

  String get name => _name;
  set name(String name) => _name = name;
  String get fullName => _fullName;
  set fullName(String fullName) => _fullName = fullName;
  String get type => _type;
  set type(String type) => _type = type;
  String get locality => _locality;
  set locality(String locality) => _locality = locality;
  String get region => _region;
  set region(String region) => _region = region;
  num get latitude => _latitude;
  set latitude(num latitude) => _latitude = latitude;
  num get longitude => _longitude;
  set longitude(num longitude) => _longitude = longitude;
  num get landingAttempts => _landingAttempts;
  set landingAttempts(num landingAttempts) =>
      _landingAttempts = landingAttempts;
  num get landingSuccesses => _landingSuccesses;
  set landingSuccesses(num landingSuccesses) =>
      _landingSuccesses = landingSuccesses;
  String get wikipedia => _wikipedia;
  set wikipedia(String wikipedia) => _wikipedia = wikipedia;
  String get details => _details;
  set details(String details) => _details = details;
  List<String> get launches => _launches;
  set launches(List<String> launches) => _launches = launches;
  String get status => _status;
  set status(String status) => _status = status;
  String get id => _id;
  set id(String id) => _id = id;

  Landpad.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _fullName = json['full_name'];
    _type = json['type'];
    _locality = json['locality'];
    _region = json['region'];
    _latitude = json['latitude'];
    _longitude = json['longitude'];
    _landingAttempts = json['landing_attempts'];
    _landingSuccesses = json['landing_successes'];
    _wikipedia = json['wikipedia'];
    _details = json['details'];
    _launches = List<String>.from(json['launches'] ?? []);
    _status = json['status'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    data['full_name'] = this._fullName;
    data['type'] = this._type;
    data['locality'] = this._locality;
    data['region'] = this._region;
    data['latitude'] = this._latitude;
    data['longitude'] = this._longitude;
    data['landing_attempts'] = this._landingAttempts;
    data['landing_successes'] = this._landingSuccesses;
    data['wikipedia'] = this._wikipedia;
    data['details'] = this._details;
    data['launches'] = this._launches;
    data['status'] = this._status;
    data['id'] = this._id;
    return data;
  }
}
