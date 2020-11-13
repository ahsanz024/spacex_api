class Diameter {
  num _meters;
  num _feet;

  Diameter({num meters, num feet}) {
    this._meters = meters;
    this._feet = feet;
  }

  num get meters => _meters;
  set meters(num meters) => _meters = meters;
  num get feet => _feet;
  set feet(num feet) => _feet = feet;

  Diameter.fromJson(Map<String, dynamic> json) {
    _meters = json['meters'];
    _feet = json['feet'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['meters'] = this._meters;
    data['feet'] = this._feet;
    return data;
  }
}
