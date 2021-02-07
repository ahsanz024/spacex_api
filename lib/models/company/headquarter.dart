class Headquarters {
  String _address;
  String _city;
  String _state;

  Headquarters({String address, String city, String state}) {
    this._address = address;
    this._city = city;
    this._state = state;
  }

  String get address => _address;
  set address(String address) => _address = address;
  String get city => _city;
  set city(String city) => _city = city;
  String get state => _state;
  set state(String state) => _state = state;

  /// Deserialize recieved data
  Headquarters.fromJson(Map<String, dynamic> json) {
    _address = json['address'];
    _city = json['city'];
    _state = json['state'];
  }

  /// Serializer
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address'] = this._address;
    data['city'] = this._city;
    data['state'] = this._state;
    return data;
  }
}
