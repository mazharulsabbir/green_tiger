import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_tiger/constraints/index.dart';
import 'package:green_tiger/controller/home_controller.dart';
import '/screens/order/order.dart';
import '/utils/button/index.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Order Placed'),
      // ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              child: const Icon(
                Icons.done,
                color: Colors.white,
                size: 30,
              ),
              radius: 35,
              backgroundColor: primaryColor,
            ),
            const SizedBox(height: 20),
            const Text(
              'Success',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'Thank you for your order!',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            PrimaryButtonWidget(
              text: 'View Order List',
              onPressed: () {
                Get.back();
                HomeController.to.addNewWidget(
                  const OrderScreen(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
