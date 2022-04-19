import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:get/get.dart';
import 'package:green_tiger/constraints/index.dart';
import 'package:green_tiger/controller/user/shipping_address_controller.dart';

import 'address_form_widget.dart';

class ShippingAddressWidget extends GetView<ShippingAddressController> {
  const ShippingAddressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: primaryColor),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                controller.defaultShippingAddress!.firstName!,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(fontWeight: FontWeight.bold),
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
                    onTap: () => Get.to(() => AddressFormWidget()),
                  ),
                  const SizedBox(width: 15),
                  InkWell(
                    child: const Icon(PhosphorIcons.trash),
                    onTap: controller.clearAddress,
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 20),
          controller.defaultShippingAddress!.streetAddress2 == null
              ? Text(
                  '${controller.defaultShippingAddress!.streetAddress1}',
                )
              : Text(
                  '${controller.defaultShippingAddress!.streetAddress1}, ${controller.defaultShippingAddress!.streetAddress2}',
                ),
          const SizedBox(height: 20),
          Text(controller.defaultShippingAddress!.phone!),
        ],
      ),
    );
  }
}
