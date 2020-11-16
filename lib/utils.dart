import 'package:http/http.dart';
import 'dart:convert' as convert;

class Utils {
  static dynamic parseResponse(Response response) {
    if (response.statusCode == 200) {
      return convert.jsonDecode(response.body);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
    return {};
  }

  static dynamic getAsList<T>(response, func) {
    final json = Utils.parseResponse(response);
    return json.map((e) => func(e)).cast<T>().toList();
  }
}
