import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_tiger/screens/checkout/order_success.dart';
import '../../controller/user/shipping_address_controller.dart';
import '/screens/cart/widget/cart_price_widget.dart';
import '/utils/button/index.dart';
import 'widget/add_address_button.dart';
import 'widget/payment_method.dart';
import 'widget/shipping_address.dart';

class ShippingAddress extends GetView<ShippingAddressController> {
  const ShippingAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment & Shipping Details'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          children: [
            controller.defaultShippingAddress == null
                ? const EmptyAddressButton()
                : ShippingAddressWidget(),
            const SizedBox(height: 20),
            const CartPricingWidget(),
            const SizedBox(height: 20),
            const PaymentMethodWidget(),
            const SizedBox(height: 50),
            PrimaryButtonWidget(
              text: 'Next',
              onPressed: () => Get.off(
                () => const OrderSuccessScreen(),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
