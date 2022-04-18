import 'package:green_tiger/data/local/storage_utils.dart';
import 'package:green_tiger/data/remote/api_service.dart';
import '/data/model/country/country.dart';

import 'package:dio/dio.dart' as dio;

class AddressRepository {
  final ApiService _apiService;
  AddressRepository(this._apiService);

  Future<List<Country>> countries() async {
    String? cookie = StorageUtils.getCookie();
    if (cookie != null) {
      final response = await _apiService.post(
        "/api/v1/global/get",
        body: {
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
      print('Response for countries we get');
      print(response);

      List<dynamic> _result = response as List;

      final _response = _result.map((e) => Country.fromJson(e)).toList();

      return _response;
    } else {
      return Future.error("Unauthorized!");
    }
  }
}
