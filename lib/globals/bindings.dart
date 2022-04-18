import 'package:green_tiger/controller/user/shipping_address_controller.dart';
import 'package:green_tiger/controller/user/user_controller.dart';
import 'package:green_tiger/data/remote/api_service.dart';
import 'package:green_tiger/data/repository/auth_repo.dart';
import 'package:green_tiger/data/repository/product_repo.dart';
import 'package:green_tiger/data/repository/user_repo.dart';
import '../controller/checkout_controller.dart';
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
    // service
    Get.put(ApiService());

    // repositories
    Get.put(AuthRepository(Get.find()));
    Get.put(ProductRepository(Get.find()));
    Get.put(AddressRepository(Get.find()));
    Get.put(UserRepository(Get.find()));

    // controllers
    // Get.put(DeviceInfoController());
    // Get.put(PushNotificationController());
    // Get.put(AdsController());
    Get.put(AuthController(Get.find()));
    Get.put(ShippingAddressController(Get.find()));

    // lazy controllers
    Get.lazyPut(() => CheckoutController(Get.find(), Get.find()), fenix: true);
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => UserController(Get.find(), Get.find()), fenix: true);
    Get.lazyPut(() => CategoryController(Get.find()), fenix: true);
    Get.lazyPut(() => ProductByCategoryController(Get.find()), fenix: true);
    Get.lazyPut(() => ProductController(Get.find()), fenix: true);
    Get.lazyPut(() => CartController(), fenix: true);
  }
}
