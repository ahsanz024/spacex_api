library spacex_api;

import 'package:http/http.dart';

import 'src/endpoints.dart';
import 'src/requestor.dart';

class SpaceXApi {
  final _req = Requestor();

  // Capsules
  Future<Response> getAllCapsules() {
    return _req.getData(endpoint: Endpoints.capsules);
  }

  Future<Response> getCapsuleById({
    String id,
  }) {
    return _req.getData(endpoint: Endpoints.capsules, id: id);
  }

  Future<Response> queryCapsules({
    Object query,
    Object headers = null,
  }) {
    return _req.getData(
      endpoint: Endpoints.capsules,
      query: query,
      header: headers,
    );
  }

  // Company
  Future<Response> getCompany() {
    return _req.getData(endpoint: Endpoints.company);
  }

  // Crews
  Future<Response> getAllCrews() {
    return _req.getData(endpoint: Endpoints.crew);
  }

  Future<Response> getCrewById({
    String id,
  }) {
    return _req.getData(endpoint: Endpoints.crew, id: id);
  }

  Future<Response> queryCrews({
    Object query,
    Object headers = null,
  }) {
    return _req.getData(
      endpoint: Endpoints.crew,
      query: query,
      header: headers,
    );
  }

  // Dragons
  Future<Response> getAllDragons() {
    return _req.getData(endpoint: Endpoints.dragons);
  }

  Future<Response> getDragonById({
    String id,
  }) {
    return _req.getData(endpoint: Endpoints.dragons, id: id);
  }

  Future<Response> queryDragons({
    Object query,
    Object headers = null,
  }) {
    return _req.getData(
      endpoint: Endpoints.dragons,
      query: query,
      header: headers,
    );
  }

  // History
  Future<Response> getAllHistory() {
    return _req.getData(endpoint: Endpoints.history);
  }

  Future<Response> getHistoryById({
    String id,
  }) {
    return _req.getData(endpoint: Endpoints.history, id: id);
  }

  Future<Response> queryHistory({
    Object query,
    Object headers = null,
  }) {
    return _req.getData(
      endpoint: Endpoints.history,
      query: query,
      header: headers,
    );
  }

  // Landpads
  Future<Response> getAllLandpads() {
    return _req.getData(endpoint: Endpoints.landpads);
  }

  Future<Response> getLandpadById({
    String id,
  }) {
    return _req.getData(endpoint: Endpoints.landpads, id: id);
  }

  Future<Response> queryLandpads({
    Object query,
    Object headers = null,
  }) {
    return _req.getData(
      endpoint: Endpoints.landpads,
      query: query,
      header: headers,
    );
  }

  // Launches
  Future<Response> getAllLaunches() {
    return _req.getData(endpoint: Endpoints.launches);
  }

  Future<Response> getLaunchById({
    String id,
  }) {
    return _req.getData(endpoint: Endpoints.launches, id: id);
  }

  Future<Response> queryLaunches({
    Object query,
    Object headers = null,
  }) {
    return _req.getData(
      endpoint: Endpoints.launches,
      query: query,
      header: headers,
    );
  }

  // Launchpads
  Future<Response> getAllLaunchPads() {
    return _req.getData(endpoint: Endpoints.launchpads);
  }

  Future<Response> getLaunchPadById({
    String id,
  }) {
    return _req.getData(endpoint: Endpoints.launchpads, id: id);
  }

  Future<Response> queryLaunchPad({
    Object query,
    Object headers = null,
  }) {
    return _req.getData(
      endpoint: Endpoints.launchpads,
      query: query,
      header: headers,
    );
  }

  // Payloads
  Future<Response> getAllPayloads() {
    return _req.getData(endpoint: Endpoints.payloads);
  }

  Future<Response> getPayloadsById({
    String id,
  }) {
    return _req.getData(endpoint: Endpoints.payloads, id: id);
  }

  Future<Response> queryPayloads({
    Object query,
    Object headers = null,
  }) {
    return _req.getData(
      endpoint: Endpoints.payloads,
      query: query,
      header: headers,
    );
  }

  // Rockets
  Future<Response> getAllRockets() {
    return _req.getData(endpoint: Endpoints.rockets);
  }

  Future<Response> getRocketById({
    String id,
  }) {
    return _req.getData(endpoint: Endpoints.rockets, id: id);
  }

  Future<Response> queryRockets({
    Object query,
    Object headers = null,
  }) {
    return _req.getData(
      endpoint: Endpoints.rockets,
      query: query,
      header: headers,
    );
  }

  // Roadser
  Future<Response> getRoadster() {
    return _req.getData(endpoint: Endpoints.roadster);
  }

  // Ships
  Future<Response> getAllShips() {
    return _req.getData(endpoint: Endpoints.ships);
  }

  Future<Response> getShipsById({
    String id,
  }) {
    return _req.getData(endpoint: Endpoints.ships, id: id);
  }

  Future<Response> queryShips({
    Object query,
    Object headers = null,
  }) {
    return _req.getData(
      endpoint: Endpoints.ships,
      query: query,
      header: headers,
    );
  }

  // Starlinks
  Future<Response> getAllStarlinks() {
    return _req.getData(endpoint: Endpoints.starlink);
  }

  Future<Response> getStarlinkById({
    String id,
  }) {
    return _req.getData(endpoint: Endpoints.starlink, id: id);
  }

  Future<Response> queryStarlinks({
    Object query,
    Object headers = null,
  }) {
    return _req.getData(
      endpoint: Endpoints.starlink,
      query: query,
      header: headers,
    );
  }
}
