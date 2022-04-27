import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_tiger/controller/order/order_controller.dart';
import 'package:green_tiger/data/local/fake_data_repository.dart';

import '../../controller/home_controller.dart';
import 'widget/order_item_widget.dart';

class OrderScreen extends GetView<OrderController> {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Order List',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: HomeController.to.removeLastWidget,
        ),
        elevation: 0,
      ),
      body: controller.obx(
        (state) => ListView.builder(
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
          itemCount: state?.length,
          itemBuilder: (context, index) => OrderItemWidget(
            order: state![index],
          ),
        ),
      ),
    );
  }
}
