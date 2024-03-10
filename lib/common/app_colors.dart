import 'package:flutter/material.dart';

class AppColors {
  static const mainTextColor = Color(0xFFCCC8FF);
  static const secondaryTextColor = Color(0xFFCBC9FF);
  static const fourthTextColor = Color(0xFFffffff);
  static const mainColor = Color(0xFF8B88EF);
  static const secondaryMainColor = Color(0xFFB5B2FF);
  static const boxColor = Color(0xFF232A2E);
  static const backgroundColor = Color(0xFF0F1115);

  static const bgGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromARGB(71, 13, 14, 18),
      Color.fromARGB(0, 15, 17, 21),
      Color.fromARGB(71, 13, 14, 18),
      Color.fromARGB(163, 11, 12, 15),
      Color.fromARGB(204, 9, 11, 13),
      Color.fromARGB(255, 0, 0, 0),
      Color.fromARGB(255, 0, 0, 0),
      Color.fromARGB(255, 0, 0, 0),
      Color.fromARGB(255, 0, 0, 0),
    ],
  );
}
