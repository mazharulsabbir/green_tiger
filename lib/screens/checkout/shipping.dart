import 'package:green_tiger/screens/checkout/order_success.dart';
import '../../controller/user/shipping_address_controller.dart';
import 'package:green_tiger/utils/snack_bars/snack_bars.dart';
import '/screens/cart/widget/cart_price_widget.dart';
import 'widget/add_address_button.dart';
import 'package:flutter/material.dart';
import 'widget/shipping_address.dart';
import 'widget/payment_method.dart';
import '/utils/button/index.dart';
import 'package:get/get.dart';

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
            Obx(
              () => controller.defaultAddress == null
                  ? const EmptyAddressButton()
                  : ShippingAddressWidget(
                      defaultShippingAddress: controller.defaultAddress,
                    ),
            ),
            const SizedBox(height: 20),
            const CartPricingWidget(),
            const SizedBox(height: 20),
            const PaymentMethodWidget(),
            const SizedBox(height: 50),
            PrimaryButtonWidget(
              text: 'Next',
              onPressed: () {
                if (controller.defaultAddress == null) {
                  MySnackBar.errorSnackBar('You must have a shipping address');
                  return;
                }

                Get.off(
                  () => const OrderSuccessScreen(),
                );
              },
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
