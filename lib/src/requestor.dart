import 'package:http/http.dart' as http;

class Requestor {
  static const _baseUrl = "https://api.spacexdata.com/v4/";

  Future<dynamic> getData({
    String endpoint,
    String id = null,
    Object query = null,
    Object header = null,
  }) {
    if (id != null) {
      return getById(endpoint, id);
    } else if (query != null) {
      return postMethod(endpoint, query, header);
    }
    return getMethod(endpoint);
  }

  getMethod(String endpoint) async {
    final url = "$_baseUrl$endpoint";
    return await http.get(url);
  }

  getById(String endpoint, String id) async {
    final url = "$_baseUrl$endpoint/$id";
    return await http.get(url);
  }

  postMethod(String endpoint, Object query, Object header) async {
    final url = "$_baseUrl$endpoint/query";

    if (header == null) {
      header = {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      };
    }
    return await http.post(
      url,
      body: query,
      headers: header,
    );
  }
}
