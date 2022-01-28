import 'package:flutter/material.dart';

InputDecoration get textInputDecoration => InputDecoration(
      border: const OutlineInputBorder(borderSide: BorderSide.none),
      fillColor: Colors.grey.withOpacity(0.2),
      filled: true,
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
      isDense: true,
    );
