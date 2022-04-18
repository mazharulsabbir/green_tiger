import 'package:flutter/material.dart';
import 'index.dart';
import '/controller/auth_controller.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:get/get.dart';

import '/controller/home_controller.dart';
import '/utils/index.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SearchProductAppBar(),
      body: Obx(
        () => IndexedStack(
          index: controller.currentIndex,
          children: const [
            HomeScreen(),
            ExploreScreen(),
            CartScreen(),
            OfferScreen(),
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
