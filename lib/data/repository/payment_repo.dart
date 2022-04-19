import 'package:green_tiger/data/local/storage_utils.dart';
import 'package:green_tiger/data/remote/api_service.dart';

import '../model/payment/payment_model.dart';

class PaymentRepository {
  final ApiService _apiService;
  PaymentRepository(this._apiService);

  Future<List<PaymentModel>?> getPaymentHistory() async {
    var _partnerId = StorageUtils.loggedInUserId();
    final _body = {
      "params": {
        "data": {
          "model": "res.partner",
          "conditions": {
            "relation": ["&"],
            "condition": [
              {"id": "id", "condition": "=", "value": _partnerId},
              {"id": "active", "condition": "=", "value": true}
            ]
          },
          "fields": [
            {
              "name": "invoice_ids",
              "type": "related",
              "related_fields": [
                {"name": "id", "type": "int"},
                {"name": "name", "type": "str"},
                {"name": "amount_tax", "type": "monetary"},
                {"name": "amount_tax_signed", "type": "monetary"},
                {"name": "amount_total", "type": "monetary"},
                {"name": "amount_total_signed", "type": "monetary"},
                {"name": "amount_untaxed", "type": "monetary"},
                {"name": "amount_untaxed_signed", "type": "monetary"},
                {"name": "date", "type": "date"},
                {"name": "invoice_date", "type": "date"},
                {"name": "invoice_date_due", "type": "date"},
                {"name": "state", "type": "selection"}
              ]
            }
          ]
        }
      }
    };

    try {
      final response =
          await _apiService.post('/api/v1/global/get', body: _body);
      final _result = response?.first['invoice_ids'] as List<dynamic>?;
      final _response = _result?.map((e) => PaymentModel.fromJson(e)).toList();
      return _response;
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}
