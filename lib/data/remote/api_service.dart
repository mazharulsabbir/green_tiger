import 'package:dio/dio.dart' as dio;
import 'dart:convert' as convert;
import 'package:flutter/material.dart';

const _baseUrl = "http://139.162.16.146:8069";

class ApiService {
  static Future<dynamic> get(
    String url,
    dio.Dio client, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
  }) async {
    try {
      debugPrint(":: Get $url::");
      debugPrint(":: Response $body ::");
      final response = await client.get(
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

  static Future<dynamic> post(
    String url,
    dio.Dio client, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
  }) async {
    try {
      debugPrint(":: Post $url ::");

      final response = await client.post(
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

  static Future<dynamic> login(
    String url,
    dio.Dio client, {
    Map<String, dynamic>? headers,
    body,
  }) async {
    try {
      debugPrint(":: Login $url::");

      final response = await client.post(
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
          List<String>? _cookie = response.headers['set-cookie'];
          String? cookie = _cookie?.first.split(';').first.toString();
          return cookie;
        }
      } else {
        return Future.error('');
      }
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}
