import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:get/get.dart';
import 'package:green_tiger/constraints/index.dart';
import 'package:green_tiger/controller/auth_controller.dart';

class AccountScreen extends StatelessWidget {
  AccountScreen({Key? key}) : super(key: key);

  final AuthController _controller = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(profilePictureImage),
                ),
              ),
            ),
            title: const Text('Maximus Gold'),
            subtitle: const Text('@deriaxy'),
          ),
          const SizedBox(height: 20),
          const ListTile(
            leading: Icon(PhosphorIcons.user),
            title: Text('Profile'),
          ),
          const ListTile(
            leading: Icon(PhosphorIcons.shopping_bag),
            title: Text('My Orders'),
          ),
          const ListTile(
            leading: Icon(PhosphorIcons.map_pin),
            title: Text('Address'),
          ),
          const ListTile(
            leading: Icon(PhosphorIcons.wallet),
            title: Text('Payment'),
          ),
          const SizedBox(height: 100),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () => _controller.setUserLoggedInStatus(false),
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
