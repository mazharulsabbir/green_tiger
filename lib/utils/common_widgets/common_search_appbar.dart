import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:get/get.dart';
import 'package:green_tiger/controller/cart_controller.dart';

class SearchProductAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const SearchProductAppBar({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
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
          child: GetX<CartController>(
            builder: (controller) {
              if (controller.cartItems.isEmpty) {
                return const Icon(
                  PhosphorIcons.shopping_cart,
                  color: Colors.black,
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
                    color: Colors.black,
                  ),
                );
              }
            },
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
