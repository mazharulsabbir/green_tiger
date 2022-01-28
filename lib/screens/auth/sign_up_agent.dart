import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/screens/auth/sign_in.dart';
import '/constraints/index.dart';
import '/utils/button/index.dart';
import 'sign_up_agent_form.dart';

class AgentSignUpPage extends StatefulWidget {
  const AgentSignUpPage({Key? key}) : super(key: key);

  @override
  _AgentSignUpPageState createState() => _AgentSignUpPageState();
}

class _AgentSignUpPageState extends State<AgentSignUpPage> {
  int _selectedIndex = 0;
  final _userTypes = ['Become a dealer', 'Become an agent', 'Corporate'];

  changeCurrentIndex(value) {
    setState(() {
      _selectedIndex = int.parse(value.toString());
    });
  }

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
            const SizedBox(height: 30),
            Column(
              children: List.generate(
                _userTypes.length,
                (index) => Container(
                  decoration: BoxDecoration(
                    border: _selectedIndex == index ? Border.all() : null,
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  margin: const EdgeInsets.only(bottom: 10),
                  child: RadioListTile(
                    value: index.toString(),
                    title: Text(_userTypes[index]),
                    groupValue: _selectedIndex.toString(),
                    onChanged: changeCurrentIndex,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            PrimaryButtonWidget(
              text: 'Join Green Tiger',
              onPressed: () => Get.to(
                () => const AgentSignUpFormPage(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
