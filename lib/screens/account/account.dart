import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:get/get.dart';
import 'package:green_tiger/controller/user/user_controller.dart';
import 'package:green_tiger/screens/account/contact_address.dart';
import 'package:green_tiger/screens/checkout/shipping.dart';
import 'package:green_tiger/screens/order/order.dart';

import '../../data/local/storage_utils.dart';

class AccountScreen extends GetView<UserController> {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return controller.obx(
      (state) => SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Account',
                style: Theme.of(context).textTheme.headline6?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  border: Border.all(width: 0.03),
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(
                      "${state?.avatar}",
                      headers: {"Cookie": "${StorageUtils.getCookie()}"},
                    ),
                  ),
                ),
              ),
              title: Text('${state?.name}'),
              subtitle: Text('${state?.email}'),
            ),
            const SizedBox(height: 20),
            const ListTile(
              leading: Icon(PhosphorIcons.user),
              title: Text('Profile'),
            ),
            ListTile(
              leading: const Icon(PhosphorIcons.shopping_bag),
              title: const Text('My Orders'),
              onTap: () => Get.to(() => const OrderScreen()),
            ),
            ListTile(
              leading: const Icon(PhosphorIcons.map_pin),
              title: const Text('Address'),
              onTap: () => Get.to(() => const ContactAndAddressScreen()),
            ),
            const ListTile(
              leading: Icon(PhosphorIcons.wallet),
              title: Text('Payment'),
            ),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Logout'),
              onTap: () => controller.logout(),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
