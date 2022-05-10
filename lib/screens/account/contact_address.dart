import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:get/get.dart';
import 'package:green_tiger/controller/user/contact_address_controller.dart';

import '../../constraints/index.dart';
import '../../controller/home_controller.dart';

class ContactAndAddressScreen extends GetView<ContactAndAddressController> {
  const ContactAndAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Address',
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
          padding: const EdgeInsets.only(top: 8),
          itemCount: state?.length,
          itemBuilder: (context, index) => Container(
            decoration: BoxDecoration(
              border: Border.all(color: primaryColor),
              borderRadius: BorderRadius.circular(8),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      '${state?[index].name}',
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        InkWell(
                          child: Row(
                            children: const [
                              Text(
                                'EDIT',
                              ),
                              SizedBox(width: 5),
                              Icon(
                                PhosphorIcons.pencil,
                                size: 16,
                              ),
                            ],
                          ),
                          // onTap: () => Get.to(() => AddressFormWidget()),
                        ),
                        const SizedBox(width: 15),
                        const InkWell(
                          child: Icon(PhosphorIcons.trash),
                          onTap: null,
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Text('${state?[index].street}'),
                const SizedBox(height: 20),
                Text('${state?[index].phone}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
