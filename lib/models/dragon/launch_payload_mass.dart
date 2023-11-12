class LaunchPayloadMass {
  num _kg;
  num _lb;

  LaunchPayloadMass({
    required num kg,
    required num lb,
  })  : _kg = kg,
        _lb = lb;

  num get kg => _kg;
  set kg(num kg) => _kg = kg;
  num get lb => _lb;
  set lb(num lb) => _lb = lb;

  LaunchPayloadMass.fromJson(Map<String, dynamic> json)
      : _kg = json['kg'],
        _lb = json['lb'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kg'] = this._kg;
    data['lb'] = this._lb;
    return data;
  }
}
