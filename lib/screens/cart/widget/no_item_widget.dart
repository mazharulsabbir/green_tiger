import 'package:flutter/material.dart';

class NoCartItemWidget extends StatelessWidget {
  const NoCartItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Sorry no item to show'),
    );
  }
}
