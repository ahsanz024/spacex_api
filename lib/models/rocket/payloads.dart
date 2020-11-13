import 'composite_fairing.dart';

class Payloads {
  CompositeFairing _compositeFairing;
  String _option1;

  Payloads({CompositeFairing compositeFairing, String option1}) {
    this._compositeFairing = compositeFairing;
    this._option1 = option1;
  }

  CompositeFairing get compositeFairing => _compositeFairing;
  set compositeFairing(CompositeFairing compositeFairing) =>
      _compositeFairing = compositeFairing;
  String get option1 => _option1;
  set option1(String option1) => _option1 = option1;

  Payloads.fromJson(Map<String, dynamic> json) {
    _compositeFairing = json['composite_fairing'] != null
        ? new CompositeFairing.fromJson(json['composite_fairing'])
        : null;
    _option1 = json['option_1'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._compositeFairing != null) {
      data['composite_fairing'] = this._compositeFairing.toJson();
    }
    data['option_1'] = this._option1;
    return data;
  }
}
