import 'package:get/get.dart';
import 'package:green_tiger/controller/user/shipping_address_controller.dart';
import 'package:green_tiger/data/local/address_storage.dart';
import 'package:green_tiger/data/model/checkout/address/shipping_address.dart';
import 'package:green_tiger/data/model/country/country.dart';

import '../data/repository/address_repo.dart';

class CheckoutController extends GetxController {
  final AddressRepository _repository;
  final ShippingAddressController _shippingAddressController;
  CheckoutController(this._repository, this._shippingAddressController);

  static CheckoutController get to => Get.find();

  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;

  @override
  void onInit() async {
    super.onInit();
  }
}
