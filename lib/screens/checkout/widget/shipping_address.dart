import 'package:green_tiger/controller/home_controller.dart';
import 'package:green_tiger/data/model/checkout/address/shipping_address.dart';
import 'package:green_tiger/controller/user/shipping_address_controller.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:green_tiger/constraints/index.dart';
import 'package:flutter/material.dart';
import 'address_form_widget.dart';
import 'package:get/get.dart';

class ShippingAddressWidget extends StatelessWidget {
  const ShippingAddressWidget({Key? key, required this.defaultShippingAddress})
      : super(key: key);
  final ShippingAddress? defaultShippingAddress;

  Color get secondaryColor => Colors.grey;
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
                '${defaultShippingAddress?.firstName}',
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
                      children: [
                        Text(
                          'EDIT',
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
                    onTap: () => HomeController.to.addNewWidget(
                      AddressFormWidget(),
                    ),
                  ),
                  const SizedBox(width: 15),
                  InkWell(
                    child: Icon(
                      PhosphorIcons.trash,
                      color: secondaryColor,
                    ),
                    onTap: Get.find<ShippingAddressController>().clearAddress,
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 20),
          defaultShippingAddress?.streetAddress2 == null
              ? Text(
                  '${defaultShippingAddress?.streetAddress1}',
                  style: TextStyle(color: secondaryColor),
                )
              : Text(
                  '${defaultShippingAddress?.streetAddress1}, ${defaultShippingAddress?.streetAddress2}',
                  style: TextStyle(
                    color: secondaryColor,
                  ),
                ),
          const SizedBox(height: 20),
          Text(
            '${defaultShippingAddress?.phone}',
            style: TextStyle(color: secondaryColor),
          ),
        ],
      ),
    );
  }
}
