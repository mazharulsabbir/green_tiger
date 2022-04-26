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
  void onInit() {
    super.onInit();
    _isLoading.value = true;
    update();
    getCartItemsLo();
    _isLoading.value = false;
    update();
  }

  void getCartItemsLo() {
    List<CartModel> cartItems = CartStorgae.getCartItems();
    _cartItems.value = cartItems;
    update();
  }

  void addAItem(CartModel cartModel) {
    CartStorgae.addAItem(cartModel).then((value) {
      _cartItems.add(cartModel);
      MySnackBar.successSnackBar(value);
      update();
    }).onError((e, t) {
      MySnackBar.erorrSnackBar(e.toString());
    });
  }

  void editAnItem(CartModel cartModel) async {
    CartStorgae.editAnItem(cartModel).then((_) {
      _cartItems.value = CartStorgae.getCartItems();
      update();
    }).onError((e, t) {});
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

  void increaseItemQ(CartModel cartModel) {
    CartModel newModel = cartModel.copyWith(
        quantity: (int.parse(cartModel.quantity ?? '1') + 1).toString());
    editAnItem(newModel);
  }

  void decreaseQ(CartModel cartModel) {
    if ((cartModel.quantity ?? '1') == '1') return;
    CartModel newModel = cartModel.copyWith(
        quantity: (int.parse(cartModel.quantity!) - 1).toString());
    editAnItem(newModel);
  }

  void clearItems() {
    CartStorgae.clearCartItems();
    _cartItems.value = [];
    update();
  }
}
