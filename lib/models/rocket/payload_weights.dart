class PayloadWeights {
  late String _id;
  late String _name;
  late num _kg;
  late num _lb;

  PayloadWeights({
    required String id,
    required String name,
    required num kg,
    required num lb,
  }) {
    _id = id;
    _name = name;
    _kg = kg;
    _lb = lb;
  }

  String get id => _id;
  set id(String id) => _id = id;

  String get name => _name;
  set name(String name) => _name = name;

  num get kg => _kg;
  set kg(num kg) => _kg = kg;

  num get lb => _lb;
  set lb(num lb) => _lb = lb;

  PayloadWeights.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _kg = json['kg'];
    _lb = json['lb'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = _id;
    data['name'] = _name;
    data['kg'] = _kg;
    data['lb'] = _lb;
    return data;
  }
}
