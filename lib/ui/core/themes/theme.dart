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

  static OutlinedButtonThemeData outlinedButtonStyle = OutlinedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.all(Colors.blue),
      side: WidgetStateProperty.all(BorderSide(color: Colors.blue)),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: Colors.blue),
        ),
      ),
    ),
  );

  static IconButtonThemeData iconButtonStyle = IconButtonThemeData(
    style: ButtonStyle(
      padding: WidgetStateProperty.all(EdgeInsets.zero),
      backgroundColor: WidgetStateProperty.all(Colors.white),
      shadowColor: WidgetStateProperty.all(Colors.black),
      elevation: WidgetStateProperty.all(5),
      fixedSize: WidgetStateProperty.all(const Size(48, 48)),
    ),
  );

  static BottomSheetThemeData bottomSheetTheme = BottomSheetThemeData(
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(32),
        topRight: Radius.circular(32),
      ),
    ),
    dragHandleColor: Colors.grey[200],
  );

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    dividerTheme: const DividerThemeData(space: 0),
    appBarTheme: const AppBarTheme(elevation: 0, centerTitle: true),
    inputDecorationTheme: inputDecorationTheme,
    filledButtonTheme: filledButtonStyle,
    outlinedButtonTheme: outlinedButtonStyle,
    iconButtonTheme: iconButtonStyle,
    bottomSheetTheme: bottomSheetTheme,
    fontFamily: 'Montserrat',
    extensions: const [],
  );

  static ThemeData darkTheme = lightTheme;
}
