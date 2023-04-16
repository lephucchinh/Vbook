import 'package:flutter/material.dart';

const Color customMagenta50 = Color(0xfffcd5ce);
const Color customMagenta100 = Color(0xfffaac9d);
const Color customMagenta300 = Color(0xfff8836c);
const Color customMagenta400 = Color(0xfff65a3b);

const Color customMagenta900 = Color(0xfff4310a);
const Color customMagenta600 = Color(0xffc32708);

const Color customErrorRed = Color(0xFFC5032B);

const Color customSurfaceWhite = Color(0xFFFFFBFA);
const Color customBackgroundWhite = Colors.white;

class DColorScheme {
  static const ColorScheme lightColorScheme = ColorScheme(
    primary: customMagenta50,
    primaryContainer: customMagenta600,
    secondary: Colors.amber,
    secondaryContainer: customMagenta400,
    surface: Colors.purpleAccent,
    background: customSurfaceWhite,
    error: customMagenta900,
    onPrimary: Colors.red,
    onSecondary: Colors.deepOrange,
    onSurface: customMagenta300,
    onBackground: customMagenta100,
    onError: Colors.redAccent,
    brightness: Brightness.light,
  );

  static const ColorScheme darkColorScheme = ColorScheme(
    primary: customMagenta50,
    primaryContainer: customMagenta600,
    secondary: Colors.amber,
    secondaryContainer: customMagenta400,
    surface: Colors.purpleAccent,
    background: customSurfaceWhite,
    error: customMagenta900,
    onPrimary: Colors.red,
    onSecondary: Colors.deepOrange,
    onSurface: customMagenta300,
    onBackground: customMagenta100,
    onError: Colors.redAccent,
    brightness: Brightness.light,
  );
}