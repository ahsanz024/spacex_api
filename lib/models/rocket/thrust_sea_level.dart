class ThrustSeaLevel {
  late num kN;
  late num lbf;

  ThrustSeaLevel({
    required this.kN,
    required this.lbf,
  });

  ThrustSeaLevel.fromJson(Map<String, dynamic> json) {
    kN = json['kN'] ?? 0; // You can change the default value accordingly.
    lbf = json['lbf'] ?? 0; // You can change the default value accordingly.
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'kN': kN,
      'lbf': lbf,
    };
    return data;
  }
}
