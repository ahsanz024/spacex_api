class LandingLegs {
  num _number;
  String _material;

  LandingLegs({num number, String material}) {
    this._number = number;
    this._material = material;
  }

  num get number => _number;
  set number(num number) => _number = number;
  String get material => _material;
  set material(String material) => _material = material;

  LandingLegs.fromJson(Map<String, dynamic> json) {
    _number = json['number'];
    _material = json['material'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['number'] = this._number;
    data['material'] = this._material;
    return data;
  }
}
