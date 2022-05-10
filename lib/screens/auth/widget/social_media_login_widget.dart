import 'package:flutter/material.dart';
import 'package:green_tiger/constraints/images.dart';
import 'package:green_tiger/utils/common_widgets/index.dart';
import '/controller/auth_controller.dart';
import 'package:get/get.dart';

class SocialMediaLoginWidget extends StatelessWidget {
  SocialMediaLoginWidget({Key? key}) : super(key: key);

  final AuthController _authController = Get.find<AuthController>();
  // final AdsController _adsController = Get.find<AdsController>();

  double get socialButtonSize => 40;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('Or login with social'),
        Gap.custom(
          height: 17,
        ),
        Container(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          decoration: const BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox.square(
                dimension: socialButtonSize,
                child: FloatingActionButton(
                  heroTag: 'signInWithGoogle',
                  backgroundColor: Colors.transparent,
                  elevation: 0.0,
                  onPressed: () async {
                    try {
                      final _login = await _authController.signInWithGoogle();
                      // _adsController.showInterstitialAd();
                    } catch (e) {
                      debugPrint("$e");
                    }
                  },
                  child: Image.asset(googleLogo),
                ),
              ),
              SizedBox.square(
                dimension: socialButtonSize,
                child: FloatingActionButton(
                  heroTag: 'signInWithFacebook',
                  onPressed: () async {
                    try {
                      final _login = await _authController.signInWithFacebook();
                      // _adsController.showInterstitialAd();
                    } catch (e) {
                      debugPrint("$e");
                    }
                  },
                  child: Image.asset(facebookLogo),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
