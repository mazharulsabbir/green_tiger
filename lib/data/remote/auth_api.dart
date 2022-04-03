import 'dart:convert' as convert;
import 'dart:convert';

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
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
      final data = jsonDecode(response.body);
      if (data["result"] != null) {
        print('Getting cookie');
        String? cookie = response.headers['set-cookie']?.split(';').first;
        print('Response Headers: $cookie');

        var url2 = Uri.parse('http://139.162.16.146:8069/api/notification');
        http.Response? response2 = await http.get(url2, headers: {
          'Cookie': '$cookie',
          'Accept': 'application/json',
          // 'Content-Type': 'application/json'
        });
        print('Response Headers: ${response2.headers}');
        return response2;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
