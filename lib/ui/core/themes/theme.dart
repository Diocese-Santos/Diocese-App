// coverage:ignore-file

import 'package:flutter/material.dart';

abstract final class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    dividerTheme: const DividerThemeData(space: 0),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: true,
    ),
    fontFamily: 'Montserrat',
    extensions: const [],
  );

  static ThemeData darkTheme = lightTheme;
}
