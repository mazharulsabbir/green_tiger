import 'package:green_tiger/data/model/cart/cart.dart';
import 'package:green_tiger/utils/snack_bars/snack_bars.dart';

import '/constraints/strings.dart';
import 'package:get_storage/get_storage.dart';

final _box = GetStorage(dbName);

class CartStorage {
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
    List<Map<String, dynamic>> rawData = items.map((e) => e.toJson()).toList();
    await _box.write('_cartItems', rawData);
  }

  static Future<dynamic> addAItem(CartModel cartModel) async {
    var availableItems = getCartItems();
    if (availableItems.contains(cartModel)) {
      return Future.error('Sorry already added');
    }
    availableItems.add(cartModel);

    await setItems(availableItems);
    return Future.value('Added successfully');
  }

  static Future<void> removeAItem(CartModel cartModel) async {
    var availableItems = getCartItems();
    // if (!(availableItems.contains(cartModel))) return;
    availableItems.remove(cartModel);
    await setItems(availableItems);
  }

  static Future<void> editAnItem(CartModel cartModel) async {
    var availableItems = getCartItems();
    int _index = availableItems
        .indexWhere((element) => element.imageUrl == cartModel.imageUrl);
    if (_index.isNegative) {
      availableItems.add(cartModel);
      await setItems(availableItems);
    } else {
      availableItems.removeAt(_index);
      availableItems.insert(_index, cartModel);
      await setItems(availableItems);
    }
  }

  static void clearCartItems() {
    _box.remove('_cartItems');
  }
}
