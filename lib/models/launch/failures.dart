class Failures {
  num _time;
  num _altitude;
  String _reason;

  Failures({num time, num altitude, String reason}) {
    this._time = time;
    this._altitude = altitude;
    this._reason = reason;
  }

  num get time => _time;
  set time(num time) => _time = time;
  num get altitude => _altitude;
  set altitude(num altitude) => _altitude = altitude;
  String get reason => _reason;
  set reason(String reason) => _reason = reason;

  /// Deserialize recieved data
  Failures.fromJson(Map<String, dynamic> json) {
    _time = json['time'];
    _altitude = json['altitude'];
    _reason = json['reason'];
  }

  /// Serializer
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time'] = this._time;
    data['altitude'] = this._altitude;
    data['reason'] = this._reason;
    return data;
  }
}
