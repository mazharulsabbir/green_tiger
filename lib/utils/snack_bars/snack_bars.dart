import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class MySnackBar {
  static successSnackBar(String boyMessage, [String title = 'Success']) {
    return Get.snackbar(
      title,
      boyMessage,
      duration: const Duration(seconds: 2),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
    );
  }

  static erorrSnackBar(String boyMessage, [String title = 'Failed']) {
    return Get.snackbar(title, boyMessage,
        duration: const Duration(seconds: 2),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white);
  }
}
