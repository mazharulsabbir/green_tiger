import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:get/get.dart';
import 'package:green_tiger/controller/auth_controller.dart';
import 'package:green_tiger/screens/home/home.dart';
import 'package:green_tiger/screens/wrapper.dart';
import '/constraints/index.dart';
import '/utils/button/index.dart';

import 'sign_up.dart';
import 'widget/social_media_login_widget.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final AuthController _authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 40,
        ),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Hero(
              tag: appIconTransparent,
              child: Image.asset(appLogoTransparent, height: 45),
            ),
            const SizedBox(height: 20),
            Text(
              'Login',
              style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 20),
            RichText(
              text: TextSpan(
                text: 'Not have an account?',
                children: [
                  TextSpan(
                    text: ' Register',
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Get.off(() => const SignUpPage()),
                  ),
                ],
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      color: Colors.black,
                      fontSize: 12,
                    ),
              ),
            ),
            const SizedBox(height: 40),
            TextFormField(
              decoration: textInputDecoration.copyWith(
                hintText: 'Email',
                prefixIcon: const Icon(Icons.email_outlined),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: textInputDecoration.copyWith(
                hintText: 'Password',
                prefixIcon: const Icon(PhosphorIcons.lock),
              ),
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
            ),
            const SizedBox(height: 10),
            PrimaryButtonWidget(
              text: 'Login',
              onPressed: () {
                _authController.setUserLoggedInStatus(true);
                Get.offAll(() => const Wrapper());
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: SocialMediaLoginWidget(),
    );
  }
}
