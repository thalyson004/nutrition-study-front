import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List<Shadow> simpleShadow = [
  Shadow(
    color: Colors.blue.shade900.withValues(alpha: 0.1),
    offset: const Offset(3, 3),
    blurRadius: 0.5,
  ),
];

final ThemeData myTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: Colors.white,
  textTheme: TextTheme(
    titleLarge: GoogleFonts.luckiestGuy(
      fontSize: 60,
      color: Colors.blue,
      shadows: simpleShadow,
    ),
    titleMedium: GoogleFonts.luckiestGuy(
      fontSize: 30,
      color: Colors.red,
      shadows: simpleShadow,
    ),
  ),
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFFF0AF49),
    onPrimary: Colors.white,
    secondary: Color(0xFFF0AF49),
    onSecondary: Colors.white,
    error: Color(0xFFFF3737),
    onError: Colors.white,
    // background: Color(0xFFF0AF49),
    surface: Colors.pink[50]!, //Color(0xFFF0AF49),
    onSurface: Colors.black,
    tertiary: Color(0xFF18AD00),
    onTertiary: Colors.white,
  ),
  appBarTheme: AppBarTheme(
    titleTextStyle:
        GoogleFonts.luckiestGuy(fontSize: 16, fontWeight: FontWeight.w600),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.pink[200]),
      foregroundColor: WidgetStateProperty.all(Colors.white),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      elevation: const WidgetStatePropertyAll(5),
      textStyle: WidgetStatePropertyAll(
        GoogleFonts.poppins(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: Color(0xFFF0AF49),
  ),
);
