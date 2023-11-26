class Mass {
  late num _kg;
  late num _lb;

  Mass({
    required num kg,
    required num lb,
  }) {
    _kg = kg;
    _lb = lb;
  }

  num get kg => _kg;
  set kg(num kg) => _kg = kg;

  num get lb => _lb;
  set lb(num lb) => _lb = lb;

  Mass.fromJson(Map<String, dynamic> json) {
    _kg = json['kg'];
    _lb = json['lb'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['kg'] = _kg;
    data['lb'] = _lb;
    return data;
  }
}
