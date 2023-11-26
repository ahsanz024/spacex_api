class Roadster {
  List<String> flickrImages;
  String name;
  String launchDateUtc;
  int launchDateUnix;
  double launchMassKg;
  double launchMassLbs;
  String noradId;
  double epochJd;
  String orbitType;
  double apoapsisAu;
  double periapsisAu;
  double semiMajorAxisAu;
  double eccentricity;
  double inclination;
  double longitude;
  double periapsisArg;
  double periodDays;
  double speedKph;
  double speedMph;
  double earthDistanceKm;
  double earthDistanceMi;
  double marsDistanceKm;
  double marsDistanceMi;
  String wikipedia;
  String video;
  String details;
  String id;

  Roadster({
    required this.flickrImages,
    required this.name,
    required this.launchDateUtc,
    required this.launchDateUnix,
    required this.launchMassKg,
    required this.launchMassLbs,
    required this.noradId,
    required this.epochJd,
    required this.orbitType,
    required this.apoapsisAu,
    required this.periapsisAu,
    required this.semiMajorAxisAu,
    required this.eccentricity,
    required this.inclination,
    required this.longitude,
    required this.periapsisArg,
    required this.periodDays,
    required this.speedKph,
    required this.speedMph,
    required this.earthDistanceKm,
    required this.earthDistanceMi,
    required this.marsDistanceKm,
    required this.marsDistanceMi,
    required this.wikipedia,
    required this.video,
    required this.details,
    required this.id,
  });

  // Factory constructor to create a Roadster object from a JSON Map
  factory Roadster.fromJson(Map<String, dynamic> json) {
    return Roadster(
      flickrImages: List<String>.from(json['flickr_images'] ?? []),
      name: json['name'],
      launchDateUtc: json['launch_date_utc'],
      launchDateUnix: json['launch_date_unix'],
      launchMassKg: json['launch_mass_kg'],
      launchMassLbs: json['launch_mass_lbs'],
      noradId: json['norad_id'],
      epochJd: json['epoch_jd'],
      orbitType: json['orbit_type'],
      apoapsisAu: json['apoapsis_au'],
      periapsisAu: json['periapsis_au'],
      semiMajorAxisAu: json['semi_major_axis_au'],
      eccentricity: json['eccentricity'],
      inclination: json['inclination'],
      longitude: json['longitude'],
      periapsisArg: json['periapsis_arg'],
      periodDays: json['period_days'],
      speedKph: json['speed_kph'],
      speedMph: json['speed_mph'],
      earthDistanceKm: json['earth_distance_km'],
      earthDistanceMi: json['earth_distance_mi'],
      marsDistanceKm: json['mars_distance_km'],
      marsDistanceMi: json['mars_distance_mi'],
      wikipedia: json['wikipedia'],
      video: json['video'],
      details: json['details'],
      id: json['id'],
    );
  }

  // Convert a Roadster object to a JSON Map
  Map<String, dynamic> toJson() {
    return {
      'flickr_images': flickrImages,
      'name': name,
      'launch_date_utc': launchDateUtc,
      'launch_date_unix': launchDateUnix,
      'launch_mass_kg': launchMassKg,
      'launch_mass_lbs': launchMassLbs,
      'norad_id': noradId,
      'epoch_jd': epochJd,
      'orbit_type': orbitType,
      'apoapsis_au': apoapsisAu,
      'periapsis_au': periapsisAu,
      'semi_major_axis_au': semiMajorAxisAu,
      'eccentricity': eccentricity,
      'inclination': inclination,
      'longitude': longitude,
      'periapsis_arg': periapsisArg,
      'period_days': periodDays,
      'speed_kph': speedKph,
      'speed_mph': speedMph,
      'earth_distance_km': earthDistanceKm,
      'earth_distance_mi': earthDistanceMi,
      'mars_distance_km': marsDistanceKm,
      'mars_distance_mi': marsDistanceMi,
      'wikipedia': wikipedia,
      'video': video,
      'details': details,
      'id': id,
    };
  }
}
