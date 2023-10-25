import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
  useMaterial3: true,
  fontFamily: "Serala",
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          25,
        ),
      ),
    ),
  ),
);