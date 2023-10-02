import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Colors.black,
      primaryContainer: Color(0XFF808080),
      onPrimary: Colors.white,
      secondary: Color(0XFFF5F5F5),
      onSecondary: Colors.black,
      error: Colors.red,
      onError: Colors.white,
      background: Colors.white,
      onBackground: Colors.black,
      surface: Color(0XFFF5F5F5),
      onSurface: Colors.black,
      surfaceVariant: Color(0XFFEEEEEE),
      surfaceTint: Color(0XFFD9D9D9),
      outline: Color(0XFFD9D9D9),
      outlineVariant: Color(0XFF808080),
    ),
    useMaterial3: true,
    textTheme: GoogleFonts.nunitoSansTextTheme().copyWith(
      labelMedium: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
      labelLarge: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
      labelSmall: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 18,
      ),
      bodyMedium: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
      ),
      bodySmall: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 10,
      ),
      headlineSmall: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        textStyle: const TextStyle(fontSize: 20),
        padding: const EdgeInsets.all(20),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );

  static final darkTheme = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Colors.white,
      primaryContainer: Color(0XFF909090),
      onPrimary: Colors.black,
      secondary: Color(0XFF191919),
      onSecondary: Colors.black,
      error: Colors.red,
      onError: Colors.white,
      background: Colors.black,
      onBackground: Colors.white,
      surface: Color(0XFF191919),
      onSurface: Colors.white,
      surfaceVariant: Color(0XFF262626),
      surfaceTint: Color(0XFF484848),
      outline: Color(0XFF252525),
      outlineVariant: Color(0XFF909090),
    ),
    useMaterial3: true,
    textTheme: GoogleFonts.nunitoSansTextTheme().copyWith(
      labelMedium: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
      labelLarge: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
      labelSmall: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 18,
      ),
      bodyMedium: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
      ),
      bodySmall: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 10,
      ),
      headlineSmall: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        textStyle: const TextStyle(fontSize: 20),
        padding: const EdgeInsets.all(20),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}
