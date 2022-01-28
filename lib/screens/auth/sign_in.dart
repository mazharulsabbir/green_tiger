import 'package:flutter/material.dart';

import 'widget/social_media_login_widget.dart';

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
        children: const [],
      ),
      bottomNavigationBar: SocialMediaLoginWidget(),
    );
  }
}
