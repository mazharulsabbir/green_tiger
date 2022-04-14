import 'package:flutter/material.dart';
import '/screens/auth/auth.dart';
import '/controller/auth_controller.dart';
import 'main/main.dart';
import 'package:get/get.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<AuthController>(
        init: AuthController(),
        builder: (controller) {
          if (controller.isUserLoggedIn) {
            return const HomePage();
          } else {
            return const AuthPage();
          }
        });
  }
}
