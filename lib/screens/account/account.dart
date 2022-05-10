import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:get/get.dart';
import 'package:green_tiger/controller/home_controller.dart';
import 'package:green_tiger/controller/user/user_controller.dart';
import 'package:green_tiger/data/local/storage_utils.dart';
import 'package:green_tiger/screens/account/contact_address.dart';
import 'package:green_tiger/screens/order/order.dart';
import 'package:green_tiger/screens/payment/payment_screen.dart';
import 'package:green_tiger/utils/common_widgets/common_gap.dart';
import 'profile.dart';

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
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxHeight: 90,
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 90,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: CachedNetworkImageProvider(
                              "${state?.avatar}",
                              headers: {
                                "Cookie": "${StorageUtils.getCookie()}"
                              },
                            ),
                          ),
                        ),
                      ),
                      Gap.custom(
                        weight: 25,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${state?.name}',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                            Gap.custom(
                              height: 7,
                            ),
                            Text(
                              '${state?.email}',
                              style: const TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      )
                    ]),
              ),
            ),
            // ListTile(
            //   leading: Container(
            //     height: 90,
            //     width: 90,
            //     color: Colors.red,
            //     // decoration: BoxDecoration(
            //     //   image: DecorationImage(
            //     //     image: CachedNetworkImageProvider(
            //     //       "${state?.avatar}",
            //     //       headers: {"Cookie": "${StorageUtils.getCookie()}"},
            //     //     ),
            //     //   ),
            //     // ),
            //   ),
            //   title: Text(
            //     '${state?.name}',
            //     style: const TextStyle(fontWeight: FontWeight.w700),
            //   ),
            //   subtitle: Text('${state?.email}'),
            // ),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(PhosphorIcons.user),
              title: const Text('Profile'),
              onTap: () => HomeController.to.addNewWidget(
                const ProfileScreen(),
              ),
            ),
            ListTile(
              leading: const Icon(PhosphorIcons.shopping_bag),
              title: const Text('My Orders'),
              // onTap: () => Get.to(() => const OrderDetailsScreen()),
              onTap: () => HomeController.to.addNewWidget(
                const OrderScreen(),
              ),
            ),
            ListTile(
              leading: const Icon(PhosphorIcons.map_pin),
              title: const Text('Address'),
              onTap: () => HomeController.to.addNewWidget(
                const ContactAndAddressScreen(),
              ),
            ),
            ListTile(
              leading: const Icon(PhosphorIcons.wallet),
              title: const Text('Payment'),
              onTap: () => HomeController.to.addNewWidget(
                const PaymentHistoryScreen(),
              ),
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
      onError: (error) => Center(
        child: ListTile(
          leading: const Icon(Icons.exit_to_app),
          title: const Text('Logout'),
          onTap: () => controller.logout(),
        ),
      ),
    );
  }
}
