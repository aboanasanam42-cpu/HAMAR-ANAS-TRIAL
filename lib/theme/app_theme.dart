
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color _primaryColor = Color(0xFF00BFA5); // A vibrant trading green
  static const Color _darkBackgroundColor = Color(0xFF121212);
  static const Color _darkCardColor = Color(0xFF1E1E1E);

  static final TextTheme _appTextTheme = TextTheme(
    displayLarge: GoogleFonts.tajawal(fontSize: 57, fontWeight: FontWeight.bold),
    titleLarge: GoogleFonts.tajawal(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
    titleMedium: GoogleFonts.tajawal(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white70),
    bodyLarge: GoogleFonts.tajawal(fontSize: 16, color: Colors.white),
    bodyMedium: GoogleFonts.tajawal(fontSize: 14, color: Colors.white70),
    labelLarge: GoogleFonts.tajawal(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
  );

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: _primaryColor,
      scaffoldBackgroundColor: _darkBackgroundColor,
      cardColor: _darkCardColor,
      textTheme: _appTextTheme,
      appBarTheme: AppBarTheme(
        backgroundColor: _darkBackgroundColor,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: _appTextTheme.titleLarge,
        iconTheme: const IconThemeData(color: _primaryColor),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: _primaryColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          textStyle: _appTextTheme.labelLarge,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: _darkCardColor,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        hintStyle: _appTextTheme.bodyMedium,
      ),
      cardTheme: CardThemeData(
        elevation: 4,
        color: _darkCardColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      ), colorScheme: ColorScheme.fromSeed(seedColor: _primaryColor, brightness: Brightness.dark).copyWith(background: _darkBackgroundColor),
    );
  }
}
