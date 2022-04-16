import 'package:dio/dio.dart' as dio;
import 'package:green_tiger/data/remote/api_service.dart';

class AuthRepository {
  final ApiService _apiService;
  AuthRepository(this._apiService);

  Future<dynamic> login({
    required String email,
    required String password,
  }) async {
    final _body = {
      "params": {"db": "gt-dev-feb27", "login": email, "password": password}
    };

    try {
      final response = await _apiService.login(
        '/web/session/authenticate',        
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
