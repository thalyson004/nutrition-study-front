import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List<Shadow> simpleShadow = [
  Shadow(
    color: Colors.blue.shade900.withOpacity(0.1),
    offset: const Offset(3, 3),
    blurRadius: 0.5,
  ),
];

final ThemeData myTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  textTheme: TextTheme(
    headline1: GoogleFonts.luckiestGuy(
      fontSize: 60,
      color: Colors.blue,
      shadows: simpleShadow,
    ),
    headline2: GoogleFonts.luckiestGuy(
      fontSize: 30,
      color: Colors.red,
      shadows: simpleShadow,
    ),
  ),
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFFF0AF49),
    onPrimary: Colors.white,
    secondary: Color(0xFFF0AF49),
    onSecondary: Colors.white,
    error: Color(0xFFFF3737),
    onError: Colors.white,
    background: Color(0xFFF0AF49),
    onBackground: Colors.black,
    surface: Color(0xFFF0AF49),
    onSurface: Colors.white,
    tertiary: Color(0xFF18AD00),
    onTertiary: Colors.white,
  ),
  appBarTheme: AppBarTheme(
    titleTextStyle:
        GoogleFonts.luckiestGuy(fontSize: 16, fontWeight: FontWeight.w600),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.pink[200]),
      foregroundColor: MaterialStateProperty.all(Colors.white),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      elevation: const MaterialStatePropertyAll(5),
      textStyle: MaterialStatePropertyAll(
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
