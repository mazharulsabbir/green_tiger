import 'package:flutter/material.dart';
import 'package:green_tiger/constraints/index.dart';

abstract class _BaseTextField extends StatelessWidget {
  const _BaseTextField({
    Key? key,
    required this.hintText,
    this.textCapitalization,
    this.inputType,
    this.isPass = false,
  }) : super(key: key);

  final String hintText;
  final TextCapitalization? textCapitalization;
  final TextInputType? inputType;
  final bool isPass;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(fontWeight: FontWeight.bold),
      decoration: textInputDecoration.copyWith(
        hintText: hintText,
      ),
      keyboardType: inputType,
      textCapitalization: textCapitalization ?? TextCapitalization.none,
      obscureText: isPass,
    );
  }
}

class CustomFormField extends _BaseTextField {
  CustomFormField({
    required String hintText,
    TextCapitalization? textCapitalization,
    TextInputType? inputType,
  }) : super(hintText: hintText, textCapitalization: textCapitalization);
}

class CustomPasswordField extends _BaseTextField {
  CustomPasswordField({required String hintText})
      : super(
            hintText: hintText,
            textCapitalization: TextCapitalization.none,
            isPass: true);
}
