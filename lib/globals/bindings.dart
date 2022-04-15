import 'package:green_tiger/data/repository/auth_repo.dart';
import 'package:green_tiger/data/repository/product_repo.dart';

import '../controller/ads_controller.dart';
import '../controller/checkout_controller.dart';
import '../controller/device_info_controller.dart';
import '../controller/notification_controller.dart';

import '../controller/auth_controller.dart';
import 'package:get/get.dart';
import '../controller/product/product_by_category_controller.dart';
import '../data/repository/address_repo.dart';
import '/controller/cart_controller.dart';
import '../controller/product/category_controller.dart';
import '../controller/product/product_controller.dart';
import '/controller/home_controller.dart';

class GlobalBindings extends Bindings {
  @override
  void dependencies() {
    // repositories
    Get.put(AuthRepository());
    Get.put(ProductRepository());
    Get.put(AddressRepository());

    // controllers
    // Get.put(DeviceInfoController());
    // Get.put(PushNotificationController());
    // Get.put(AdsController());
    Get.put(AuthController());

    // lazy controllers
    Get.lazyPut(() => CheckoutController(), fenix: true);
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => CategoryController(), fenix: true);
    Get.lazyPut(() => ProductByCategoryController(), fenix: true);
    Get.lazyPut(() => ProductController(), fenix: true);
    Get.lazyPut(() => CartController(), fenix: true);
  }
}
