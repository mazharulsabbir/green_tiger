import 'package:get/get.dart';
import 'package:green_tiger/data/model/payment/payment_model.dart';

import '../../data/repository/payment_repo.dart';

class PaymentController extends GetxController
    with StateMixin<List<PaymentModel>> {
  final PaymentRepository _paymentRepository;
  PaymentController(this._paymentRepository);

  @override
  void onInit() {
    super.onInit();
    _getPaymentHistory();
  }

  Future<void> _getPaymentHistory() async {
    await _paymentRepository
        .getPaymentHistory()
        .then((value) => change(value, status: RxStatus.success()))
        .catchError((error) {
      change(null, status: RxStatus.error(error.toString()));
    });
  }

  Future<void> refreshPaymentHistory() async {
    return await _getPaymentHistory();
  }
}
