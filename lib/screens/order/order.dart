import 'package:flutter/material.dart';
import 'package:green_tiger/data/local/fake_data_repository.dart';

import 'widget/order_item_widget.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order List'),
      ),
      body: ListView.builder(
        itemCount: orderList.length,
        itemBuilder: (context, index) => OrderItemWidget(
          order: orderList[index],
        ),
      ),
    );
  }
}

