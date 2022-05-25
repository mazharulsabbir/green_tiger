import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:get/get.dart';
import 'package:green_tiger/controller/home_controller.dart';
import 'package:green_tiger/controller/user/contact_address_controller.dart';
import 'package:green_tiger/controller/user/shipping_address_controller.dart';
import 'package:green_tiger/screens/checkout/widget/address_form_widget.dart';
import 'package:green_tiger/utils/button/index.dart';

import '../../constraints/index.dart';

class ContactAndAddressScreen extends GetView<ContactAndAddressController> {
  const ContactAndAddressScreen({Key? key}) : super(key: key);
  Color get secondaryColor => Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.obx(
        (state) => Stack(
          children: [
            ListView.builder(
              padding: const EdgeInsets.only(top: 8),
              itemCount: state?.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () async {
                  await ShippingAddressController.to
                      .saveDefaultAddress(state?[index]);
                  HomeController.to.removeLastWidget();
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: primaryColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            '${state?[index].name}',
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              InkWell(
                                child: Row(
                                  children: [
                                    Text(
                                      'Edit',
                                      style: TextStyle(color: secondaryColor),
                                    ),
                                    const SizedBox(width: 5),
                                    Icon(
                                      PhosphorIcons.pencil,
                                      color: secondaryColor,
                                      size: 16,
                                    ),
                                  ],
                                ),
                                // onTap: () => Get.to(() => AddressFormWidget()),
                              ),
                              const SizedBox(width: 15),
                              InkWell(
                                child: Icon(
                                  PhosphorIcons.trash_simple,
                                  color: secondaryColor,
                                ),
                                onTap: null,
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        '${state?[index].street}',
                        style: TextStyle(color: secondaryColor),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        '${state?[index].phone}',
                        style: TextStyle(color: secondaryColor),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: PrimaryButtonWidget(
                    onPressed: () =>
                        HomeController.to.addNewWidget(AddressFormWidget()),
                    text: 'Add Address',
                    height: 60,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
