import 'package:flutter/material.dart';
import 'package:food_delivery/core/theme/color_theme.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    colorScheme: const ColorScheme(
      primary: ColorTheme.primaryColor,
      primaryContainer: Colors.amberAccent,
      secondary: Colors.amber,
      secondaryContainer: Colors.amberAccent,
      surface: Color(0xFFE040FB),
      background: Colors.amber,
      error: Colors.greenAccent,
      onPrimary: Colors.blueAccent,
      onSecondary: Colors.deepOrange,
      onSurface: Colors.limeAccent,
      onBackground: Colors.red,
      onError: Colors.redAccent,
      brightness: Brightness.light,
    ),
  );
}
