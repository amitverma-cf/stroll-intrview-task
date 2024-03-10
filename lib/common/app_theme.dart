import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static final ColorScheme colorScheme =
      ColorScheme.fromSeed(seedColor: AppColors.mainColor);

  static ThemeData lightThemeData = ThemeData(
    colorScheme: colorScheme.copyWith(brightness: Brightness.light),
    useMaterial3: true,
  );

  static ThemeData darkThemeData = ThemeData(
    colorScheme: colorScheme.copyWith(brightness: Brightness.dark),
    useMaterial3: true,
  );
}
