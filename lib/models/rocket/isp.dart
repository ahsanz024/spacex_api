class Isp {
  late num _seaLevel;
  late num _vacuum;

  Isp({num? seaLevel, num? vacuum}) {
    _seaLevel = seaLevel ?? 0; // Default to 0 if seaLevel is null
    _vacuum = vacuum ?? 0; // Default to 0 if vacuum is null
  }

  num get seaLevel => _seaLevel;
  set seaLevel(num seaLevel) => _seaLevel = seaLevel;
  num get vacuum => _vacuum;
  set vacuum(num vacuum) => _vacuum = vacuum;

  Isp.fromJson(Map<String, dynamic> json) {
    _seaLevel = json['sea_level'] ?? 0; // Default to 0 if seaLevel is missing
    _vacuum = json['vacuum'] ?? 0; // Default to 0 if vacuum is missing
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['sea_level'] = _seaLevel;
    data['vacuum'] = _vacuum;
    return data;
  }
}
