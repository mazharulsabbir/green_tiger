import 'package:flutter/material.dart';

ThemeData theme(BuildContext context) => ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.green,
      scaffoldBackgroundColor: Colors.grey[100],
      backgroundColor: Colors.white,
      fontFamily: 'Poppins',
      textTheme: const TextTheme(
        bodyText1: TextStyle(color: Colors.black),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        titleTextStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: Colors.black,
              fontFamily: 'Ubuntu',
            ),
        elevation: 0,
      ),
    );

ThemeData darkTheme() => ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.amber,
      scaffoldBackgroundColor: const Color(0xFF121212),
      backgroundColor: Colors.black,
      textTheme: const TextTheme(
        bodyText1: TextStyle(color: Colors.white),
      ),
    );
