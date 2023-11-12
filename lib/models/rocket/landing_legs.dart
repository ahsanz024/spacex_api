class LandingLegs {
  late num _number;
  late String _material;

  LandingLegs({
    required num number,
    required String material,
  }) {
    _number = number;
    _material = material;
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['number'] = _number;
    data['material'] = _material;
    return data;
  }
}
