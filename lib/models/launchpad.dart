class Launchpad {
  String _name;
  String _fullName;
  String _locality;
  String _region;
  String _timeZone;
  num _latitude;
  num _longitude;
  num _launchAttempts;
  num _launchSuccesses;
  List<String> _rockets;
  List<String> _launches;
  String _details;
  String _status;
  String _id;

  Launchpad(
      {String name,
      String fullName,
      String locality,
      String region,
      String timezone,
      num latitude,
      num longitude,
      num launchAttempts,
      num launchSuccesses,
      List<String> rockets,
      List<String> launches,
      String details,
      String status,
      String id}) {
    this._name = name;
    this._fullName = fullName;
    this._locality = locality;
    this._region = region;
    this._timeZone = timezone;
    this._latitude = latitude;
    this._longitude = longitude;
    this._launchAttempts = launchAttempts;
    this._launchSuccesses = launchSuccesses;
    this._rockets = rockets;
    this._launches = launches;
    this._details = details;
    this._status = status;
    this._id = id;
  }

  String get name => _name;
  set name(String name) => _name = name;
  String get fullName => _fullName;
  set fullName(String fullName) => _fullName = fullName;
  String get locality => _locality;
  set locality(String locality) => _locality = locality;
  String get region => _region;
  set region(String region) => _region = region;
  String get timezone => _timeZone;
  set timezone(String timezone) => _timeZone = timezone;
  num get latitude => _latitude;
  set latitude(num latitude) => _latitude = latitude;
  num get longitude => _longitude;
  set longitude(num longitude) => _longitude = longitude;
  num get launchAttempts => _launchAttempts;
  set launchAttempts(num launchAttempts) => _launchAttempts = launchAttempts;
  num get launchSuccesses => _launchSuccesses;
  set launchSuccesses(num launchSuccesses) =>
      _launchSuccesses = launchSuccesses;
  List<String> get rockets => _rockets;
  set rockets(List<String> rockets) => _rockets = rockets;
  List<String> get launches => _launches;
  set launches(List<String> launches) => _launches = launches;
  String get details => _details;
  set details(String details) => _details = details;
  String get status => _status;
  set status(String status) => _status = status;
  String get id => _id;
  set id(String id) => _id = id;

  Launchpad.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    fullName = json['full_name'];
    locality = json['locality'];
    region = json['region'];
    timezone = json['timezone'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    launchAttempts = json['launch_attempts'];
    launchSuccesses = json['launch_successes'];
    rockets = json['rockets']?.cast<String>();
    launches = json['launches']?.cast<String>();
    details = json['details'];
    status = json['status'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = name;
    data['full_name'] = fullName;
    data['locality'] = locality;
    data['region'] = region;
    data['timezone'] = timezone;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['launch_attempts'] = launchAttempts;
    data['launch_successes'] = launchSuccesses;
    data['rockets'] = rockets;
    data['launches'] = launches;
    data['details'] = details;
    data['status'] = status;
    data['id'] = id;
    return data;
  }
}
