import 'package:http/http.dart';
import 'dart:convert' as convert;

class Utils {
  /// Response as it comes from the server converted to JSON
  static dynamic parseResponseAsJson(Response response) {
    if (response.statusCode == 200) {
      return convert.jsonDecode(response.body);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
    return {};
  }

  /// [response] from the server.
  ///
  /// [func] is passed as the `<T>.fromJson` for any model
  static dynamic convertResponseToList<T>(Response response, func) {
    final json = Utils.parseResponseAsJson(response);
    return json.map((e) => func(e)).cast<T>().toList();
  }
}
