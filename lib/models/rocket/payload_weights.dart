class PayloadWeights {
  String _id;
  String _name;
  num _kg;
  num _lb;

  PayloadWeights({String id, String name, num kg, num lb}) {
    this._id = id;
    this._name = name;
    this._kg = kg;
    this._lb = lb;
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['kg'] = this._kg;
    data['lb'] = this._lb;
    return data;
  }
}
