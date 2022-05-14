import 'package:flutter/material.dart';
import 'package:green_tiger/constraints/index.dart';

abstract class _BaseTextField extends StatelessWidget {
  const _BaseTextField({
    Key? key,
    this.textCapitalization,
    this.inputDecoration,
    this.controller,
    this.validator,
    this.inputType,
    this.hintText,
    this.isPass = false,
  }) : super(key: key);

  final TextCapitalization? textCapitalization;
  final String? Function(String?)? validator;
  final InputDecoration? inputDecoration;
  final TextEditingController? controller;
  final TextInputType? inputType;
  final String? hintText;
  final bool isPass;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: const TextStyle(fontWeight: FontWeight.bold),
      decoration: inputDecoration ??
          textInputDecoration.copyWith(
            hintText: hintText,
          ),
      keyboardType: inputType,
      textCapitalization: textCapitalization ?? TextCapitalization.none,
      validator: validator,
      obscureText: isPass,
    );
  }
}

class CustomFormField extends _BaseTextField {
  CustomFormField({
    String? hintText,
    TextCapitalization? textCapitalization,
    TextEditingController? controller,
    final String? Function(String?)? validator,
    TextInputType? inputType,
  }) : super(
            hintText: hintText,
            textCapitalization: textCapitalization,
            controller: controller,
            validator: validator);
}

class CustomNonFilledField extends _BaseTextField {
  CustomNonFilledField({
    String? hintText,
    TextCapitalization? textCapitalization,
    TextEditingController? controller,
    final String? Function(String?)? validator,
    TextInputType? inputType,
  }) : super(
            hintText: hintText,
            textCapitalization: textCapitalization,
            controller: controller,
            inputDecoration: nonFieldInputDecoration,
            validator: validator);
}

class CustomPasswordField extends _BaseTextField {
  CustomPasswordField({required String hintText})
      : super(
            hintText: hintText,
            textCapitalization: TextCapitalization.none,
            isPass: true);
}
