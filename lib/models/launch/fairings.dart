class Fairings {
  bool _reused;
  bool _recoveryAttempt;
  bool _recovered;
  List<String> _shipsIds;

  // Use required keyword to ensure these fields are passed when the object is instantiated.
  Fairings({
    required bool reused,
    required bool recoveryAttempt,
    required bool recovered,
    required List<String> shipsIds,
  })  : _reused = reused,
        _recoveryAttempt = recoveryAttempt,
        _recovered = recovered,
        _shipsIds = shipsIds;

  bool get reused => _reused;
  set reused(bool reused) => _reused = reused;
  bool get recoveryAttempt => _recoveryAttempt;
  set recoveryAttempt(bool recoveryAttempt) =>
      _recoveryAttempt = recoveryAttempt;
  bool get recovered => _recovered;
  set recovered(bool recovered) => _recovered = recovered;
  List<String> get shipsIds => _shipsIds;
  set shipsIds(List<String> shipsIds) => _shipsIds = shipsIds;

  Fairings.fromJson(Map<String, dynamic> json)
      : _reused = json['reused'] ?? false, // Provide default value if null
        _recoveryAttempt = json['recovery_attempt'] ?? false,
        _recovered = json['recovered'] ?? false,
        _shipsIds = List<String>.from(
            json['ships'] ?? []); // Use List.from to create a new list

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['reused'] = this._reused;
    data['recovery_attempt'] = this._recoveryAttempt;
    data['recovered'] = this._recovered;
    data['ships'] = this._shipsIds;
    return data;
  }
}
