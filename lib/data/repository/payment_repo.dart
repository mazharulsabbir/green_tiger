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
          "model": "account.payment",
          "conditions": {
            "relation": [],
            "condition": [
              {"id": "partner_id", "condition": "=", "value": _partnerId}
            ]
          },
          "fields": [
            {"name": "id", "type": "int"},
            {"name": "name", "type": "str"},
            {"name": "communication", "type": "str"},
            {"name": "amount", "type": "monetary"},
            {"name": "payment_date", "type": "date"},
            {"name": "state", "type": "selection"},
            {
              "name": "journal_id",
              "type": "related",
              "related_fields": [
                {"name": "id", "type": "int"},
                {"name": "name", "type": "str"}
              ]
            },
            {"name": "has_invoices", "type": "boolean"},
            {"name": "hide_payment_method", "type": "boolean"},
            {
              "name": "invoice_ids",
              "type": "related",
              "related_fields": [
                {"name": "id", "type": "int"},
                {"name": "name", "type": "str"}
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
      final _response = _result?.map((e) => PaymentModel.fromJson(e)).toList();
      return _response;
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}
