import 'package:flutter/material.dart';
import 'package:green_tiger/utils/common_widgets/common_search_appbar.dart';
import 'index.dart';
import '/controller/auth_controller.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:get/get.dart';

import '/controller/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthController _authController = Get.find<AuthController>();

    return Scaffold(
      appBar: const SearchProductAppBar(),
      body: Obx(
        () => IndexedStack(
          index: controller.currentIndex,
          children: [
            const HomeScreen(),
            const ExploreScreen(),
            const CartScreen(),
            const OfferScreen(),
            AccountScreen(),
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black.withOpacity(0.5),
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.currentIndex,
          onTap: controller.setCurrentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(PhosphorIcons.house),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(PhosphorIcons.magnifying_glass),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(PhosphorIcons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(PhosphorIcons.tag),
              label: 'Offer',
            ),
            BottomNavigationBarItem(
              icon: Icon(PhosphorIcons.user),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
