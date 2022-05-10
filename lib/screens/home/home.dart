import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_tiger/controller/user/user_controller.dart';
import 'package:green_tiger/screens/home/widget/customer_homepage.dart';
import 'package:green_tiger/screens/home/widget/vendor_dashboard.dart';

class HomeScreen extends GetView<UserController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.state?.isDealer ?? false
          ? const VendorHomepageScreen()
          : const CustomerHomeScreen(),
    );
  }
}
