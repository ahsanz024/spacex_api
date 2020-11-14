library spacex_api;

import 'src/endpoints.dart';
import 'src/requestor.dart';

class SpaceXApi {
  final _req = Requestor();

  // Capsules
  Future<dynamic> getAllCapsules() {
    return _req.getData(endpoint: Endpoints.capsules);
  }

  Future<dynamic> getCapsuleById({
    String id,
  }) {
    return _req.getData(endpoint: Endpoints.capsules, id: id);
  }

  Future<dynamic> queryCapsules({
    Object query,
  }) {
    return _req.getData(endpoint: Endpoints.capsules, query: query);
  }

  // Company
  Future<dynamic> company() {
    return _req.getData(endpoint: Endpoints.company);
  }

  // Crews
  Future<dynamic> getAllCrews() {
    return _req.getData(endpoint: Endpoints.crew);
  }

  Future<dynamic> getCrewById({
    String id,
  }) {
    return _req.getData(endpoint: Endpoints.capsules, id: id);
  }

  Future<dynamic> queryCrews({
    Object query = null,
  }) {
    return _req.getData(endpoint: Endpoints.capsules, query: query);
  }

  // Dragons
  Future<dynamic> getAllDragons() {
    return _req.getData(endpoint: Endpoints.dragons);
  }

  Future<dynamic> getDragonById({
    String id,
  }) {
    return _req.getData(endpoint: Endpoints.dragons, id: id);
  }

  Future<dynamic> queryDragons({
    Object query = null,
  }) {
    return _req.getData(endpoint: Endpoints.dragons, query: query);
  }

  // History
  Future<dynamic> getAllHistory() {
    return _req.getData(endpoint: Endpoints.history);
  }

  Future<dynamic> getHistoryById({
    String id,
  }) {
    return _req.getData(endpoint: Endpoints.history, id: id);
  }

  Future<dynamic> queryHistory({
    Object query = null,
  }) {
    return _req.getData(endpoint: Endpoints.history, query: query);
  }

  // Landpads
  Future<dynamic> getAllLandpads() {
    return _req.getData(endpoint: Endpoints.landpads);
  }

  Future<dynamic> getLandpadById({
    String id,
  }) {
    return _req.getData(endpoint: Endpoints.landpads, id: id);
  }

  Future<dynamic> queryLandpads({
    Object query = null,
  }) {
    return _req.getData(endpoint: Endpoints.landpads, query: query);
  }

  // Launches
  Future<dynamic> getAllLaunches() {
    return _req.getData(endpoint: Endpoints.launches);
  }

  Future<dynamic> getLaunchById({
    String id,
  }) {
    return _req.getData(endpoint: Endpoints.launches, id: id);
  }

  Future<dynamic> queryLaunches({
    Object query = null,
  }) {
    return _req.getData(endpoint: Endpoints.launches, query: query);
  }

  // Payloads
  Future<dynamic> getAllPayloads() {
    return _req.getData(endpoint: Endpoints.payloads);
  }

  Future<dynamic> getPayloadsById({
    String id,
  }) {
    return _req.getData(endpoint: Endpoints.payloads, id: id);
  }

  Future<dynamic> queryPayloads({
    Object query = null,
  }) {
    return _req.getData(endpoint: Endpoints.payloads, query: query);
  }

  // Rockets
  Future<dynamic> getAllRockets() {
    return _req.getData(endpoint: Endpoints.rockets);
  }

  Future<dynamic> getRocketById({
    String id,
  }) {
    return _req.getData(endpoint: Endpoints.rockets, id: id);
  }

  Future<dynamic> queryRockets({
    Object query = null,
  }) {
    return _req.getData(endpoint: Endpoints.rockets, query: query);
  }

  // Roadser
  Future<dynamic> getRoadster() {
    return _req.getData(endpoint: Endpoints.roadster);
  }

  // Ships
  Future<dynamic> getAllShips() {
    return _req.getData(endpoint: Endpoints.ships);
  }

  Future<dynamic> getShipsById({
    String id,
  }) {
    return _req.getData(endpoint: Endpoints.ships, id: id);
  }

  Future<dynamic> queryShips({
    Object query = null,
  }) {
    return _req.getData(endpoint: Endpoints.ships, query: query);
  }

  // Starlinks
  Future<dynamic> getAllStarlinks() {
    return _req.getData(endpoint: Endpoints.starlink);
  }

  Future<dynamic> getStarlinkById({
    String id,
  }) {
    return _req.getData(endpoint: Endpoints.starlink, id: id);
  }

  Future<dynamic> queryStarlinks({
    Object query = null,
  }) {
    return _req.getData(endpoint: Endpoints.starlink, query: query);
  }
}
