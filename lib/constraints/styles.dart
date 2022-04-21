import 'package:flutter/material.dart';

InputDecoration get textInputDecoration => InputDecoration(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.withOpacity(0.1), width: 2),
      ),
      fillColor: Colors.transparent,
      filled: true,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey.shade400,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey.shade400,
        ),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
        ),
      ),
      isDense: true,
    );
TextStyle get formTitleTextStyle =>
    const TextStyle(fontWeight: FontWeight.bold);
