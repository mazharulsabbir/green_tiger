import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_tiger/controller/payment/payment_controller.dart';

class PaymentHistoryScreen extends GetView<PaymentController> {
  const PaymentHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payments'),
      ),
      body: controller.obx(
        (state) => ListView.builder(
          itemCount: state?.length,
          itemBuilder: (context, index) => ListTile(
            title: Text("${state?[index].name}"),
            subtitle: Text("${state?[index].date}"),
            trailing: Text("${state?[index].amountTotal.toString()}"),
          ),
        ),
      ),
    );
  }
}
