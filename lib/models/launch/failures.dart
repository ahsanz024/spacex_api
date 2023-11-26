class Failures {
  late num _time;
  late num _altitude;
  late String _reason;

  Failures({required num time, required num altitude, required String reason}) {
    _time = time;
    _altitude = altitude;
    _reason = reason;
  }

  num get time => _time;
  set time(num time) => _time = time;
  num get altitude => _altitude;
  set altitude(num altitude) => _altitude = altitude;
  String get reason => _reason;
  set reason(String reason) => _reason = reason;

  Failures.fromJson(Map<String, dynamic> json) {
    _time = json['time'];
    _altitude = json['altitude'];
    _reason = json['reason'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time'] = this._time;
    data['altitude'] = this._altitude;
    data['reason'] = this._reason;
    return data;
  }
}
