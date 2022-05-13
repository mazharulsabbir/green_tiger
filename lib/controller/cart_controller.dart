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

  Future<void> getCartItemsLo() async {
    List<CartModel> cartItems = CartStorage.getCartItems();
    _cartItems.value = cartItems;
    update();
  }

  void addAItem(CartModel cartModel) async {
    CartStorage.addAItem(cartModel).then((value) {
      _cartItems.add(cartModel);
      MySnackBar.success(value);
      update();
    }).onError((e, t) {
      MySnackBar.error('Already added');
    });
  }

  void editAnItem(CartModel cartModel) async {
    CartStorage.editAnItem(cartModel).then((_) {
      _cartItems.value = CartStorage.getCartItems();
      update();
    }).onError((e, t) {});
  }

  void removeAnItem(CartModel cartModel) async {
    CartStorage.removeAItem(cartModel).then((_) {
      _cartItems.remove(cartModel);
      update();
      MySnackBar.success('Removed successfully');
    }).onError((e, t) {
      MySnackBar.error(t.toString());
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
    CartStorage.clearCartItems();
    _cartItems.value = [];
    update();
  }
}
