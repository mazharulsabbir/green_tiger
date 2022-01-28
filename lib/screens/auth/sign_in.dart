import 'package:flutter/material.dart';
import 'package:green_tiger/constraints/colors.dart';
import 'package:green_tiger/constraints/strings.dart';
import '/constraints/images.dart';
import '/controller/ads_controller.dart';
import '/controller/auth_controller.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:get/get.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Hero(
                  tag: appIconTransparent,
                  child: Image.asset(appLogoTransparent, height: 45),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 40),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        bottom: -50,
                        child: Image.asset(
                          bikeBackgroundImage,
                          height: 180,
                          width: 235,
                          color: Colors.grey.withOpacity(0.2),
                        ),
                      ),
                      Transform.rotate(
                        angle: -0.2,
                        child: Image.asset(
                          bikeImage,
                          height: 200,
                          width: 200,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  companyThemeText,
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 300,
                    minHeight: 48,
                    maxHeight: 48,
                  ),
                  child: Container(
                    decoration: BoxDecoration(color: primaryColor),
                    child: Center(
                      child: Text(
                        signupString,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.button?.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 300,
                    minHeight: 48,
                    maxHeight: 48,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    child: Center(
                      child: Text(
                        loginString,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.button?.copyWith(
                              color: Colors.black,
                            ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      agentSignupString,
                      style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(width: 10),
                    CircleAvatar(
                      child: const Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.white,
                        size: 18,
                      ),
                      backgroundColor: primaryColor,
                      radius: 15,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
      // bottomNavigationBar: SocialMediaLoginWidget(),
    );
  }
}

class SocialMediaLoginWidget extends StatelessWidget {
  SocialMediaLoginWidget({Key? key}) : super(key: key);

  final AuthController _authController = Get.find<AuthController>();
  final AdsController _adsController = Get.find<AdsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
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
                _adsController.showInterstitialAd();
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
                _adsController.showInterstitialAd();
              } catch (e) {
                debugPrint("$e");
              }
            },
            child: const Icon(PhosphorIcons.google_logo_fill),
          )
        ],
      ),
    );
  }
}
