import 'package:flutter/material.dart';

InputDecoration get textInputDecoration => InputDecoration(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.withOpacity(0.1), width: 2),
      ),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 23,
        horizontal: 35,
      ),
      hintStyle:
          const TextStyle(color: Colors.grey, fontWeight: FontWeight.normal),
      fillColor: Colors.grey.shade200,
      filled: true,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.blueAccent.shade100,
        ),
      ),
      enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              5,
            ),
          ),
          borderSide: BorderSide.none),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
        ),
      ),
      isDense: true,
    );
InputDecoration get nonFieldInputDecoration => InputDecoration(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.withOpacity(0.1), width: 2),
      ),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 23,
        horizontal: 35,
      ),
      hintStyle:
          const TextStyle(color: Colors.grey, fontWeight: FontWeight.normal),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey.shade100,
          width: 2,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey.shade100,
          width: 2,
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
