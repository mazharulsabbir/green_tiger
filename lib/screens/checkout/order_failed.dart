import 'package:flutter/material.dart';
import 'package:green_tiger/controller/home_controller.dart';
import 'package:green_tiger/utils/button/index.dart';

class OrderFailedScreen extends StatelessWidget {
  const OrderFailedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Order Placed'),
      // ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircleAvatar(
              child: Icon(
                Icons.done,
                color: Colors.white,
                size: 30,
              ),
              radius: 35,
              backgroundColor: Colors.red,
            ),
            const SizedBox(height: 20),
            const Text(
              'Failed!',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'Your order has been failed. Please try again.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            SecondaryButtonWidget(
              text: 'Back to Home',
              onPressed: () => HomeController.to.setCurrentIndex(0),
            ),
          ],
        ),
      ),
    );
  }
}
