import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/data/model/country/country.dart';

import 'package:get/get.dart';

class CountryApi extends GetConnect {
  Future<List<Country>> countries() async {
    final response = await post(
      "http://139.162.16.146:8069/api/v1/global/public/get",
      jsonEncode({
        "params": {
          "data": {
            "model": "res.country",
            "conditions": {"relation": [], "condition": []},
            "fields": [
              {"name": "id", "type": "int"},
              {"name": "name", "type": "str"},
              {"name": "phone_code", "type": "int"},
              {"name": "code", "type": "str"},
              {
                "name": "currency_id",
                "type": "related",
                "related_fields": [
                  {"name": "id", "type": "int"},
                  {"name": "name", "type": "str"}
                ]
              },
              {
                "name": "state_ids",
                "type": "related",
                "related_fields": [
                  {"name": "id", "type": "int"},
                  {"name": "name", "type": "str"},
                  {"name": "code", "type": "str"}
                ]
              }
            ]
          }
        }
      }),
    );

    debugPrint(response.bodyString ?? "None");
    debugPrint(response.request?.url.toString() ?? "Url not found");

    if (response.status.hasError) {
      debugPrint("Error to get countries: ${response.statusCode}");
      return Future.error("Error to get countries: ${response.statusText}");
    }

    final _response = (response.body['result'] as List<dynamic>)
        .map((e) => Country.fromJson(e))
        .toList();

    return _response;
  }
}
