import 'package:flutter/material.dart';
import 'package:green_tiger/controller/home_controller.dart';
import 'package:green_tiger/data/model/order/order.dart';

import '../order_details.dart';

class OrderItemWidget extends StatelessWidget {
  final Order order;
  const OrderItemWidget({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => HomeController.to.addNewWidget(
        OrderDetailsScreen(order: order),
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpacity(0.3)),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${order.orderNumber}',
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text('Order Date: ${order.date}'),
            const SizedBox(height: 12),
            const Divider(thickness: 2.5),
            const SizedBox(height: 12),
            Row(
              children: [
                const Text('Order Status'),
                const Spacer(),
                Text('${order.status}'),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const Text('Items'),
                const Spacer(),
                Text('${order.orderLines?.length ?? 0} Items Purchased'),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const Text('Price'),
                const Spacer(),
                Text('\$${order.price}'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
