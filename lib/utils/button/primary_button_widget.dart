import 'package:flutter/material.dart';
import 'package:green_tiger/constraints/index.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final String text;
  final double height;
  final double? weight;
  final Function()? onPressed;

  const PrimaryButtonWidget({
    Key? key,
    required this.text,
    this.height = 48,
    this.weight,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 20,
          minHeight: height,
          maxHeight: height,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .button
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
