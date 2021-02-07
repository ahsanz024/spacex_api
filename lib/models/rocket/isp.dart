class Isp {
  num _seaLevel;
  num _vacuum;

  Isp({num seaLevel, num vacuum}) {
    this._seaLevel = seaLevel;
    this._vacuum = vacuum;
  }

  num get seaLevel => _seaLevel;
  set seaLevel(num seaLevel) => _seaLevel = seaLevel;
  num get vacuum => _vacuum;
  set vacuum(num vacuum) => _vacuum = vacuum;

  /// Deserialize recieved data
  Isp.fromJson(Map<String, dynamic> json) {
    _seaLevel = json['sea_level'];
    _vacuum = json['vacuum'];
  }

  /// Serializer
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sea_level'] = this._seaLevel;
    data['vacuum'] = this._vacuum;
    return data;
  }
}
