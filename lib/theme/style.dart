import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imc_smart/presentation/pages/home_page.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: const Color(0xFFFF1B6B),
    primary: const Color(0xFFFF1B6B),
    secondary: const Color(0xFFFF1B6B),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  runApp(const IMCSmart());
}

class IMCSmart extends StatelessWidget {
  const IMCSmart({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: HomePage(),
    );
  }
}
