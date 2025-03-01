import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color primary = Color(0xFFFF1B6B);
  static const Color secondary = Color(0xFFFF1B6B);
}

class AppTextStyles {
  static final TextStyle title = GoogleFonts.lato(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static final TextStyle body = GoogleFonts.lato(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

  static final TextStyle button = GoogleFonts.lato(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}

final ThemeData appTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: AppColors.primary,
    primary: AppColors.primary,
    secondary: AppColors.secondary,
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);
