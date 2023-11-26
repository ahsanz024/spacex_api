import 'package:http/http.dart' as http;
import 'dart:convert'; // Import the dart:convert library

class Requestor {
  static const _baseUrl = "https://api.spacexdata.com/v4/";

  Future<http.Response> getData({
    required String endpoint,
    String? id,
    Map<String, dynamic>? query,
    Map<String, String>? header,
  }) {
    if (id != null) {
      return getById(endpoint, id);
    } else {
      return postMethod(endpoint, query, header);
    }
  }

  Future<http.Response> getMethod(String endpoint) async {
    final url = Uri.parse("$_baseUrl$endpoint");
    return await http.get(url);
  }

  Future<http.Response> getById(String endpoint, String id) async {
    final url = Uri.parse("$_baseUrl$endpoint/$id");
    return await http.get(url);
  }

  Future<http.Response> postMethod(
    String endpoint,
    Map<String, dynamic>? query,
    Map<String, String>? header,
  ) async {
    final url = Uri.parse("$_baseUrl$endpoint/query");

    if (header == null) {
      header = {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      };
    }

    return await http.post(
      url,
      body: query != null ? jsonEncode(query) : null,
      headers: header,
    );
  }
}
