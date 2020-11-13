class LaunchPayloadVol {
  num _cubicMeters;
  num _cubicFeet;

  LaunchPayloadVol({num cubicMeters, num cubicFeet}) {
    this._cubicMeters = cubicMeters;
    this._cubicFeet = cubicFeet;
  }

  num get cubicMeters => _cubicMeters;
  set cubicMeters(num cubicMeters) => _cubicMeters = cubicMeters;
  num get cubicFeet => _cubicFeet;
  set cubicFeet(num cubicFeet) => _cubicFeet = cubicFeet;

  LaunchPayloadVol.fromJson(Map<String, dynamic> json) {
    _cubicMeters = json['cubic_meters'];
    _cubicFeet = json['cubic_feet'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cubic_meters'] = this._cubicMeters;
    data['cubic_feet'] = this._cubicFeet;
    return data;
  }
}
