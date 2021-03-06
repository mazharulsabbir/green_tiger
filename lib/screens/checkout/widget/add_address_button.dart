import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_tiger/constraints/index.dart';
import 'package:green_tiger/controller/checkout_controller.dart';
import '../../../controller/home_controller.dart';
import 'address_form_widget.dart';

class EmptyAddressButton extends GetView<CheckoutController> {
  const EmptyAddressButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => HomeController.to.addNewWidget(
        AddressFormWidget(),
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: primaryColor),
          borderRadius: BorderRadius.circular(8),
        ),
        height: 130,
        width: Get.width * 0.95,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.add),
              SizedBox(
                width: 10,
              ),
              Text('Add your shipping address')
            ],
          ),
        ),
      ),
    );
  }
}
