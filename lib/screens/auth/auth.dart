import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_tiger/screens/auth/sign_up_agent.dart';
import 'sign_up.dart';
import '/utils/button/index.dart';
import '/constraints/index.dart';
import 'sign_in.dart';
import 'dart:math' as math show pi;

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.symmetric(vertical: 35, horizontal: Get.width * 0.2),
        child: Stack(
          children: const [
            Positioned(
              top: 45,
              left: 0,
              right: 0,
              child: _TopWidget(),
            ),
            Positioned(
              bottom: 27,
              left: 0,
              right: 0,
              child: _BottomWidget(),
            )
          ],
        ),
      ),
    );
  }
}

class _TopWidget extends StatelessWidget {
  const _TopWidget({
    Key? key,
  }) : super(key: key);

  double get _imageSize => Get.height * 0.3;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
          tag: appIconTransparent,
          child: Image.asset(appLogoTransparent, height: 40),
        ),
        Container(
          margin: const EdgeInsets.only(top: 47),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                bottom: -47,
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
                  height: _imageSize,
                  width: _imageSize,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class _BottomWidget extends StatelessWidget {
  const _BottomWidget({
    Key? key,
  }) : super(key: key);

  double get _buttonW => Get.width * 0.5;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          companyThemeText,
          style: Theme.of(context).textTheme.headline4?.copyWith(
                color: Colors.black,
                //FIXME: #5 FontWeight Cannot be made accurate
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 30),
        PrimaryButtonWidget(
          weight: _buttonW,
          text: signupString,
          onPressed: () => Get.to(() => const SignUpPage()),
        ),
        const SizedBox(height: 12),
        SecondaryButtonWidget(
          text: loginString,
          onPressed: () => Get.to(() => const SignInPage()),
        ),
        const SizedBox(height: 20),
        InkWell(
          onTap: () => Get.to(() => const AgentSignUpPage()),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
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
                child: Transform.rotate(
                  angle: -math.pi,
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
                backgroundColor: primaryColor,
                radius: 15,
              )
            ],
          ),
        )
      ],
    );
  }
}
