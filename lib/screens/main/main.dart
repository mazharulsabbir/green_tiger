import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
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
      appBar: AppBar(
        // title: const Text('Home'),
        elevation: 0.4,
        title: const TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search),
            hintText: 'Search product or dealers',
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Badge(
              badgeContent: const Text('3'),
              padding: const EdgeInsets.all(4),
              position: BadgePosition.topEnd(top: -5, end: -5),
              child: const Icon(
                PhosphorIcons.shopping_cart,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Badge(
              // badgeContent: const Text('3'),
              padding: const EdgeInsets.all(4),
              position: BadgePosition.topEnd(top: 0, end: 0),
              child: const Icon(
                PhosphorIcons.bell,
                color: Colors.black,
              ),
            ),
          ),
          // IconButton(
          //   icon: const Icon(PhosphorIcons.sign_out, color: Colors.black),
          //   onPressed: () => _authController.setUserLoggedInStatus(false),
          // ),
        ],
      ),
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
