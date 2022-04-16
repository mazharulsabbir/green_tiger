import 'package:dio/dio.dart' as dio;
import 'dart:convert' as convert;
import 'package:flutter/material.dart';
import 'package:green_tiger/data/local/storage_utils.dart';

const _baseUrl = "http://139.162.16.146:8069";

class ApiService {
  final dio.Dio _client = dio.Dio();

  Future<dynamic> get(
    String url, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
  }) async {
    try {
      debugPrint(":: Get $url::");
      debugPrint(":: Response $body ::");
      final response = await _client.get(
        _baseUrl + url,
        options: dio.Options(
          headers: headers,
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
      } else {
        debugPrint(response.statusCode.toString());
        return Future.error('Failed to load data');
      }
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
        options: dio.Options(headers: headers),
        data: body,
      );
      debugPrint(":: Response $url ::");
      debugPrint(":: Response $url ::");
      debugPrint(":: Response $url ::");
      debugPrint(":: Response $url ::");
      debugPrint(":: Response $url ::");
      debugPrint(":: $response ::");
      debugPrint(":: Response $url ::");
      debugPrint(":: Response $url ::");
      debugPrint(":: Response $url ::");
      debugPrint(":: Response $url ::");
      debugPrint(":: Response $url ::");
      if (response.statusCode == 200) {
        if (response.data?['error'] != null) {
          debugPrint("${response.data}");

          return Future.error(
            'There was something unexpected happened. Check again.',
          );
        } else {
          return response.data?['result'];
        }
      } else {
        debugPrint(response.statusCode.toString());
        return Future.error('Failed to load data');
      }
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
          StorageUtils.setLoggedInUserId(_uid);

          debugPrint("Logged in user id: $_uid");

          List<String>? _cookie = response.headers['set-cookie'];
          String? cookie = _cookie?.first.split(';').first.toString();
          return cookie;
        }
      } else {
        return Future.error(
          response.statusMessage ??
              'There was something unexpected happened. Try again later.',
        );
      }
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}
