class Ship {
  late String _legacyId;
  late String _model;
  late String _type;
  late List<String> _roles;
  late num _imo;
  late num _mmsi;
  late num _abs;
  late num _shipClass;
  late num _massKg;
  late num _massLbs;
  late num _yearBuilt;
  late String _homePort;
  late String _status;
  late num _speedKn;
  late num _courseDeg;
  late num _latitude;
  late num _longitude;
  late String _lastAisUpdate;
  late String _link;
  late String _image;
  late List<String> _launches;
  late String _name;
  late bool _active;
  late String _id;

  Ship({
    required String legacyId,
    required String model,
    required String type,
    required List<String> roles,
    required num imo,
    required num mmsi,
    required num abs,
    required num shipClass,
    required num massKg,
    required num massLbs,
    required num yearBuilt,
    required String homePort,
    required String status,
    required num speedKn,
    required num courseDeg,
    required num latitude,
    required num longitude,
    required String lastAisUpdate,
    required String link,
    required String image,
    required List<String> launches,
    required String name,
    required bool active,
    required String id,
  }) {
    this._legacyId = legacyId;
    this._model = model;
    this._type = type;
    this._roles = roles;
    this._imo = imo;
    this._mmsi = mmsi;
    this._abs = abs;
    this._shipClass = shipClass;
    this._massKg = massKg;
    this._massLbs = massLbs;
    this._yearBuilt = yearBuilt;
    this._homePort = homePort;
    this._status = status;
    this._speedKn = speedKn;
    this._courseDeg = courseDeg;
    this._latitude = latitude;
    this._longitude = longitude;
    this._lastAisUpdate = lastAisUpdate;
    this._link = link;
    this._image = image;
    this._launches = launches;
    this._name = name;
    this._active = active;
    this._id = id;
  }

  String get legacyId => _legacyId;
  set legacyId(String legacyId) => _legacyId = legacyId;
  String get model => _model;
  set model(String model) => _model = model;
  String get type => _type;
  set type(String type) => _type = type;
  List<String> get roles => _roles;
  set roles(List<String> roles) => _roles = roles;
  num get imo => _imo;
  set imo(num imo) => _imo = imo;
  num get mmsi => _mmsi;
  set mmsi(num mmsi) => _mmsi = mmsi;
  num get abs => _abs;
  set abs(num abs) => _abs = abs;
  num get shipClass => _shipClass;
  set shipClass(num shipClass) => _shipClass = shipClass;
  num get massKg => _massKg;
  set massKg(num massKg) => _massKg = massKg;
  num get massLbs => _massLbs;
  set massLbs(num massLbs) => _massLbs = massLbs;
  num get yearBuilt => _yearBuilt;
  set yearBuilt(num yearBuilt) => _yearBuilt = yearBuilt;
  String get homePort => _homePort;
  set homePort(String homePort) => _homePort = homePort;
  String get status => _status;
  set status(String status) => _status = status;
  num get speedKn => _speedKn;
  set speedKn(num speedKn) => _speedKn = speedKn;
  num get courseDeg => _courseDeg;
  set courseDeg(num courseDeg) => _courseDeg = courseDeg;
  num get latitude => _latitude;
  set latitude(num latitude) => _latitude = latitude;
  num get longitude => _longitude;
  set longitude(num longitude) => _longitude = longitude;
  String get lastAisUpdate => _lastAisUpdate;
  set lastAisUpdate(String lastAisUpdate) => _lastAisUpdate = lastAisUpdate;
  String get link => _link;
  set link(String link) => _link = link;
  String get image => _image;
  set image(String image) => _image = image;
  List<String> get launches => _launches;
  set launches(List<String> launches) => _launches = launches;
  String get name => _name;
  set name(String name) => _name = name;
  bool get active => _active;
  set active(bool active) => _active = active;
  String get id => _id;
  set id(String id) => _id = id;

  Ship.fromJson(Map<String, dynamic> json) {
    _legacyId = json['legacy_id'];
    _model = json['model'];
    _type = json['type'];
    _roles = json['roles']?.cast<String>() ?? [];
    _imo = json['imo'];
    _mmsi = json['mmsi'];
    _abs = json['abs'];
    _shipClass = json['class'];
    _massKg = json['mass_kg'];
    _massLbs = json['mass_lbs'];
    _yearBuilt = json['year_built'];
    _homePort = json['home_port'];
    _status = json['status'];
    _speedKn = json['speed_kn'];
    _courseDeg = json['course_deg'];
    _latitude = json['latitude'];
    _longitude = json['longitude'];
    _lastAisUpdate = json['last_ais_update'];
    _link = json['link'];
    _image = json['image'];
    _launches = json['launches']?.cast<String>() ?? [];
    _name = json['name'];
    _active = json['active'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'legacy_id': _legacyId,
      'model': _model,
      'type': _type,
      'roles': _roles,
      'imo': _imo,
      'mmsi': _mmsi,
      'abs': _abs,
      'class': _shipClass,
      'mass_kg': _massKg,
      'mass_lbs': _massLbs,
      'year_built': _yearBuilt,
      'home_port': _homePort,
      'status': _status,
      'speed_kn': _speedKn,
      'course_deg': _courseDeg,
      'latitude': _latitude,
      'longitude': _longitude,
      'last_ais_update': _lastAisUpdate,
      'link': _link,
      'image': _image,
      'launches': _launches,
      'name': _name,
      'active': _active,
      'id': _id,
    };
    return data;
  }
}
