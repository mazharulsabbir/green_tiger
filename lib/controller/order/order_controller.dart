import 'package:get/get.dart';
import 'package:green_tiger/data/model/order/order.dart';
import 'package:green_tiger/data/repository/order_repo.dart';

class OrderController extends GetxController with StateMixin<List<Order>> {
  final OrderRepository _orderRepository;
  OrderController(this._orderRepository);

  @override
  void onInit() {
    super.onInit();
    _getMyOrders();
  }

  Future<void> _getMyOrders() async {
    await _orderRepository.getOrderList().then((value) {
      change(value, status: RxStatus.success());
    }).catchError((error) {
      change(null, status: RxStatus.error(error.toString()));
    });
  }

  Future<void> refreshMyOrders() async {
    change(null, status: RxStatus.loading());
    await _getMyOrders();
  }
}
