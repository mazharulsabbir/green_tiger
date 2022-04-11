import 'package:green_tiger/data/model/cart/cart.dart';

import '/constraints/strings.dart';
import 'package:get_storage/get_storage.dart';

final _box = GetStorage(dbName);

class CartStorgae {
  static List<CartModel> getCartItems() {
    final _cartList = _box.read('_cartItems');
    if (_cartList == null) return [];
    List<CartModel> _cartItems = [];

    (_cartList as List).map((e) => _cartItems.add(CartModel.fromJson(e)));

    return _cartItems;
  }

  static Future<void> setItems(List<CartModel> items) async {
    List<Map<String, dynamic>> rawData = [];
    items.map((e) => rawData.add({
          'name': e.name,
          'description': e.description,
          'imageUrl': e.imageUrl,
          'price': e.price,
          'quantity': e.quantity,
          'total': e.total,
        }));

    await _box.write('_cartItems', rawData);
  }

  static void clearCartItems() {
    _box.remove('_cartItems');
  }
}
