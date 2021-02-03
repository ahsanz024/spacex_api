class Fairings {
  bool _reused;
  bool _recoveryAttempt;
  bool _recovered;
  List<String> _shipsIds;

  Fairings(
      {bool reused,
      bool recoveryAttempt,
      bool recovered,
      List<String> shipsIds}) {
    this._reused = reused;
    this._recoveryAttempt = recoveryAttempt;
    this._recovered = recovered;
    this._shipsIds = shipsIds;
  }

  bool get reused => _reused;
  set reused(bool reused) => _reused = reused;
  bool get recoveryAttempt => _recoveryAttempt;
  set recoveryAttempt(bool recoveryAttempt) =>
      _recoveryAttempt = recoveryAttempt;
  bool get recovered => _recovered;
  set recovered(bool recovered) => _recovered = recovered;
  List<String> get shipsIds => _shipsIds;
  set shipsIds(List<String> shipsIds) => _shipsIds = shipsIds;

  /// Deserialize recieved data
  Fairings.fromJson(Map<String, dynamic> json) {
    _reused = json['reused'];
    _recoveryAttempt = json['recovery_attempt'];
    _recovered = json['recovered'];
    if (json['ships'] != null) {
      _shipsIds = new List<String>();
      json['ships'].forEach((v) {
        _shipsIds.add(v);
      });
    }
  }

  /// Serializer
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['reused'] = this._reused;
    data['recovery_attempt'] = this._recoveryAttempt;
    data['recovered'] = this._recovered;
    if (this._shipsIds != null) {
      data['ships'] = this._shipsIds.map((v) => v).toList();
    }
    return data;
  }
}
