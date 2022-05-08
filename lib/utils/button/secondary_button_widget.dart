import 'package:flutter/material.dart';

class SecondaryButtonWidget extends StatelessWidget {
  final String text;
  final double height;
  final double? weight;
  final Function()? onPressed;

  const SecondaryButtonWidget({
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
          maxWidth: weight ?? double.infinity,
          minHeight: height,
          maxHeight: height,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.16),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.button?.copyWith(
                    color: Colors.black,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
