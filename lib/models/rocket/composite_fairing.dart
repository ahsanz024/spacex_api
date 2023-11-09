import 'diameter.dart';

class CompositeFairing {
  Diameter _height;
  Diameter _diameter;

  CompositeFairing({Diameter height, Diameter diameter}) {
    this._height = height;
    this._diameter = diameter;
  }

  Diameter get height => _height;
  set height(Diameter height) => _height = height;
  Diameter get diameter => _diameter;
  set diameter(Diameter diameter) => _diameter = diameter;

  CompositeFairing.fromJson(Map<String, dynamic> json) {
    _height =
        json['height'] != null ? new Diameter.fromJson(json['height']) : null;
    _diameter = json['diameter'] != null
        ? new Diameter.fromJson(json['diameter'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['height'] = this._height.toJson();
      data['diameter'] = this._diameter.toJson();
      return data;
  }
}
