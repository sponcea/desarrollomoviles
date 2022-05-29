import 'package:flutter/material.dart';

class Tema {
  static const Color colorPrimarioDark = Colors.blue;
  static const Color colorPrimarioLight = Colors.green;
  static final ThemeData dark = ThemeData.dark().copyWith(
      primaryColor: colorPrimarioDark,
      appBarTheme: AppBarTheme(elevation: 0, color: colorPrimarioDark));

  static final ThemeData light = ThemeData.light().copyWith(
      primaryColor: colorPrimarioLight,
      iconTheme: IconThemeData(color: colorPrimarioLight),
      appBarTheme: AppBarTheme(elevation: 0, color: colorPrimarioLight));
}
