import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:green_tiger/controller/auth_controller.dart';
import '/data/local/storage_utils.dart';

const _baseUrl = "http://139.162.16.146:8069";
String get baseUrl => _baseUrl;

class ApiService {
  final dio.Dio _client = dio.Dio();

  Future<dynamic> get(
    String url, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
  }) async {
    try {
      debugPrint(":: Get $url::");

      final response = await _client.get(
        _baseUrl + url,
        options: dio.Options(
          headers: {
            'Cookie': StorageUtils.getCookie(),
            'Accept': 'application/json',
            'Content-Type': 'application/json'
          },
        ),
        queryParameters: body,
      );

      if (response.statusCode == 200) {
        if (response.data?['error'] != null) {
          debugPrint("${response.data}");

          return Future.error(
            'There was something unexpected happened. Check again.',
          );
        } else {
          return response.data?['result'];
        }
      } else if (response.statusCode == 404) {
        logout();
      } else {
        debugPrint(response.statusCode.toString());
        return Future.error('Failed to load data');
      }
    } on dio.DioError catch (e) {
      debugPrint(e.toString());
      return Future.error(e.message);
    } catch (e) {
      debugPrint(e.toString());
      return Future.error(e.toString());
    }
  }

  Future<dynamic> post(
    String url, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
  }) async {
    try {
      debugPrint(":: Post $url ::");

      final response = await _client.post(
        _baseUrl + url,
        options: dio.Options(
          headers: {
            'Cookie': StorageUtils.getCookie(),
            'Accept': 'application/json',
            'Content-Type': 'application/json'
          },
        ),
        data: body,
      );

      if (response.statusCode == 200) {
        if (response.data?['error'] != null) {
          debugPrint("${response.data}");

          return Future.error(
            'There was something unexpected happened. Check again.',
          );
        } else {
          return response.data?['result'];
        }
      } else if (response.statusCode == 404) {
        logout();
      } else {
        debugPrint(response.statusCode.toString());
        return Future.error('Failed to load data');
      }
    } on dio.DioError catch (e) {
      debugPrint(e.toString());
      return Future.error(e.message);
    } catch (e) {
      debugPrint(e.toString());
      return Future.error(e.toString());
    }
  }

  Future<String?> login(
    String url, {
    Map<String, dynamic>? headers,
    body,
  }) async {
    try {
      debugPrint(":: Login $url::");

      final response = await _client.post(
        _baseUrl + url,
        data: body,
      );
      // debugPrint(":: Response $response::");
      if (response.statusCode == 200) {
        if (response.data?['error'] != null) {
          String? _access = response.data?['error']?['data']?['name'];
          if (_access != null && _access == "odoo.exceptions.AccessDenied") {
            return Future.error(
              'Login Failed! Please check email and password!',
            );
          } else {
            return Future.error(
              'There was something unexpected happened. Check again.',
            );
          }
        } else {
          int? _uid = response.data?['result']?['partner_id'];
          debugPrint("Logged in user id: $_uid");

          List<String>? _cookie = response.headers['set-cookie'];
          String? cookie = _cookie?.first.split(';').first.toString();

          StorageUtils.setLoggedInUserId(_uid);
          StorageUtils.setCookie(cookie);

          return cookie;
        }
      } else {
        return Future.error(
          response.statusMessage ??
              'There was something unexpected happened. Try again later.',
        );
      }
    } on dio.DioError catch (e) {
      debugPrint(e.toString());
      return Future.error(e.message);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  void logout() {
    AuthController.to.logout();
  }
}
