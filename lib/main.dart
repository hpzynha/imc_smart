import 'package:flutter/material.dart';
import 'package:imc_smart/presentation/pages/home_page.dart';
import 'package:imc_smart/theme/style.dart';

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
      theme: appTheme,
      home: HomePage(),
    );
  }
}
