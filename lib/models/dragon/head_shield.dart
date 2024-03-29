class HeatShield {
  String _material;
  num _sizeMeters;
  num _tempDegrees;
  String _devPartner;

  HeatShield({
    required String material,
    required num sizeMeters,
    required num tempDegrees,
    required String devPartner,
  })  : _material = material,
        _sizeMeters = sizeMeters,
        _tempDegrees = tempDegrees,
        _devPartner = devPartner;

  String get material => _material;
  set material(String material) => _material = material;
  num get sizeMeters => _sizeMeters;
  set sizeMeters(num sizeMeters) => _sizeMeters = sizeMeters;
  num get tempDegrees => _tempDegrees;
  set tempDegrees(num tempDegrees) => _tempDegrees = tempDegrees;
  String get devPartner => _devPartner;
  set devPartner(String devPartner) => _devPartner = devPartner;

  HeatShield.fromJson(Map<String, dynamic> json)
      : _material = json['material'],
        _sizeMeters = json['size_meters'],
        _tempDegrees = json['temp_degrees'],
        _devPartner = json['dev_partner'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['material'] = this._material;
    data['size_meters'] = this._sizeMeters;
    data['temp_degrees'] = this._tempDegrees;
    data['dev_partner'] = this._devPartner;
    return data;
  }
}
