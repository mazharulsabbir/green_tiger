import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:green_tiger/constraints/colors.dart';
import 'package:green_tiger/data/model/user/user.dart';

class MyRadioTile extends StatelessWidget {
  final ContactAndAddress? contactAndAddress;
  const MyRadioTile({Key? key,required this.contactAndAddress}) : super(key: key);
 Color get secondaryColor => Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: primaryColor),
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                '$contactAndAddress.name}',
                style: Theme.of(context).textTheme.headline6?.copyWith(
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
            '$contactAndAddress.street}',
            style: TextStyle(color: secondaryColor),
          ),
          const SizedBox(height: 20),
          Text(
            '$contactAndAddress.phone}',
            style: TextStyle(color: secondaryColor),
          ),
        ],
      ),
    );
  }
}
