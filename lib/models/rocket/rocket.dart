import 'diameter.dart';
import 'engines.dart';
import 'first_stage.dart';
import 'landing_legs.dart';
import 'mass.dart';
import 'payload_weights.dart';
import 'second_stage.dart';

class Rocket {
  final Diameter height;
  final Diameter diameter;
  final Mass mass;
  final FirstStage firstStage;
  final SecondStage secondStage;
  final Engines engines;
  final LandingLegs landingLegs;
  final List<PayloadWeights> payloadWeights;
  final List<String> flickrImages;
  final String name;
  final String type;
  final bool active;
  final num stages;
  final num boosters;
  final num costPerLaunch;
  final num successRatePct;
  final String firstFlight;
  final String country;
  final String company;
  final String wikipedia;
  final String description;
  final String id;

  Rocket({
    required this.height,
    required this.diameter,
    required this.mass,
    required this.firstStage,
    required this.secondStage,
    required this.engines,
    required this.landingLegs,
    required this.payloadWeights,
    required this.flickrImages,
    required this.name,
    required this.type,
    required this.active,
    required this.stages,
    required this.boosters,
    required this.costPerLaunch,
    required this.successRatePct,
    required this.firstFlight,
    required this.country,
    required this.company,
    required this.wikipedia,
    required this.description,
    required this.id,
  });

  // Getter methods for all fields...

  factory Rocket.fromJson(Map<String, dynamic> json) {
    return Rocket(
      height: Diameter.fromJson(json['height']),
      diameter: Diameter.fromJson(json['diameter']),
      mass: Mass.fromJson(json['mass']),
      firstStage: FirstStage.fromJson(json['first_stage']),
      secondStage: SecondStage.fromJson(json['second_stage']),
      engines: Engines.fromJson(json['engines']),
      landingLegs: LandingLegs.fromJson(json['landing_legs']),
      payloadWeights: (json['payload_weights'] as List)
          .map((payloadWeight) => PayloadWeights.fromJson(payloadWeight))
          .toList(),
      flickrImages: (json['flickr_images'] as List).cast<String>(),
      name: json['name'],
      type: json['type'],
      active: json['active'],
      stages: json['stages'],
      boosters: json['boosters'],
      costPerLaunch: json['cost_per_launch'],
      successRatePct: json['success_rate_pct'],
      firstFlight: json['first_flight'],
      country: json['country'],
      company: json['company'],
      wikipedia: json['wikipedia'],
      description: json['description'],
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'height': height.toJson(),
      'diameter': diameter.toJson(),
      'mass': mass.toJson(),
      'first_stage': firstStage.toJson(),
      'second_stage': secondStage.toJson(),
      'engines': engines.toJson(),
      'landing_legs': landingLegs.toJson(),
      'payload_weights': payloadWeights.map((payloadWeight) => payloadWeight.toJson()).toList(),
      'flickr_images': flickrImages,
      'name': name,
      'type': type,
      'active': active,
      'stages': stages,
      'boosters': boosters,
      'cost_per_launch': costPerLaunch,
      'success_rate_pct': successRatePct,
      'first_flight': firstFlight,
      'country': country,
      'company': company,
      'wikipedia': wikipedia,
      'description': description,
      'id': id,
    };
    return data;
  }
}
