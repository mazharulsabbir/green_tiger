import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import '/constraints/index.dart';
import '/screens/auth/widget/social_media_login_widget.dart';
import '/utils/button/index.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                children: const [
                  TextSpan(text: 'Login'),
                ],
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            const SizedBox(height: 40),
            TextFormField(
              decoration: textInputDecoration.copyWith(
                hintText: 'Name',
                prefixIcon: const Icon(PhosphorIcons.user),
              ),
              textCapitalization: TextCapitalization.words,
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: textInputDecoration.copyWith(
                hintText: 'Mobile Number',
                prefixIcon: const Icon(PhosphorIcons.phone),
              ),
              keyboardType: TextInputType.number,
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
                hintText: 'Password',
                prefixIcon: const Icon(PhosphorIcons.lock),
              ),
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
            ),
            const SizedBox(height: 10),
            const PrimaryButtonWidget(text: 'Register'),
          ],
        ),
      ),
      bottomNavigationBar: SocialMediaLoginWidget(),
    );
  }
}
