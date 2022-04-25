import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class MySnackBar {
  static successSnackBar(String bodyMessage, [String title = 'Success']) {
    return Get.snackbar(
      title,
      bodyMessage,
      colorText: Colors.white,
      duration: const Duration(seconds: 2),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
    );
  }

  static errorSnackBar(String bodyMessage, [String title = 'Failed']) {
    return Get.snackbar(
      title,
      bodyMessage,
      duration: const Duration(seconds: 2),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red.shade800,
      colorText: Colors.white,
    );
  }
}
