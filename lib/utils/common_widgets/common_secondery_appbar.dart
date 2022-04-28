import 'package:flutter/material.dart';
import 'package:green_tiger/controller/home_controller.dart';

class CommonSecondaryAppBar extends StatelessWidget {
  final String title;
  const CommonSecondaryAppBar({Key? key, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: Colors.white,
      child: Container(
        height: 60,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            GestureDetector(
              onTap: HomeController.to.removeLastWidget,
              child: const Icon(
                (Icons.arrow_back_ios),
              ),
            ),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
