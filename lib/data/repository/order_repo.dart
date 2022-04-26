import 'package:green_tiger/data/local/storage_utils.dart';
import 'package:green_tiger/data/remote/api_service.dart';

import '../model/order/order.dart';

class OrderRepository {
  final ApiService _apiService;
  OrderRepository(this._apiService);

  Future<List<Order>?> getOrderList() async {
    var _partnerId = StorageUtils.loggedInUserId();
    final _body = {
      "params": {
        "data": {
          "model": "sale.order",
          "conditions": {
            "relation": [],
            "condition": [
              {"id": "partner_id", "condition": "=", "value": _partnerId}
            ]
          },
          "fields": [
            {"name": "id", "type": "int"},
            {"name": "name", "type": "str"},
            {"name": "state", "type": "str"},
            {"name": "date_order", "type": "str"},
            {"name": "commitment_date", "type": "str"},
            {"name": "expected_date", "type": "str"},
            {"name": "amount_total", "type": "float"},
            {
              "name": "order_line",
              "type": "related",
              "related_fields": [
                {
                  "name": "product_template_id",
                  "type": "related",
                  "related_fields": [
                    {"name": "id", "type": "int"},
                    {"name": "name", "type": "char"}
                  ]
                },
                {"name": "id", "type": "int"},
                {"name": "name", "type": "char"},
                {"name": "product_uom_qty", "type": "float"},
                {
                  "name": "product_uom",
                  "type": "related",
                  "related_fields": [
                    {"name": "id"},
                    {"name": "name"}
                  ]
                },
                {"name": "price_unit", "type": "float"},
                {"name": "image_1920", "type": "binary"},
                {
                  "name": "tax_id",
                  "type": "related",
                  "related_fields": [
                    {"name": "id"},
                    {"name": "name"}
                  ]
                },
                {"name": "discount", "type": "float"},
                {
                  "name": "currency_id",
                  "type": "related",
                  "related_fields": [
                    {"name": "id", "type": "int"},
                    {"name": "name", "type": "str"}
                  ]
                },
                {"name": "price_subtotal", "type": "float"}
              ]
            }
          ]
        }
      }
    };
    try {
      final response =
          await _apiService.post('/api/v1/global/get', body: _body);
      final _result = response as List<dynamic>?;
      final _response = _result?.map((e) => Order.fromJson(e)).toList();
      return _response;
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}
