class Landpad {
  String _name;
  String _fullName;
  String _type;
  String _locality;
  String _region;
  num _latitude;
  num _longitude;
  num _landingAttempts;
  num _landingSuccesses;
  String _wikipedia;
  String _details;
  List<String> _launches;
  String _status;
  String _id;

  Landpad({
    String name,
    String fullName,
    String type,
    String locality,
    String region,
    num latitude,
    num longitude,
    num landingAttempts,
    num landingSuccesses,
    String wikipedia,
    String details,
    List<String> launches,
    String status,
    String id,
  }) {
    this._name = name;
    this._fullName = fullName;
    this._type = type;
    this._locality = locality;
    this._region = region;
    this._latitude = latitude;
    this._longitude = longitude;
    this._landingAttempts = landingAttempts;
    this._landingSuccesses = landingSuccesses;
    this._wikipedia = wikipedia;
    this._details = details;
    this._launches = launches;
    this._status = status;
    this._id = id;
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
    _launches = json['launches']?.cast<String>();
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
