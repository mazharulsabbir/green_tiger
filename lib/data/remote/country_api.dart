import 'package:flutter/foundation.dart';
import 'package:green_tiger/controller/auth_controller.dart';
import '/data/model/country/country.dart';
import 'package:get/get.dart';

class CountryApi extends GetConnect {
  Future<List<Country>> countries() async {
    String? cookie = AuthController.to.coockie;
    if (cookie != null) {
      final response = await post(
        "http://139.162.16.146:8069/api/v1/global/get",
        {
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
        },
        headers: {
          'Cookie': cookie,
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
      );

      debugPrint(response.request?.url.toString() ?? "Url not found");

      if (response.status.hasError) {
        debugPrint("Error to get countries: ${response.statusCode}");
        // return Future.error("Error to get countries: ${response.statusText}");
        return [];
      }

      final _response = (response.body['result'] as List<dynamic>)
          .map((e) => Country.fromJson(e))
          .toList();

      return _response;
    } else {
      return [];
    }
  }
}
