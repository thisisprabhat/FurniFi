import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Colors.black,
      onPrimary: Colors.white,
      secondary: Color(0XFFF5F5F5),
      onSecondary: Colors.black,
      error: Colors.red,
      onError: Colors.white,
      background: Colors.white,
      onBackground: Colors.black,
      surface: Color(0XFFD9D9D9),
      onSurface: Colors.black,
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
        padding: const EdgeInsets.all(18),
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    ),
  );
}
