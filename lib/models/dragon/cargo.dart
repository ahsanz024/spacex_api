class Cargo {
  num _solarArray;
  bool _unpressurizedCargo;

  Cargo({num solarArray, bool unpressurizedCargo}) {
    this._solarArray = solarArray;
    this._unpressurizedCargo = unpressurizedCargo;
  }

  num get solarArray => _solarArray;
  set solarArray(num solarArray) => _solarArray = solarArray;
  bool get unpressurizedCargo => _unpressurizedCargo;
  set unpressurizedCargo(bool unpressurizedCargo) =>
      _unpressurizedCargo = unpressurizedCargo;

  /// Deserialize recieved data
  Cargo.fromJson(Map<String, dynamic> json) {
    _solarArray = json['solar_array'];
    _unpressurizedCargo = json['unpressurized_cargo'];
  }

  /// Serializer
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['solar_array'] = this._solarArray;
    data['unpressurized_cargo'] = this._unpressurizedCargo;
    return data;
  }
}
