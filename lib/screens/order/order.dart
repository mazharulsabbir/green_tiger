import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_tiger/controller/order/order_controller.dart';
import 'package:green_tiger/data/local/fake_data_repository.dart';

import 'widget/order_item_widget.dart';

class OrderScreen extends GetView<OrderController> {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order List'),
      ),
      body: controller.obx(
        (state) => ListView.builder(
          itemCount: state?.length,
          itemBuilder: (context, index) => OrderItemWidget(
            order: state![index],
          ),
        ),
      ),
    );
  }
}
