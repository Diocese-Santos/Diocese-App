// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract final class AppTheme {
  static BottomNavigationBarThemeData bottomNavigationBarTheme =
      BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: Colors.blueAccent[400],
    unselectedItemColor: Colors.grey.shade400,
    showSelectedLabels: true,
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
    selectedIconTheme: IconThemeData(
      color: Colors.blueAccent[400],
    ),
    selectedLabelStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
    ),
    unselectedLabelStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    unselectedIconTheme: const IconThemeData(
      color: Colors.grey,
    ),
  );

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
      fixedSize: WidgetStateProperty.all(const Size(double.infinity, 48)),
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
      fixedSize: WidgetStateProperty.all(const Size(double.infinity, 48)),
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
    bottomNavigationBarTheme: bottomNavigationBarTheme,
    fontFamily: GoogleFonts.roboto().fontFamily,
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontFamily: GoogleFonts.montserrat().fontFamily,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        fontFamily: GoogleFonts.montserrat().fontFamily,
        fontWeight: FontWeight.w600,
      ),
      titleSmall: TextStyle(
        fontFamily: GoogleFonts.montserrat().fontFamily,
        fontWeight: FontWeight.w600,
      ),
    ),
    extensions: const [],
  );

  static ThemeData darkTheme = lightTheme;
}
