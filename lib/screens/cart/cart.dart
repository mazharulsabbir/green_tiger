import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_tiger/constraints/index.dart';
import 'package:green_tiger/controller/cart_controller.dart';
import 'package:green_tiger/controller/home_controller.dart';
import 'package:green_tiger/screens/cart/widget/cart_item_widget.dart';
import 'package:green_tiger/screens/cart/widget/no_item_widget.dart';
import 'package:green_tiger/screens/checkout/shipping.dart';
import 'package:green_tiger/utils/button/index.dart';
import 'widget/cart_price_widget.dart';
import 'dart:math' as math;

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<CartController>(builder: (controller) {
      if (controller.cartItems.isNotEmpty) {
        return SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: HomeController.to.removeLastWidget,
                    icon: Transform.rotate(
                      angle: math.pi * 2,
                      child: const Icon(
                        Icons.arrow_back_ios,
                      ),
                    ),
                  ),
                  // Gap.horizontal(10),
                  Text(
                    'Your Cart',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                children: List.generate(
                  controller.cartItems.length,
                  (index) => CartItemWidget(cart: controller.cartItems[index]),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 60,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.only(left: 20, bottom: 10),
                          border: InputBorder.none,
                          hintText: 'Enter coupon code',
                          hintStyle: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 14,
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
                    height: 60,
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
              const SizedBox(height: 30),
              PrimaryButtonWidget(
                text: 'Check out',
                height: 60,
                onPressed: () => HomeController.to.addNewWidget(
                  const ShippingAddress(),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        );
      } else {
        return const NoCartItemWidget();
      }
    });
  }
}
