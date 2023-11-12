class Thrust {
  num _kN;
  num _lbf;

  Thrust({required num kN, required num lbf})
      : _kN = kN,
        _lbf = lbf;

  num get kN => _kN;
  set kN(num kN) => _kN = kN;
  num get lbf => _lbf;
  set lbf(num lbf) => _lbf = lbf;

  Thrust.fromJson(Map<String, dynamic> json)
      : _kN = json['kN'],
        _lbf = json['lbf'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kN'] = this._kN;
    data['lbf'] = this._lbf;
    return data;
  }
}
