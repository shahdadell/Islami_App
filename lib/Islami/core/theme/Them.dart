import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static bool isDark = true;

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: const Color(0xFFB7935F),
    colorScheme: ColorScheme.fromSeed(
      secondary: Colors.white,
      seedColor: const Color(0xFFB7935F),
      onSecondary: Colors.black,
      onPrimary: const Color(0xFFB7935F),
      onBackground: Colors.white,
    ),
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xFFB7935F),
      selectedItemColor: Colors.black,
      selectedIconTheme: IconThemeData(
        color: Colors.black,
        size: 35,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 35,
      ),
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.elMessiri(
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 30,
      ),
      bodyLarge: GoogleFonts.elMessiri(
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 25,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontWeight: FontWeight.w500,
        color: Colors.black,
        fontSize: 22,
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontWeight: FontWeight.normal,
        color: Colors.black,
        fontSize: 20,
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Color(0xFFB7935F).withOpacity(0.7),
    ),
    dividerColor: const Color(0xFFB7935F),
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: const Color(0xFF141A2E),
    colorScheme: ColorScheme.fromSeed(
      secondary: Colors.black,
      seedColor: const Color(0xFF141A2E),
      onSecondary: const Color(0xFFFACC1D),
      onPrimary: const Color(0xFFFACC1D),
      onBackground: const Color(0xFF141A2E),
    ),
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(color: Colors.white),
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
        textStyle: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xFF141A2E),
      selectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(
        color: Color(0xFFFACC1D),
        size: 35,
      ),
      unselectedItemColor: Colors.white,
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 35,
      ),
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.elMessiri(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 30,
      ),
      bodyLarge: GoogleFonts.elMessiri(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 25,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontWeight: FontWeight.w500,
        color: Colors.white,
        fontSize: 22,
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontWeight: FontWeight.normal,
        color: Colors.white,
        fontSize: 20,
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: const Color(0xFF141A2E).withOpacity(0.7),
    ),
    dividerColor: const Color(0xFFFACC1D),
  );
}
