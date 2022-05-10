import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:get/get.dart';
import 'package:green_tiger/controller/user/user_controller.dart';

import '../../controller/home_controller.dart';
import '../../data/local/storage_utils.dart';

class ProfileScreen extends GetView<UserController> {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: HomeController.to.removeLastWidget,
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
        child: controller.obx(
          (state) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              ListTile(
                leading: const Icon(PhosphorIcons.gender_intersex),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Gender'),
                    Row(children: [
                      Text(state?.gender ?? '-'),
                      const SizedBox(width: 16),
                      const Icon(Icons.keyboard_arrow_right)
                    ]),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(PhosphorIcons.calendar),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Birthday'),
                    Row(children: [
                      Text(state?.birthday ?? '-'),
                      const SizedBox(width: 16),
                      const Icon(Icons.keyboard_arrow_right)
                    ]),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.email),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Email'),
                    Row(children: [
                      Text(state?.email ?? '-'),
                      const SizedBox(width: 16),
                      const Icon(Icons.keyboard_arrow_right)
                    ]),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.call),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Phone'),
                    Row(children: [
                      Text(state?.phone ?? '-'),
                      const SizedBox(width: 16),
                      const Icon(Icons.keyboard_arrow_right)
                    ]),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.lock),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Change Password'),
                    Row(children: const [
                      Text('**************'),
                      SizedBox(width: 16),
                      Icon(Icons.keyboard_arrow_right)
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
