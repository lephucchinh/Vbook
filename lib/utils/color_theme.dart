import 'package:flutter/material.dart';

import 'text_theme.dart';

class DAppTheme {
  // Light theme
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: DTextTheme.lightTextTheme,
    fontFamily: 'Quicksand',
    useMaterial3: true,
    colorSchemeSeed: const Color(0xFFF55050), // màu chủ đạo của ứng dụng
  );

  // Dark theme
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: DTextTheme.darkTextTheme,
    fontFamily: 'Quicksand',
    useMaterial3: true,
    colorSchemeSeed: const Color(0xFFF55050),
  );
}