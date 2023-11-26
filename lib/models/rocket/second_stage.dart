import 'payloads.dart';
import 'thrust_sea_level.dart';

class SecondStage {
  late ThrustSeaLevel
      thrust; // Assuming 'ThrustSeaLevel' requires 'kN' and 'lbf' parameters in its constructor
  late Payloads payloads;
  late bool reusable;
  late num engines;
  late num fuelAmountTons;
  late num burnTimeSec;

  SecondStage({
    required ThrustSeaLevel
        thrust, // Make sure 'ThrustSeaLevel' constructor requires 'kN' and 'lbf' parameters
    required Payloads payloads,
    required bool reusable,
    required num engines,
    required num fuelAmountTons,
    required num burnTimeSec,
  }) {
    this.thrust = thrust;
    this.payloads = payloads;
    this.reusable = reusable;
    this.engines = engines;
    this.fuelAmountTons = fuelAmountTons;
    this.burnTimeSec = burnTimeSec;
  }

  SecondStage.fromJson(Map<String, dynamic> json) {
    thrust = json['thrust'] != null
        ? ThrustSeaLevel.fromJson(json['thrust'])
        : ThrustSeaLevel(
            kN: 0, lbf: 0); // Provide default values for 'kN' and 'lbf'
    payloads = json['payloads'] != null
        ? Payloads.fromJson(json['payloads'])
        : Payloads(); // You can change the default value accordingly.
    reusable = json['reusable'] ??
        false; // You can change the default value accordingly.
    engines =
        json['engines'] ?? 0; // You can change the default value accordingly.
    fuelAmountTons = json['fuel_amount_tons'] ??
        0; // You can change the default value accordingly.
    burnTimeSec = json['burn_time_sec'] ??
        0; // You can change the default value accordingly.
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'thrust': thrust.toJson(),
      'payloads': payloads.toJson(),
      'reusable': reusable,
      'engines': engines,
      'fuel_amount_tons': fuelAmountTons,
      'burn_time_sec': burnTimeSec,
    };
    return data;
  }
}
