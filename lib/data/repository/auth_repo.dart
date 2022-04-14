import 'package:dio/dio.dart' as dio;
import 'package:green_tiger/data/remote/api_service.dart';

class AuthRepository {
  final _dio = dio.Dio();

  Future<dynamic> login({
    required String email,
    required String password,
  }) async {
    final _body = {
      "params": {"db": "gt-dev-feb27", "login": email, "password": password}
    };

    try {
      final response = await ApiService.login(
        '/web/session/authenticate',
        _dio,
        body: _body,
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
      );
      return response;
    } catch (e) {
      return Future.error("$e");
    }
  }
}
