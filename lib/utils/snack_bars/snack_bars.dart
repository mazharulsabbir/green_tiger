import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MySnackBar extends SnackbarController {
  MySnackBar(String bodyMessage,
      [String title = 'Success',
      Color textColor = Colors.white,
      Duration snDuration = const Duration(seconds: 2),
      SnackPosition snPosition = SnackPosition.BOTTOM])
      : super(GetSnackBar(
          message: bodyMessage,
          titleText: Text(title, style: TextStyle(color: textColor)),
          duration: snDuration,
          snackPosition: snPosition,
          backgroundColor: Colors.green,
        ));

  MySnackBar.success(String bodyMessage, [String title = 'Success'])
      : super(GetSnackBar(
          message: bodyMessage,
          titleText: Text(title, style: const TextStyle(color: Colors.white)),
          duration: const Duration(seconds: 2),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
        ));
  // static successSnackBar(String bodyMessage, [String title = 'Success']) {
  //   return Get.snackbar(
  //     title,
  //     bodyMessage,
  //     colorText: Colors.white,
  //     duration: const Duration(seconds: 2),
  //     snackPosition: SnackPosition.BOTTOM,
  //     backgroundColor: Colors.green,
  //   );
  // }
  MySnackBar.error(String _errorMessage, [String title = 'Failed'])
      : super(GetSnackBar(
          message: _errorMessage,
          titleText: Text(title, style: const TextStyle(color: Colors.white)),
          duration: const Duration(seconds: 2),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
        ));
  // static errorSnackBar(String bodyMessage, [String title = 'Failed']) {
  //   return Get.snackbar(
  //     title,
  //     bodyMessage,
  //     duration: const Duration(seconds: 2),
  //     snackPosition: SnackPosition.BOTTOM,
  //     backgroundColor: Colors.red.shade800,
  //     colorText: Colors.white,
  //   );
  // }
}
