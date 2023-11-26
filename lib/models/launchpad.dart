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

  Launchpad({
    required String name,
    required String fullName,
    required String locality,
    required String region,
    required String timezone,
    required num latitude,
    required num longitude,
    required num launchAttempts,
    required num launchSuccesses,
    required List<String> rockets,
    required List<String> launches,
    required String details,
    required String status,
    required String id,
  })  : _name = name,
        _fullName = fullName,
        _locality = locality,
        _region = region,
        _timeZone = timezone,
        _latitude = latitude,
        _longitude = longitude,
        _launchAttempts = launchAttempts,
        _launchSuccesses = launchSuccesses,
        _rockets = rockets,
        _launches = launches,
        _details = details,
        _status = status,
        _id = id;

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

  Launchpad.fromJson(Map<String, dynamic> json)
      : _name = json['name'] as String,
        _fullName = json['full_name'] as String,
        _locality = json['locality'] as String,
        _region = json['region'] as String,
        _timeZone = json['timezone'] as String,
        _latitude = json['latitude'] as num,
        _longitude = json['longitude'] as num,
        _launchAttempts = json['launch_attempts'] as num,
        _launchSuccesses = json['launch_successes'] as num,
        _rockets = List<String>.from(json['rockets']),
        _launches = List<String>.from(json['launches']),
        _details = json['details'] as String,
        _status = json['status'] as String,
        _id = json['id'] as String;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    data['full_name'] = this._fullName;
    data['locality'] = this._locality;
    data['region'] = this._region;
    data['timezone'] = this._timeZone;
    data['latitude'] = this._latitude;
    data['longitude'] = this._longitude;
    data['launch_attempts'] = this._launchAttempts;
    data['launch_successes'] = this._launchSuccesses;
    data['rockets'] = this._rockets;
    data['launches'] = this._launches;
    data['details'] = this._details;
    data['status'] = this._status;
    data['id'] = this._id;
    return data;
  }
}
