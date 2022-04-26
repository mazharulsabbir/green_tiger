import 'package:flutter/material.dart';
import 'package:green_tiger/constraints/index.dart';

class OrderDeliveryState extends StatelessWidget {
  final int index;
  const OrderDeliveryState({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          child: const Icon(
            Icons.done,
            color: Colors.white,
          ),
          radius: 16,
          backgroundColor: primaryColor,
        ),
        const SizedBox(height: 10),
        Text(
          _deliveryState[index],
          style: TextStyle(
            color: primaryColor,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}

List<String> _deliveryState = ['Confirm', 'Processing', 'Shipped', 'Delivered'];
