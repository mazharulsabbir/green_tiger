import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:get/get.dart';
import 'package:green_tiger/common_widgets/common_loading.dart';
import 'package:green_tiger/utils/snack_bars/snack_bars.dart';
import '/controller/auth_controller.dart';
import '/screens/wrapper.dart';
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
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(builder: (_authController) {
      return CommonLoadingOverlay(
        loading: _authController.isLoading,
        child: Scaffold(
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 40,
            ),
            child: Form(
              key: _formKey,
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
                          style:
                              Theme.of(context).textTheme.bodyText1?.copyWith(
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
                    controller: _emailController,
                    decoration: textInputDecoration.copyWith(
                      hintText: 'Email',
                      prefixIcon: const Icon(Icons.email_outlined),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: _passwordController,
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
                    onPressed: () async {
                      if ((_formKey.currentState != null) &&
                          (_formKey.currentState!.validate())) {
                        _authController
                            .loginWithEmailAndPass(
                                email: _emailController.text.trim(),
                                password: _passwordController.text.trim())
                            .then((value) {
                          Get.offAll(() => const Wrapper());
                        }, onError: (error) {
                          MySnackBar.erorrSnackBar(error.toString());
                        });
                      }
                      // _authController.setUserLoggedInStatus(true);
                      // Get.offAll(() => const Wrapper());
                    },
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: SocialMediaLoginWidget(),
        ),
      );
    });
  }
}
