import 'package:flutter/material.dart';

class AppColors {
  // Cores principais
  static const Color primary = Color(0xFFFF1B6B);
  static const Color secondary = Color(0xFF45CAFF);

  // Gradiente para botões e elementos visuais
  static const LinearGradient buttonGradient = LinearGradient(
    colors: [primary, secondary],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  // Outras cores do tema
  static const Color textBlack = Color(0xFF000000); // Preto para texto
  static const Color formFieldBackground = Color(0xFFffffff);
  static const Color formFieldBorder =
      Color(0XFFBEBFC5); // Cinza claro para campos
}
