import 'package:flutter/material.dart';
import '../../controller/home_controller.dart';
import '../../data/model/order/order.dart';
import 'widget/line_item_widget.dart';

class OrderDetailsScreen extends StatelessWidget {
  final Order order;
  const OrderDetailsScreen({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Order details',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => HomeController.to.removeLastWidget(),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: List.generate(
                order.orderLines?.length ?? 0,
                (index) => LineItemWidget(orderLine: order.orderLines?[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
