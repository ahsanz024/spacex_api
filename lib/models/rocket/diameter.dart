class Diameter {
  late num _meters;
  late num _feet;

  Diameter({num? meters, num? feet}) {
    _meters = meters ?? 0; // Initialize with default value if not provided
    _feet = feet ?? 0; // Initialize with default value if not provided
  }

  num get meters => _meters;
  set meters(num meters) => _meters = meters;
  num get feet => _feet;
  set feet(num feet) => _feet = feet;

  Diameter.fromJson(Map<String, dynamic> json) {
    _meters = json['meters'] ?? 0; // Initialize with default value if not provided
    _feet = json['feet'] ?? 0; // Initialize with default value if not provided
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['meters'] = _meters;
    data['feet'] = _feet;
    return data;
  }
}
