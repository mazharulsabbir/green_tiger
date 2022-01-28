import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_tiger/screens/auth/sign_up_agent.dart';
import 'sign_up.dart';
import '/utils/button/index.dart';
import '/constraints/index.dart';
import 'sign_in.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: TopWidget(),
          ),
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: BottomWidget(),
          )
        ],
      ),
    );
  }
}

class TopWidget extends StatelessWidget {
  const TopWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}

class BottomWidget extends StatelessWidget {
  const BottomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
        PrimaryButtonWidget(
          text: signupString,
          onPressed: () => Get.to(() => const SignUpPage()),
        ),
        const SizedBox(height: 10),
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
                child: const Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.white,
                  size: 18,
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
