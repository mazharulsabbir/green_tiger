import 'package:flutter/material.dart';
import '/controller/auth_controller.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:get/get.dart';

class SocialMediaLoginWidget extends StatelessWidget {
  SocialMediaLoginWidget({Key? key}) : super(key: key);

  final AuthController _authController = Get.find<AuthController>();
  // final AdsController _adsController = Get.find<AdsController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('Login with social media'),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                heroTag: 'signInWithFacebook',
                onPressed: () async {
                  try {
                    final _login = await _authController.signInWithFacebook();
                    // _adsController.showInterstitialAd();
                  } catch (e) {
                    debugPrint("$e");
                  }
                },
                child: const Icon(Icons.facebook),
              ),
              FloatingActionButton(
                heroTag: 'signInWithGoogle',
                onPressed: () async {
                  try {
                    final _login = await _authController.signInWithGoogle();
                    // _adsController.showInterstitialAd();
                  } catch (e) {
                    debugPrint("$e");
                  }
                },
                child: const Icon(PhosphorIcons.google_logo_fill),
              )
            ],
          ),
        ),
      ],
    );
  }
}
