import 'package:green_tiger/data/model/user/user.dart';
import 'package:green_tiger/data/remote/api_service.dart';

class UserRepository {
  final ApiService _apiService;
  UserRepository(this._apiService);

  Future<UserModel?> getUserProfileById(int uid) async {
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
            {"name": "id", "type": "int"},
            {"name": "name", "type": "str"},
            {"name": "email", "type": "str"},
            {"name": "image_1920", "type": "binary"},
            {"name": "image_256", "type": "binary"},
            {"name": "type", "type": "str"},
            {"name": "phone", "type": "str"},
            {"name": "mobile", "type": "str"},
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
      final _response = response as List<dynamic>;
      final _user = _response.map((e) => UserModel.fromJson(e)).toList();
      return _user.isNotEmpty ? _user.first : null;
    } catch (e) {
      return Future.error(e);
    }
  }
}
