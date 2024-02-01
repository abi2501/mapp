import 'package:flutter/material.dart';

const COLOR_BLACK = Color.fromRGBO(48, 47, 48, 1.0);
const COLOR_GREY = Color.fromRGBO(141, 141, 141, 1.0);
const COLOR_OFF_WHITE = Color.fromARGB(255, 245, 245, 247);

const COLOR_OFF_GREY = Color(0xFF080C2F);

const COLOR_WHITE = Colors.white;
const COLOR_PRIMARY_BLUE = Color(0xFF51A8FF);

const TextTheme TEXT_THEME_DEFAULT = TextTheme(
  displayLarge:
      TextStyle(fontSize: 96, fontWeight: FontWeight.w300, color: Colors.black),
  displayMedium:
      TextStyle(fontSize: 60, fontWeight: FontWeight.w400, color: Colors.black),
  displaySmall:
      TextStyle(fontSize: 48, fontWeight: FontWeight.w400, color: Colors.black),
  headlineLarge:
      TextStyle(fontSize: 40, fontWeight: FontWeight.w600, color: Colors.white),
  headlineMedium:
      TextStyle(fontSize: 34, fontWeight: FontWeight.w400, color: Colors.black),
  headlineSmall:
      TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: Colors.black),
  titleLarge:
      TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
  titleMedium:
      TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
  bodyLarge: TextStyle(
      fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFFFFFFFF)),
  bodyMedium:
      TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
  bodySmall: TextStyle(
      fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black54),
  labelLarge:
      TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
);

ThemeData appTheme = ThemeData(
  fontFamily: 'Poppins',
  // primaryColor: COLOR_WHITE,
  textTheme: TEXT_THEME_DEFAULT,
  scaffoldBackgroundColor: const Color(0xFFF8FAFF),
);
