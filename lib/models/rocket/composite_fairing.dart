import 'diameter.dart';

class CompositeFairing {
  late Diameter _height;
  late Diameter _diameter;

  CompositeFairing({Diameter? height, Diameter? diameter}) {
    _height =
        height ?? Diameter(); // Initialize with default values if not provided
    _diameter = diameter ??
        Diameter(); // Initialize with default values if not provided
  }

  Diameter get height => _height;
  set height(Diameter height) => _height = height;
  Diameter get diameter => _diameter;
  set diameter(Diameter diameter) => _diameter = diameter;

  CompositeFairing.fromJson(Map<String, dynamic> json) {
    _height =
        json['height'] != null ? Diameter.fromJson(json['height']) : Diameter();
    _diameter = json['diameter'] != null
        ? Diameter.fromJson(json['diameter'])
        : Diameter();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['height'] = _height.toJson();
    data['diameter'] = _diameter.toJson();
    return data;
  }
}
