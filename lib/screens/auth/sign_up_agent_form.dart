import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:get/get.dart';
import '/screens/auth/sign_in.dart';
import '/constraints/index.dart';
import '/utils/button/index.dart';

class AgentSignUpFormPage extends StatefulWidget {
  const AgentSignUpFormPage({Key? key}) : super(key: key);

  @override
  _AgentSignUpFormPageState createState() => _AgentSignUpFormPageState();
}

class _AgentSignUpFormPageState extends State<AgentSignUpFormPage> {
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
              'Register',
              style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 20),
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
            const SizedBox(height: 40),
            TextFormField(
              decoration: textInputDecoration.copyWith(
                hintText: 'Owner Full Name',
                prefixIcon: const Icon(PhosphorIcons.user),
              ),
              textCapitalization: TextCapitalization.words,
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: textInputDecoration.copyWith(
                hintText: 'Store Name',
                prefixIcon: const Icon(PhosphorIcons.storefront),
              ),
              textCapitalization: TextCapitalization.words,
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: textInputDecoration.copyWith(
                hintText: 'Store Size in Sq. Ft',
                prefixIcon: const Icon(PhosphorIcons.square),
              ),
              textCapitalization: TextCapitalization.words,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: textInputDecoration.copyWith(
                hintText: 'Business Type',
                prefixIcon: const Icon(PhosphorIcons.bag),
              ),
              textCapitalization: TextCapitalization.words,
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: textInputDecoration.copyWith(
                hintText: 'Shop Address',
                prefixIcon: const Icon(PhosphorIcons.address_book),
              ),
              textCapitalization: TextCapitalization.words,
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: textInputDecoration.copyWith(
                hintText: 'City',
                prefixIcon: const Icon(Icons.location_city),
              ),
              textCapitalization: TextCapitalization.words,
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: textInputDecoration.copyWith(
                hintText: 'District',
                prefixIcon: const Icon(Icons.local_activity),
              ),
              textCapitalization: TextCapitalization.words,
            ),
            const SizedBox(height: 10),
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
                hintText: 'Owner Phone',
                prefixIcon: const Icon(PhosphorIcons.phone),
              ),
              keyboardType: TextInputType.number,
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
            const PrimaryButtonWidget(
              text: 'Register',
              // onPressed: () => Get.to(
              //   () => const OtpVerificationPage(),
              // ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
