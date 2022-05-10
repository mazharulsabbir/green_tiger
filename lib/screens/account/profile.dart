import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:get/get.dart';
import 'package:green_tiger/controller/user/user_controller.dart';
import 'package:green_tiger/utils/common_widgets/index.dart';

import '../../controller/home_controller.dart';
import '../../data/local/storage_utils.dart';

class ProfileScreen extends GetView<UserController> {
  const ProfileScreen({Key? key}) : super(key: key);

  Widget _buildCustomTile(
      {required String title,
      required IconData icon,
      required String? subData}) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.blue,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Row(children: [
            Text(
              subData ?? '-',
              style: TextStyle(color: Colors.grey.shade400),
            ),
            const SizedBox(width: 16),
            Icon(
              Icons.keyboard_arrow_right,
              color: Colors.grey.shade400,
            )
          ]),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey.shade400,
          ),
          onPressed: HomeController.to.removeLastWidget,
        ),
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 4),
        child: controller.obx(
          (state) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                                  color: Colors.black,
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
              const SizedBox(height: 20),
              _buildCustomTile(
                  title: 'Gender',
                  icon: PhosphorIcons.gender_female,
                  subData: state?.gender),
              _buildCustomTile(
                  title: 'Birthday',
                  icon: Icons.calendar_today_outlined,
                  subData: state?.birthday),
              _buildCustomTile(
                  title: 'Email',
                  icon: Icons.email_outlined,
                  subData: state?.email),
              _buildCustomTile(
                  title: 'Phone',
                  icon: Icons.phone_android_sharp,
                  subData: state?.phone),
              ListTile(
                leading: const Icon(
                  PhosphorIcons.lock,
                  color: Colors.blue,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Change Password'),
                    Row(children: [
                      Text(
                        '.............',
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 30,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey.shade400,
                      )
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
