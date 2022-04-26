import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:green_tiger/controller/cart_controller.dart';
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
          index: controller.activeIndex == 4
              ? controller.navIndex
              : controller.activeIndex,
          children: controller.widgets,
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black.withOpacity(0.5),
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.navIndex,
          onTap: controller.setCurrentIndex,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(PhosphorIcons.house),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: Icon(PhosphorIcons.magnifying_glass),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: GetX<CartController>(
                builder: (controller) {
                  if (controller.cartItems.isEmpty) {
                    return const Icon(
                      PhosphorIcons.shopping_cart,
                    );
                  } else {
                    return Badge(
                      badgeContent: Text(
                        controller.cartItems.length.toString(),
                        style: const TextStyle(color: Colors.white),
                      ),
                      padding: const EdgeInsets.all(4),
                      position: BadgePosition.topEnd(top: -5, end: -5),
                      child: const Icon(
                        PhosphorIcons.shopping_cart,
                      ),
                    );
                  }
                },
              ),
              label: 'Cart',
            ),
            const BottomNavigationBarItem(
              icon: Icon(PhosphorIcons.tag),
              label: 'Offer',
            ),
            const BottomNavigationBarItem(
              icon: Icon(PhosphorIcons.user),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
