class HeightWTrunk {
  num _meters;
  num _feet;

  HeightWTrunk({
    required num meters,
    required num feet,
  })  : _meters = meters,
        _feet = feet;

  num get meters => _meters;
  set meters(num meters) => _meters = meters;
  num get feet => _feet;
  set feet(num feet) => _feet = feet;

  HeightWTrunk.fromJson(Map<String, dynamic> json)
      : _meters = json['meters'],
        _feet = json['feet'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['meters'] = this._meters;
    data['feet'] = this._feet;
    return data;
  }
}
