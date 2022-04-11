import 'package:get/get.dart';
import 'package:green_tiger/data/local/cart_storage.dart';
import 'package:green_tiger/data/model/cart/cart.dart';

class CartController extends GetxController {
  static CartController get to => Get.find();

  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;

  final _cartItems = <CartModel>[].obs;
  List<CartModel> get cartItems => _cartItems;
  set cartItems(List<CartModel> value) => _cartItems.value = value;

  @override
  void onInit() async {
    super.onInit();
    _isLoading.value = true;
    update();
    await getCartItemsLo();
    _isLoading.value = false;
    update();
  }

  Future<void> getCartItemsLo() async {
    List<CartModel> cartItems = CartStorgae.getCartItems();
    _cartItems.value = cartItems;
    update();
  }

  void clearItems() {
    CartStorgae.clearCartItems();
    _cartItems.value = [];
    update();
  }
}
