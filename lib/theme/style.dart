import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart'; // Importando as cores

class AppTextStyles {
  static final TextStyle title = GoogleFonts.lato(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.textBlack,
  );

  static final TextStyle subTitle = GoogleFonts.lato(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.textBlack,
  );

  static final TextStyle body = GoogleFonts.lato(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.textBlack,
  );

  static final TextStyle button = GoogleFonts.lato(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
  static final TextStyle results = GoogleFonts.lato(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static final TextStyle content = GoogleFonts.lato(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.textBlack,
    height: 1.5,
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
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: AppColors.formFieldBackground,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    ),
  ),
);
