class Headquarters {
  String _address = '';
  String _city = '';
  String _state = '';

  Headquarters({required String address, required String city, required String state})
      : _address = address,
        _city = city,
        _state = state;

  String get address => _address;
  set address(String address) => _address = address;
  String get city => _city;
  set city(String city) => _city = city;
  String get state => _state;
  set state(String state) => _state = state;

  Headquarters.fromJson(Map<String, dynamic> json) {
    _address = json['address'];
    _city = json['city'];
    _state = json['state'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address'] = this._address;
    data['city'] = this._city;
    data['state'] = this._state;
    return data;
  }
}
