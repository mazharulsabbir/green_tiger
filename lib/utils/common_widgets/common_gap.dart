import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  final int times;
  const Gap({Key? key, this.times = 1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: times * 20,
    );
  }
}
