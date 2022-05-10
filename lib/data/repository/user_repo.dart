import 'package:green_tiger/data/model/user/user.dart';
import 'package:green_tiger/data/remote/api_service.dart';

class UserRepository {
  final ApiService _apiService;
  UserRepository(this._apiService);

  Future<UserModel?> getUserProfileById(int uid) async {
    final _body = {
      "params": {
        "data": {
          "model": "res.users",
          "conditions": {
            "relation": ["&"],
            "condition": [
              {"id": "partner_id.id", "condition": "=", "value": uid},
              {"id": "active", "condition": "=", "value": true}
            ]
          },
          "fields": [
            {"name": "id", "type": "int"},
            {"name": "name", "type": "str"},
            {"name": "email", "type": "str"},
            {"name": "image_1920", "type": "binary"},
            {"name": "image_256", "type": "binary"},
            {"name": "type", "type": "str"},
            {"name": "phone", "type": "str"},
            {"name": "mobile", "type": "str"},
            {"name": "gender", "type": "str"},
            {"name": "birthday", "type": "str"},
            {"name": "is_dealer", "type": "bool"},
            {
              "name": "country_id",
              "type": "related",
              "related_fields": [
                {"name": "id"},
                {"name": "name"}
              ]
            },
            {
              "name": "state_id",
              "type": "related",
              "related_fields": [
                {"name": "id", "type": "int"},
                {"name": "name", "type": "str"},
                {"name": "code", "type": "str"}
              ]
            },
            {"name": "zip", "type": "char"},
            {
              "name": "currency_id",
              "type": "related",
              "related_fields": [
                {"name": "id", "type": "int"},
                {"name": "name", "type": "str"}
              ]
            },
            {"name": "contact_address", "type": "char"},
            {"name": "contact_address_complete", "type": "char"}
          ]
        }
      }
    };

    try {
      final response = await _apiService.post(
        "/api/v1/global/get",
        body: _body,
      );
      final _response = response as List<dynamic>?;
      final _user = _response?.map((e) => UserModel.fromJson(e)).toList();
      return _user?.first;
    } catch (e) {
      return Future.error(e);
    }
  }

  Future<List<ContactAndAddress>?> getUserContactAndAddressById(int uid) async {
    final _body = {
      "params": {
        "data": {
          "model": "res.partner",
          "conditions": {
            "relation": ["&"],
            "condition": [
              {"id": "id", "condition": "=", "value": uid},
              {"id": "active", "condition": "=", "value": true}
            ]
          },
          "fields": [
            {
              "name": "child_ids",
              "type": "related",
              "related_fields": [
                {"name": "id", "type": "int"},
                {"name": "name", "type": "str"},
                {"name": "street", "type": "str"},
                {"name": "city", "type": "str"},
                {"name": "zip", "type": "str"},
                {"name": "mobile", "type": "str"},
                {"name": "email", "type": "str"},
                {"name": "phone", "type": "str"},
                {"name": "type", "type": "str"},
                {
                  "name": "state_id",
                  "type": "related",
                  "related_fields": [
                    {"name": "id", "type": "int"},
                    {"name": "name", "type": "str"},
                    {"name": "code", "type": "str"}
                  ]
                },
                {
                  "name": "country_id",
                  "type": "related",
                  "related_fields": [
                    {"name": "id", "type": "int"},
                    {"name": "name", "type": "str"},
                    {"name": "code", "type": "str"}
                  ]
                }
              ]
            }
          ]
        }
      }
    };

    try {
      final response = await _apiService.post(
        "/api/v1/global/get",
        body: _body,
      );
      final _response = response as List<dynamic>?;

      final _address = _response?.first['child_ids'] as List<dynamic>?;
      final _result =
          _address?.map((e) => ContactAndAddress.fromJson(e)).toList();
      return _result;
    } catch (e) {
      return Future.error(e);
    }
  }
}
