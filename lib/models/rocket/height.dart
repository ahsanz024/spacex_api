class Height {
  late num _meters;
  late num _feet;

  Height({num? meters, num? feet}) {
    _meters = meters ?? 0; // Default to 0 if meters is null
    _feet = feet ?? 0;     // Default to 0 if feet is null
  }

  num get meters => _meters;
  set meters(num meters) => _meters = meters;
  num get feet => _feet;
  set feet(num feet) => _feet = feet;

  Height.fromJson(Map<String, dynamic> json) {
    _meters = json['meters'] ?? 0; // Default to 0 if meters is missing
    _feet = json['feet'] ?? 0;     // Default to 0 if feet is missing
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['meters'] = _meters;
    data['feet'] = _feet;
    return data;
  }
}
