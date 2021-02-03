class LaunchPayloadMass {
  num _kg;
  num _lb;

  LaunchPayloadMass({num kg, num lb}) {
    this._kg = kg;
    this._lb = lb;
  }

  num get kg => _kg;
  set kg(num kg) => _kg = kg;
  num get lb => _lb;
  set lb(num lb) => _lb = lb;

  /// Deserialize recieved data
  LaunchPayloadMass.fromJson(Map<String, dynamic> json) {
    _kg = json['kg'];
    _lb = json['lb'];
  }

  /// Serializer
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kg'] = this._kg;
    data['lb'] = this._lb;
    return data;
  }
}
