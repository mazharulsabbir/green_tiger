import 'package:flutter/foundation.dart';

const baseUrl = 'http://139.162.16.146:8069';

String urlBuilder(
  String endpoint, {
  List<String>? params,
  String? fields,
  int? limit,
  String? withParam,
}) {
  String _baseUrl = "$baseUrl/$endpoint";

  if (params != null) {
    if (params.isNotEmpty) {
      for (var param in params) {
        _baseUrl += "$param&";
      }
    } else {
      _baseUrl += "";
    }
  }

  debugPrint("URL: /$endpoint");
  return _baseUrl;
}

Map<String, String> commonHeader() {
  return {'Accept': "application/json"};
}
