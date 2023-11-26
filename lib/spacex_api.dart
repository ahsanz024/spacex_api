library spacex_api;

import 'package:http/http.dart';

import 'src/endpoints.dart';
import 'src/requestor.dart';

class SpaceXApi {
  final _req = Requestor();

  /// Capsules
  Future<Response> getAllCapsules() {
    return _req.getData(endpoint: Endpoints.capsules);
  }

  Future<Response> getCapsuleById({
    required String id,
  }) {
    return _req.getData(endpoint: Endpoints.capsules, id: id);
  }

  Future<Response> queryCapsules({
    required Map<String, dynamic> query,
    Map<String, String>? headers,
  }) {
    return _req.getData(
      endpoint: Endpoints.capsules,
      query: query,
      header: headers,
    );
  }

  /// Company
  Future<Response> getCompany() {
    return _req.getData(endpoint: Endpoints.company);
  }

  /// Crews
  Future<Response> getAllCrews() {
    return _req.getData(endpoint: Endpoints.crew);
  }

  Future<Response> getCrewById({
    required String id,
  }) {
    return _req.getData(endpoint: Endpoints.crew, id: id);
  }

  Future<Response> queryCrews({
    required Map<String, dynamic> query,
    Map<String, String>? headers,
  }) {
    return _req.getData(
      endpoint: Endpoints.crew,
      query: query,
      header: headers,
    );
  }

  /// Dragons
  Future<Response> getAllDragons() {
    return _req.getData(endpoint: Endpoints.dragons);
  }

  Future<Response> getDragonById({
    required String id,
  }) {
    return _req.getData(endpoint: Endpoints.dragons, id: id);
  }

  Future<Response> queryDragons({
    required Map<String, dynamic> query,
    Map<String, String>? headers,
  }) {
    return _req.getData(
      endpoint: Endpoints.dragons,
      query: query,
      header: headers,
    );
  }

  /// History
  Future<Response> getAllHistory() {
    return _req.getData(endpoint: Endpoints.history);
  }

  Future<Response> getHistoryById({
    required String id,
  }) {
    return _req.getData(endpoint: Endpoints.history, id: id);
  }

  Future<Response> queryHistory({
    required Map<String, dynamic> query,
    Map<String, String>? headers,
  }) {
    return _req.getData(
      endpoint: Endpoints.history,
      query: query,
      header: headers,
    );
  }

  /// Landpads
  Future<Response> getAllLandpads() {
    return _req.getData(endpoint: Endpoints.landpads);
  }

  Future<Response> getLandpadById({
    required String id,
  }) {
    return _req.getData(endpoint: Endpoints.landpads, id: id);
  }

  Future<Response> queryLandpads({
    required Map<String, dynamic> query,
    Map<String, String>? headers,
  }) {
    return _req.getData(
      endpoint: Endpoints.landpads,
      query: query,
      header: headers,
    );
  }

  /// Launches
  Future<Response> getAllLaunches() {
    return _req.getData(endpoint: Endpoints.launches);
  }

  Future<Response> getLaunchById({
    required String id,
  }) {
    return _req.getData(endpoint: Endpoints.launches, id: id);
  }

  Future<Response> queryLaunches({
    required Map<String, dynamic> query,
    Map<String, String>? headers,
  }) {
    return _req.getData(
      endpoint: Endpoints.launches,
      query: query,
      header: headers,
    );
  }

  /// Launchpads
  Future<Response> getAllLaunchPads() {
    return _req.getData(endpoint: Endpoints.launchpads);
  }

  Future<Response> getLaunchPadById({
    required String id,
  }) {
    return _req.getData(endpoint: Endpoints.launchpads, id: id);
  }

  Future<Response> queryLaunchPad({
    required Map<String, dynamic> query,
    Map<String, String>? headers,
  }) {
    return _req.getData(
      endpoint: Endpoints.launchpads,
      query: query,
      header: headers,
    );
  }

  /// Payloads
  Future<Response> getAllPayloads() {
    return _req.getData(endpoint: Endpoints.payloads);
  }

  Future<Response> getPayloadsById({
    required String id,
  }) {
    return _req.getData(endpoint: Endpoints.payloads, id: id);
  }

  Future<Response> queryPayloads({
    required Map<String, dynamic> query,
    Map<String, String>? headers,
  }) {
    return _req.getData(
      endpoint: Endpoints.payloads,
      query: query,
      header: headers,
    );
  }

  /// Rockets
  Future<Response> getAllRockets() {
    return _req.getData(endpoint: Endpoints.rockets);
  }

  Future<Response> getRocketById({
    required String id,
  }) {
    return _req.getData(endpoint: Endpoints.rockets, id: id);
  }

  Future<Response> queryRockets({
    required Map<String, dynamic> query,
    Map<String, String>? headers,
  }) {
    return _req.getData(
      endpoint: Endpoints.rockets,
      query: query,
      header: headers,
    );
  }

  /// Roadster
  Future<Response> getRoadster() {
    return _req.getData(endpoint: Endpoints.roadster);
  }

  /// Ships
  Future<Response> getAllShips() {
    return _req.getData(endpoint: Endpoints.ships);
  }

  Future<Response> getShipsById({
    required String id,
  }) {
    return _req.getData(endpoint: Endpoints.ships, id: id);
  }

  Future<Response> queryShips({
    required Map<String, dynamic> query,
    Map<String, String>? headers,
  }) {
    return _req.getData(
      endpoint: Endpoints.ships,
      query: query,
      header: headers,
    );
  }

  /// Starlinks
  Future<Response> getAllStarlinks() {
    return _req.getData(endpoint: Endpoints.starlink);
  }

  Future<Response> getStarlinkById({
    required String id,
  }) {
    return _req.getData(endpoint: Endpoints.starlink, id: id);
  }

  Future<Response> queryStarlinks({
    required Map<String, dynamic> query,
    Map<String, String>? headers,
  }) {
    return _req.getData(
      endpoint: Endpoints.starlink,
      query: query,
      header: headers,
    );
  }
}
