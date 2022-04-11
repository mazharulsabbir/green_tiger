import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_tiger/constraints/index.dart';
import 'package:green_tiger/controller/cart_controller.dart';
import 'package:green_tiger/data/model/cart/cart.dart';

class CartPricingWidget extends GetView<CartController> {
  const CartPricingWidget({
    Key? key,
  }) : super(key: key);

  String getTotal(List<CartModel> cartList) {
    double _total = 0;
    for (final i in cartList) {
      _total = double.parse(i.price ?? '0') * int.parse(i.quantity ?? '1');
    }
    return _total.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(0.2)),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                'Items',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Text(
                '\$' + getTotal(controller.cartItems),
                style: TextStyle(color: Colors.blue[900]),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Text(
                'Shipping',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Text(
                '\$40.00',
                style: TextStyle(color: Colors.blue[900]),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Divider(),
          const SizedBox(height: 10),
          Row(
            children: [
              const Text(
                'Total',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Text(
                (double.parse(getTotal(controller.cartItems)) + 40.0)
                    .toString(),
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
