import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class AuthApiServices {
  static Future<http.Response?> login(
      {required String email, required String password}) async {
    String _body = convert.jsonEncode({
      "params": {"db": "gt-dev-feb27", "login": email, "password": password}
    });

    try {
      var url =
          Uri.parse('http://139.162.16.146:8069/web/session/authenticate');
      http.Response response = await http.post(
        url,
        body: _body,
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
      );
      return response;
    } catch (e) {
      return null;
    }
  }
}
