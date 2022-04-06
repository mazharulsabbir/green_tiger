import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:device_info/device_info.dart';

class DeviceInfoController extends GetxController {

  AndroidDeviceInfo? androidInfo;
  IosDeviceInfo? iosInfo;
  
  @override
  void onInit() {
    super.onInit();
    _getDeviceInfo();
  }

  Future<void> _getDeviceInfo() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Platform.isAndroid) {
  AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
  debugPrint('Running on ${androidInfo.model}'); // e.g. "Moto G (4)"
} else if (Platform.isIOS) {
  IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
   debugPrint('Running on ${iosInfo.utsname.machine}'); 
}


    update();
  }
}
