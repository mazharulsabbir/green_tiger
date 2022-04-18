import 'package:flutter/material.dart';
import '/screens/auth/auth.dart';
import '/controller/auth_controller.dart';
import 'main/main.dart';
import 'package:get/get.dart';

class Wrapper extends GetView<AuthController> {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.isUserLoggedIn ? const HomePage() : const AuthPage(),
    );
  }
}
