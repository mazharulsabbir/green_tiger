import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:green_tiger/constraints/images.dart';
import 'package:green_tiger/controller/cart_controller.dart';
import 'package:green_tiger/data/model/cart/cart.dart';

void main() {
  late CartController cartController;

  setUp(() {
    Get.testMode = true;
    cartController = Get.put(CartController());
    cartController.clearItems();
  });
  group('Testing Cart controller', () {
    test('Fetching and adding item testing.', () async {
      cartController.getCartItemsLo();
      CartModel _cartModel = CartModel(
          name: 'Test product',
          description: 'Dummy description',
          imageUrl: staticNetIm,
          price: '20',
          quantity: '1',
          total: '50');
      expect(cartController.cartItems, isEmpty);
      // // Testing addition of cart item
      cartController.addAItem(_cartModel);
      // expect(cartController.cartItems, isNotEmpty);
      // expect(cartController.cartItems.first.name, 'Test product');

      // ///Testing editing of the of the previous item
      // CartModel _editedItem = _cartModel.copyWith(name: 'Edited item');
      // cartController.editAnItem(_editedItem);
      // expect(cartController.cartItems.first.name, equals('Edited item'));

      // //Testing increasing item quantity
      // CartModel _increasedQItemModel = _cartModel.copyWith(quantity: '2');
      // cartController.increaseItemQ(_increasedQItemModel);
      // expect(cartController.cartItems.first.quantity, '3');

      // //Testing decreasing item
      // CartModel _decreaseTestModel1 = _cartModel.copyWith(quantity: '2');
      // cartController.decreaseQ(_decreaseTestModel1);
      // expect(cartController.cartItems.first.quantity, equals('1'));

      // //Testing decreasing item whent aitem quantity at one
      // CartModel _decreaseTestModel2 = _cartModel.copyWith(quantity: '1');
      // cartController.decreaseQ(_decreaseTestModel2);
      // expect(cartController.cartItems.first.quantity, equals('1'));
    });
  });
}
