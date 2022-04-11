import 'package:get/get.dart';
import 'package:green_tiger/data/local/cart_storage.dart';
import 'package:green_tiger/data/model/cart/cart.dart';
import 'package:green_tiger/utils/snack_bars/snack_bars.dart';

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

  void addAItem(CartModel cartModel) async {
    CartStorgae.addAItem(cartModel).then((value) {
      _cartItems.add(cartModel);
      print('Present list number${_cartItems.length}');
      MySnackBar.successSnackBar(value);
      update();
    }).onError((e, t) {
      MySnackBar.erorrSnackBar('Already added');
    });
  }

  void editAnItem(CartModel cartModel) async {
    CartStorgae.editAnItem(cartModel).then((_) {
      _cartItems.value = CartStorgae.getCartItems();
      update();
      MySnackBar.successSnackBar('Added successfully');
    }).onError((e, t) {
      MySnackBar.erorrSnackBar(t.toString());
    });
  }

  void removeAnItem(CartModel cartModel) async {
    CartStorgae.removeAItem(cartModel).then((_) {
      _cartItems.remove(cartModel);
      update();
      MySnackBar.successSnackBar('Removed successfully');
    }).onError((e, t) {
      MySnackBar.erorrSnackBar(t.toString());
    });
  }

  void clearItems() {
    CartStorgae.clearCartItems();
    _cartItems.value = [];
    update();
  }
}
