import 'composite_fairing.dart';

class Payloads {
  late CompositeFairing _compositeFairing;
  late String _option1;

  Payloads({CompositeFairing? compositeFairing, String? option1}) {
    _compositeFairing = compositeFairing!;
    _option1 = option1!;
  }

  CompositeFairing get compositeFairing => _compositeFairing;
  set compositeFairing(CompositeFairing compositeFairing) => _compositeFairing = compositeFairing;
  String get option1 => _option1;
  set option1(String option1) => _option1 = option1;

  Payloads.fromJson(Map<String, dynamic> json) {
    _compositeFairing = json['composite_fairing'] != null
        ? CompositeFairing.fromJson(json['composite_fairing'])
        : throw ArgumentError('compositeFairing must not be null');
    _option1 = json['option_1'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['composite_fairing'] = _compositeFairing.toJson();
    data['option_1'] = _option1;
    return data;
  }
}
