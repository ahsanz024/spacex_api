class Cores {
  late String _core;
  late num _flight;
  late bool _gridfins;
  late bool _legs;
  late bool _reused;
  late bool _landingAttempt;
  late bool _landingSuccess;
  late String _landingType;
  late String _landpad;

  Cores({
    required String core,
    required num flight,
    required bool gridfins,
    required bool legs,
    required bool reused,
    required bool landingAttempt,
    required bool landingSuccess,
    required String landingType,
    required String landpad,
  }) {
    _core = core;
    _flight = flight;
    _gridfins = gridfins;
    _legs = legs;
    _reused = reused;
    _landingAttempt = landingAttempt;
    _landingSuccess = landingSuccess;
    _landingType = landingType;
    _landpad = landpad;
  }

  String get core => _core;
  set core(String core) => _core = core;
  num get flight => _flight;
  set flight(num flight) => _flight = flight;
  bool get gridfins => _gridfins;
  set gridfins(bool gridfins) => _gridfins = gridfins;
  bool get legs => _legs;
  set legs(bool legs) => _legs = legs;
  bool get reused => _reused;
  set reused(bool reused) => _reused = reused;
  bool get landingAttempt => _landingAttempt;
  set landingAttempt(bool landingAttempt) => _landingAttempt = landingAttempt;
  bool get landingSuccess => _landingSuccess;
  set landingSuccess(bool landingSuccess) => _landingSuccess = landingSuccess;
  String get landingType => _landingType;
  set landingType(String landingType) => _landingType = landingType;
  String get landpad => _landpad;
  set landpad(String landpad) => _landpad = landpad;

  Cores.fromJson(Map<String, dynamic> json) {
    _core = json['core'];
    _flight = json['flight'];
    _gridfins = json['gridfins'];
    _legs = json['legs'];
    _reused = json['reused'];
    _landingAttempt = json['landing_attempt'];
    _landingSuccess = json['landing_success'];
    _landingType = json['landing_type'];
    _landpad = json['landpad'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['core'] = this._core;
    data['flight'] = this._flight;
    data['gridfins'] = this._gridfins;
    data['legs'] = this._legs;
    data['reused'] = this._reused;
    data['landing_attempt'] = this._landingAttempt;
    data['landing_success'] = this._landingSuccess;
    data['landing_type'] = this._landingType;
    data['landpad'] = this._landpad;
    return data;
  }
}
