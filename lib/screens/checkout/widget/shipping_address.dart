import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:green_tiger/constraints/index.dart';

class ShippingAddressWidget extends StatelessWidget {
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
                'Nahid',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Row(
                children: const [
                  Text('EDIT'),
                  SizedBox(width: 5),
                  Icon(
                    PhosphorIcons.pencil,
                    size: 16,
                  ),
                  SizedBox(width: 15),
                  Icon(PhosphorIcons.trash)
                ],
              )
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            'Address: House #12, Road #12, Block #12, Sector #12, Uttara, Dhaka',
          ),
          const SizedBox(height: 20),
          const Text('Phone: +880123456789'),
        ],
      ),
    );
  }
}
