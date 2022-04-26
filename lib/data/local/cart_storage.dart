import 'package:green_tiger/data/model/cart/cart.dart';
import 'package:green_tiger/utils/snack_bars/snack_bars.dart';

import '/constraints/strings.dart';
import 'package:get_storage/get_storage.dart';

final _box = GetStorage(dbName);

class CartStorgae {
  static List<CartModel> getCartItems() {
    final _cartList = _box.read('_cartItems');
    if (_cartList == null) return [];
    List<CartModel> _cartItems = [];
    for (final e in _cartList) {
      _cartItems.add(CartModel.fromJson(e));
    }
    return _cartItems;
  }

  static Future<void> setItems(List<CartModel> items) async {
    List<Map<String, dynamic>> rawData = [];
    for (final e in items) {
      rawData.add({
        'name': e.name,
        'description': e.description,
        'imageUrl': e.imageUrl,
        'price': e.price,
        'quantity': e.quantity,
        'total': e.total,
      });
    }

    await _box.write('_cartItems', rawData);
  }

  static Future<dynamic> addAItem(CartModel cartModel) async {
    var availbleItems = getCartItems();
    if (availbleItems.contains(cartModel)) {
      return Future.error('Item already added');
    }
    availbleItems.add(cartModel);

    await setItems(availbleItems);
    return Future.value('Added successfully');
  }

  static Future<void> removeAItem(CartModel cartModel) async {
    var availbleItems = getCartItems();
    // if (!(availbleItems.contains(cartModel))) return;
    availbleItems.remove(cartModel);
    await setItems(availbleItems);
  }

  static Future<void> editAnItem(CartModel cartModel) async {
    var availbleItems = getCartItems();

    CartModel item = availbleItems
        .firstWhere((element) => element.imageUrl == cartModel.imageUrl);
    int index = availbleItems.indexOf(item);
    availbleItems[index] = cartModel;
    await setItems(availbleItems);
  }

  static void clearCartItems() {
    _box.remove('_cartItems');
  }
}
