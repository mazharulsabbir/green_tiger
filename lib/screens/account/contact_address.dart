import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_tiger/controller/user/contact_address_controller.dart';

class ContactAndAddressScreen extends GetView<ContactAndAddressController> {
  const ContactAndAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact and Address')),
      body: controller.obx(
        (state) => ListView.builder(
          itemCount: state?.length,
          itemBuilder: ((context, index) => ListTile(
                title: Text('${state?[index].name}'),
                subtitle: Text('${state?[index].phone}'),
              )),
        ),
      ),
    );
  }
}
