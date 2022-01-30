import 'package:flutter/material.dart';
import '/screens/cart/widget/cart_price_widget.dart';
import '/utils/button/index.dart';
import 'widget/payment_method.dart';
import 'widget/shipping_address.dart';

class ShippingAddress extends StatelessWidget {
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
          children: const [
            ShippingAddressWidget(),
            SizedBox(height: 20),
            CartPricingWidget(),
            SizedBox(height: 20),
            PaymentMethodWidget(),
            SizedBox(height: 50),
            PrimaryButtonWidget(text: 'Next'),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
