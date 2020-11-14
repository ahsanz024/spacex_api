class Roadster {
  List<String> _flickrImages;
  String _name;
  String _launchDateUtc;
  num _launchDateUnix;
  num _launchMassKg;
  num _launchMassLbs;
  num _noradId;
  num _epochJd;
  String _orbitType;
  num _apoapsisAu;
  num _periapsisAu;
  num _semiMajorAxisAu;
  num _eccentricity;
  num _inclination;
  num _longitude;
  num _periapsisArg;
  num _periodDays;
  num _speedKph;
  num _speedMph;
  num _earthDistanceKm;
  num _earthDistanceMi;
  num _marsDistanceKm;
  num _marsDistanceMi;
  String _wikipedia;
  String _video;
  String _details;
  String _id;

  Roadster(
      {List<String> flickrImages,
      String name,
      String launchDateUtc,
      num launchDateUnix,
      num launchMassKg,
      num launchMassLbs,
      num noradId,
      num epochJd,
      String orbitType,
      num apoapsisAu,
      num periapsisAu,
      num semiMajorAxisAu,
      num eccentricity,
      num inclination,
      num longitude,
      num periapsisArg,
      num periodDays,
      num speedKph,
      num speedMph,
      num earthDistanceKm,
      num earthDistanceMi,
      num marsDistanceKm,
      num marsDistanceMi,
      String wikipedia,
      String video,
      String details,
      String id}) {
    this._flickrImages = flickrImages;
    this._name = name;
    this._launchDateUtc = launchDateUtc;
    this._launchDateUnix = launchDateUnix;
    this._launchMassKg = launchMassKg;
    this._launchMassLbs = launchMassLbs;
    this._noradId = noradId;
    this._epochJd = epochJd;
    this._orbitType = orbitType;
    this._apoapsisAu = apoapsisAu;
    this._periapsisAu = periapsisAu;
    this._semiMajorAxisAu = semiMajorAxisAu;
    this._eccentricity = eccentricity;
    this._inclination = inclination;
    this._longitude = longitude;
    this._periapsisArg = periapsisArg;
    this._periodDays = periodDays;
    this._speedKph = speedKph;
    this._speedMph = speedMph;
    this._earthDistanceKm = earthDistanceKm;
    this._earthDistanceMi = earthDistanceMi;
    this._marsDistanceKm = marsDistanceKm;
    this._marsDistanceMi = marsDistanceMi;
    this._wikipedia = wikipedia;
    this._video = video;
    this._details = details;
    this._id = id;
  }

  List<String> get flickrImages => _flickrImages;
  set flickrImages(List<String> flickrImages) => _flickrImages = flickrImages;
  String get name => _name;
  set name(String name) => _name = name;
  String get launchDateUtc => _launchDateUtc;
  set launchDateUtc(String launchDateUtc) => _launchDateUtc = launchDateUtc;
  num get launchDateUnix => _launchDateUnix;
  set launchDateUnix(num launchDateUnix) => _launchDateUnix = launchDateUnix;
  num get launchMassKg => _launchMassKg;
  set launchMassKg(num launchMassKg) => _launchMassKg = launchMassKg;
  num get launchMassLbs => _launchMassLbs;
  set launchMassLbs(num launchMassLbs) => _launchMassLbs = launchMassLbs;
  num get noradId => _noradId;
  set noradId(num noradId) => _noradId = noradId;
  num get epochJd => _epochJd;
  set epochJd(num epochJd) => _epochJd = epochJd;
  String get orbitType => _orbitType;
  set orbitType(String orbitType) => _orbitType = orbitType;
  num get apoapsisAu => _apoapsisAu;
  set apoapsisAu(num apoapsisAu) => _apoapsisAu = apoapsisAu;
  num get periapsisAu => _periapsisAu;
  set periapsisAu(num periapsisAu) => _periapsisAu = periapsisAu;
  num get semiMajorAxisAu => _semiMajorAxisAu;
  set semiMajorAxisAu(num semiMajorAxisAu) =>
      _semiMajorAxisAu = semiMajorAxisAu;
  num get eccentricity => _eccentricity;
  set eccentricity(num eccentricity) => _eccentricity = eccentricity;
  num get inclination => _inclination;
  set inclination(num inclination) => _inclination = inclination;
  num get longitude => _longitude;
  set longitude(num longitude) => _longitude = longitude;
  num get periapsisArg => _periapsisArg;
  set periapsisArg(num periapsisArg) => _periapsisArg = periapsisArg;
  num get periodDays => _periodDays;
  set periodDays(num periodDays) => _periodDays = periodDays;
  num get speedKph => _speedKph;
  set speedKph(num speedKph) => _speedKph = speedKph;
  num get speedMph => _speedMph;
  set speedMph(num speedMph) => _speedMph = speedMph;
  num get earthDistanceKm => _earthDistanceKm;
  set earthDistanceKm(num earthDistanceKm) =>
      _earthDistanceKm = earthDistanceKm;
  num get earthDistanceMi => _earthDistanceMi;
  set earthDistanceMi(num earthDistanceMi) =>
      _earthDistanceMi = earthDistanceMi;
  num get marsDistanceKm => _marsDistanceKm;
  set marsDistanceKm(num marsDistanceKm) => _marsDistanceKm = marsDistanceKm;
  num get marsDistanceMi => _marsDistanceMi;
  set marsDistanceMi(num marsDistanceMi) => _marsDistanceMi = marsDistanceMi;
  String get wikipedia => _wikipedia;
  set wikipedia(String wikipedia) => _wikipedia = wikipedia;
  String get video => _video;
  set video(String video) => _video = video;
  String get details => _details;
  set details(String details) => _details = details;
  String get id => _id;
  set id(String id) => _id = id;

  Roadster.fromJson(Map<String, dynamic> json) {
    _flickrImages = json['flickr_images']?.cast<String>();
    _name = json['name'];
    _launchDateUtc = json['launch_date_utc'];
    _launchDateUnix = json['launch_date_unix'];
    _launchMassKg = json['launch_mass_kg'];
    _launchMassLbs = json['launch_mass_lbs'];
    _noradId = json['norad_id'];
    _epochJd = json['epoch_jd'];
    _orbitType = json['orbit_type'];
    _apoapsisAu = json['apoapsis_au'];
    _periapsisAu = json['periapsis_au'];
    _semiMajorAxisAu = json['semi_major_axis_au'];
    _eccentricity = json['eccentricity'];
    _inclination = json['inclination'];
    _longitude = json['longitude'];
    _periapsisArg = json['periapsis_arg'];
    _periodDays = json['period_days'];
    _speedKph = json['speed_kph'];
    _speedMph = json['speed_mph'];
    _earthDistanceKm = json['earth_distance_km'];
    _earthDistanceMi = json['earth_distance_mi'];
    _marsDistanceKm = json['mars_distance_km'];
    _marsDistanceMi = json['mars_distance_mi'];
    _wikipedia = json['wikipedia'];
    _video = json['video'];
    _details = json['details'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['flickr_images'] = this._flickrImages;
    data['name'] = this._name;
    data['launch_date_utc'] = this._launchDateUtc;
    data['launch_date_unix'] = this._launchDateUnix;
    data['launch_mass_kg'] = this._launchMassKg;
    data['launch_mass_lbs'] = this._launchMassLbs;
    data['norad_id'] = this._noradId;
    data['epoch_jd'] = this._epochJd;
    data['orbit_type'] = this._orbitType;
    data['apoapsis_au'] = this._apoapsisAu;
    data['periapsis_au'] = this._periapsisAu;
    data['semi_major_axis_au'] = this._semiMajorAxisAu;
    data['eccentricity'] = this._eccentricity;
    data['inclination'] = this._inclination;
    data['longitude'] = this._longitude;
    data['periapsis_arg'] = this._periapsisArg;
    data['period_days'] = this._periodDays;
    data['speed_kph'] = this._speedKph;
    data['speed_mph'] = this._speedMph;
    data['earth_distance_km'] = this._earthDistanceKm;
    data['earth_distance_mi'] = this._earthDistanceMi;
    data['mars_distance_km'] = this._marsDistanceKm;
    data['mars_distance_mi'] = this._marsDistanceMi;
    data['wikipedia'] = this._wikipedia;
    data['video'] = this._video;
    data['details'] = this._details;
    data['id'] = this._id;
    return data;
  }
}
