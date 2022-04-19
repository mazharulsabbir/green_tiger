import 'package:green_tiger/data/remote/api_service.dart';
import '/data/model/country/country.dart';

class AddressRepository {
  final ApiService _apiService;
  AddressRepository(this._apiService);

  Future<List<Country>> countries() async {
    try {
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
      );

      List<dynamic> _result = response as List;
      print('Countris');
      print(_result);
      final _response = _result.map((e) => Country.fromJson(e)).toList();

      return _response;
    } catch (e) {
      return Future.error("$e");
    }
  }
}
