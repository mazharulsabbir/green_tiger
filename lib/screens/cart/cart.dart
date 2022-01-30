import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:get/get.dart';
import 'package:green_tiger/constraints/index.dart';
import 'package:green_tiger/data/local/fake_data_repository.dart';
import 'package:green_tiger/screens/cart/widget/cart_item_widget.dart';
import 'package:green_tiger/screens/checkout/shipping.dart';
import 'package:green_tiger/utils/button/index.dart';

import 'widget/cart_price_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Cart',
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 20),
          Column(
            children: List.generate(
              cartProducts.length,
              (index) => CartItemWidget(cart: cartProducts[index]),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Container(
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter cupon code',
                      prefixIcon: Icon(
                        PhosphorIcons.tag,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.withOpacity(0.2)),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Apply',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          const CartPricingWidget(),
          const SizedBox(height: 50),
          PrimaryButtonWidget(
            text: 'Checkout',
            onPressed: () => Get.to(() => const ShippingAddress()),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
