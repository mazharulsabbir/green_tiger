import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:get/get.dart';
import 'package:green_tiger/screens/auth/widget/my_textfield.dart';
import 'package:green_tiger/utils/common_widgets/common_gap.dart';
import '/screens/auth/otp_verification.dart';
import '/screens/auth/sign_in.dart';
import '/constraints/index.dart';
import '/screens/auth/widget/social_media_login_widget.dart';
import '/utils/button/index.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  double get fieldGap => 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 40,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Hero(
                tag: appIconTransparent,
                child: Image.asset(appLogoTransparent, height: 45),
              ),
              const SizedBox(height: 20),
              Text(
                'Register',
                style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Gap.custom(
                height: 12,
              ),
              RichText(
                text: TextSpan(
                  text: 'Already have an account?',
                  children: [
                    TextSpan(
                      text: ' Login',
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.off(() => const SignInPage()),
                    ),
                  ],
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                ),
              ),
              const SizedBox(height: 30),
              CustomFormField(
                hintText: 'Name',
                textCapitalization: TextCapitalization.words,
              ),
              SizedBox(height: fieldGap),
              CustomFormField(
                hintText: 'Mobile Number',
                inputType: TextInputType.number,
              ),
              SizedBox(height: fieldGap),
              CustomFormField(
                hintText: 'Email',
                inputType: TextInputType.emailAddress,
              ),
              SizedBox(height: fieldGap),
              CustomPasswordField(
                hintText: 'password',
              ),
              SizedBox(height: fieldGap),
              PrimaryButtonWidget(
                text: 'Register',
                onPressed: () => Get.to(
                  () => const OtpVerificationPage(),
                ),
              ),
              Gap.custom(
                height: 25,
              ),
              SocialMediaLoginWidget()
            ],
          ),
        ),
      ),
    );
  }
}
