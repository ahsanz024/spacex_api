class Capsule {
  num _reuseCount;
  num _waterLandings;
  num _landLandings;
  String _lastUpdate;
  List<String> _launches;
  String _serial;
  String _status;
  String _type;
  String _id;

  Capsule(
      {num reuseCount,
      num waterLandings,
      num landLandings,
      String lastUpdate,
      List<String> launches,
      String serial,
      String status,
      String type,
      String id}) {
    this._reuseCount = reuseCount;
    this._waterLandings = waterLandings;
    this._landLandings = landLandings;
    this._lastUpdate = lastUpdate;
    this._launches = launches;
    this._serial = serial;
    this._status = status;
    this._type = type;
    this._id = id;
  }

  num get reuseCount => _reuseCount;
  set reuseCount(num reuseCount) => _reuseCount = reuseCount;
  num get waterLandings => _waterLandings;
  set waterLandings(num waterLandings) => _waterLandings = waterLandings;
  num get landLandings => _landLandings;
  set landLandings(num landLandings) => _landLandings = landLandings;
  String get lastUpdate => _lastUpdate;
  set lastUpdate(String lastUpdate) => _lastUpdate = lastUpdate;
  List<String> get launches => _launches;
  set launches(List<String> launches) => _launches = launches;
  String get serial => _serial;
  set serial(String serial) => _serial = serial;
  String get status => _status;
  set status(String status) => _status = status;
  String get type => _type;
  set type(String type) => _type = type;
  String get id => _id;
  set id(String id) => _id = id;

  Capsule.fromJson(Map<String, dynamic> json) {
    _reuseCount = json['reuse_count'];
    _waterLandings = json['water_landings'];
    _landLandings = json['land_landings'];
    _lastUpdate = json['last_update'];
    _launches = json['launches']?.cast<String>();
    _serial = json['serial'];
    _status = json['status'];
    _type = json['type'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['reuse_count'] = this._reuseCount;
    data['water_landings'] = this._waterLandings;
    data['land_landings'] = this._landLandings;
    data['last_update'] = this._lastUpdate;
    data['launches'] = this._launches;
    data['serial'] = this._serial;
    data['status'] = this._status;
    data['type'] = this._type;
    data['id'] = this._id;
    return data;
  }
}
