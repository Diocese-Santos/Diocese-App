// coverage:ignore-file

import 'package:flutter/material.dart';

abstract final class AppTheme {
  static InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.grey.shade400),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.blue),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.grey.shade400),
    ),
    prefixIconColor: Colors.grey.shade400,
    labelStyle: TextStyle(color: Colors.grey.shade400),
  );

  static FilledButtonThemeData filledButtonStyle = FilledButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.blue),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
  );

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    dividerTheme: const DividerThemeData(space: 0),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: true,
    ),
    inputDecorationTheme: inputDecorationTheme,
    filledButtonTheme: filledButtonStyle,
    fontFamily: 'Montserrat',
    extensions: const [],
  );

  static ThemeData darkTheme = lightTheme;
}
