import 'dart:convert' as convert;
import 'package:http/http.dart';
import 'package:spacex_api/models/capsule.dart';
import 'package:spacex_api/models/company/company.dart';
import 'package:spacex_api/models/crew.dart';
import 'package:spacex_api/models/dragon/dragon.dart';
import 'package:spacex_api/models/history/history.dart';
import 'package:spacex_api/models/landpad.dart';
import 'package:spacex_api/models/launch/launch.dart';
import 'package:spacex_api/models/launchpad.dart';
import 'package:spacex_api/models/pagenated_response.dart';
import 'package:spacex_api/models/payload.dart';
import 'package:spacex_api/models/query/options.dart';
import 'package:spacex_api/models/roadster.dart';
import 'package:spacex_api/models/rocket/rocket.dart';
import 'package:spacex_api/models/ship.dart';
import 'package:spacex_api/models/starlink/starlink.dart';
import 'package:spacex_api/spacex_api.dart';
import 'package:spacex_api/utils.dart';

void main() async {
  final api = SpaceXApi();
  // Fetch by ID
  _fetchSingleCapsule(api);

  // Get all objects
  _fetchAllStarlink(api);

  // Query objects
  _queryStarlinks(api);
}

Future<void> _fetchSingleCapsule(SpaceXApi api) async {
  final response = await api.getCapsuleById(id: "5e9e2c5cf359183bb73b266e");
  if (response.statusCode == 200) {
    final json = Utils.parseResponseAsJson(response);
    final capsule = Capsule.fromJson(json);
    print("Fetch Single Capsule serial -> ${capsule.serial}");
  }
}

Future<void> _fetchAllStarlink(SpaceXApi api) async {
  final response = await api.getAllStarlinks();
  if (response.statusCode == 200) {
    List<Starlink> data = Utils.convertResponseToList<Starlink>(
        response, (e) => Starlink.fromJson(e));
    print("Fetch Starlinks ${data.length}");
  }
}

Future<void> _queryStarlinks(SpaceXApi api) async {
  final query = Options();
  query.limit = 25;
  query.page = 1;
  query.pagination = true;
  query.select = [
    "version",
    "height_km",
    "longitude",
  ];
  // var queryJson = convert.jsonEncode(query.toJson());

  final response = await api.queryStarlinks(query: query.toJson());
  if (response.statusCode == 200) {
    final jsonResp = Utils.parseResponseAsJson(response);
    PagenatedResponse pagenatedResponse = PagenatedResponse.fromJson(jsonResp);
    List<Starlink> data = pagenatedResponse.docs
        .map((e) => Starlink.fromJson(e))
        .cast<Starlink>()
        .toList();
    print("Qeury Starlinks ${data.length}");
  }

  // Alternative solution
  // final json = _parseResponse(response);
  // if (json != null) {
  //   PagenatedResponse resp = PagenatedResponse.fromJson(json);

  //   List<Starlink> data =
  //       resp.docs.map((e) => Starlink.fromJson(e)).cast<Starlink>().toList();
  //   print("Qeury Starlinks ${data.length}");
  // }
}

// More examples
_parseResponse(Response response) {
  if (response.statusCode == 200) {
    final jsonResponse = convert.jsonDecode(response.body);
    return jsonResponse;
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}

fromJsonList<T>(List json, Function func) {
  List caps = json.map((e) => func(e)).cast<T>().toList();
  return caps;
}

Future<void> _fetchShips(SpaceXApi api) async {
  final response = await api.getAllShips();
  final json = _parseResponse(response);
  if (json != null) {
    List<Ship> data = json.map((e) => Ship.fromJson(e)).cast<Ship>().toList();
    print("Fetch Ship ${data[0].name}");
  }
}

Future<void> _fetchRocket(SpaceXApi api) async {
  final response = await api.getAllRockets();
  final json = _parseResponse(response);
  if (json != null) {
    List<Rocket> data =
        json.map((e) => Rocket.fromJson(e)).cast<Rocket>().toList();
    print("Fetch Rocket ${data[0].name}");
  }
}

Future<void> _fetchRoadster(SpaceXApi api) async {
  final response = await api.getRoadster();
  final json = _parseResponse(response);
  if (json != null) {
    Roadster data = Roadster.fromJson(json);
    print("Fetch Roadster ${data.earthDistanceKm}");
  }
}

Future<void> _fetchPayloads(SpaceXApi api) async {
  final response = await api.getAllPayloads();
  final json = _parseResponse(response);
  if (json != null) {
    List<Payload> data =
        json.map((e) => Payload.fromJson(e)).cast<Payload>().toList();
    print("Fetch Payload ${data[0].name}");
  }
}

Future<void> _fetchLaunches(SpaceXApi api) async {
  final response = await api.getAllLaunches();
  final json = _parseResponse(response);
  if (json != null) {
    List<Launch> data =
        json.map((e) => Launch.fromJson(e)).cast<Launch>().toList();
    print("Fetch Launch ${data[0].details}");
  }
}

Future<void> _fetchLaunchPads(SpaceXApi api) async {
  final response = await api.getAllLaunchPads();
  final json = _parseResponse(response);
  if (json != null) {
    List<Launchpad> data =
        json.map((e) => Launchpad.fromJson(e)).cast<Launchpad>().toList();
    print("Fetch Launch ${data[0].details}");
  }
}

Future<void> _fetchLandpads(SpaceXApi api) async {
  final response = await api.getAllLandpads();
  final json = _parseResponse(response);
  if (json != null) {
    List<Landpad> data =
        json.map((e) => Landpad.fromJson(e)).cast<Landpad>().toList();
    print("Fetch Landpad ${data[0].fullName}");
  }
}

Future<void> _fetchHistory(SpaceXApi api) async {
  final response = await api.getAllHistory();
  final json = _parseResponse(response);
  if (json != null) {
    List<History> data =
        json.map((e) => History.fromJson(e)).cast<History>().toList();
    print("Fetch History ${data[0].title}");
  }
}

Future<void> _fetchDragons(SpaceXApi api) async {
  final response = await api.getAllDragons();
  final json = _parseResponse(response);
  if (json != null) {
    List<Dragon> data =
        json.map((e) => Dragon.fromJson(e)).cast<Dragon>().toList();
    print("Fetch Dragon ${data[0].name}");
  }
}

Future<void> _fetchCrew(SpaceXApi api) async {
  final response = await api.getAllCrews();
  final json = _parseResponse(response);
  if (json != null) {
    List<Crew> data = json.map((e) => Crew.fromJson(e)).cast<Crew>().toList();
    print("Fetch Crew ${data[0].name}");
  }
}

Future<void> _fetchCompany(SpaceXApi api) async {
  final response = await api.getCompany();
  final json = _parseResponse(response);
  if (json != null) {
    Company data = Company.fromJson(json);
    print("Fetch Company ${data.name}");
  }
}
