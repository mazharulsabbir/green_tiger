import 'package:flutter/material.dart';
import 'package:green_tiger/constraints/index.dart';

class OtpVerificationPage extends StatelessWidget {
  const OtpVerificationPage({Key? key}) : super(key: key);

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
            const SizedBox(height: 40),
            const Text(
              'Phone Verification',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Enter your OTP code below',
              style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 50),
            Card(
              child: TextFormField(
                decoration: textInputDecoration.copyWith(
                  hintText: 'xxxx xxxx xxxx xxxx',
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: CircleAvatar(
                      child: const Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.white,
                        size: 18,
                      ),
                      backgroundColor: primaryColor,
                      // radius: 20,
                    ),
                  ),
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Resend Code in 10 seconds',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
