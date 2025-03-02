import 'package:flutter/material.dart';
import 'package:imc_smart/presentation/widgets/gradient_text.dart';
import 'package:imc_smart/theme/colors.dart';
import 'package:imc_smart/theme/style.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.formFieldBackground,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: GradientText(
            text: 'IMC Smart',
            gradient: AppColors.buttonGradient,
            style: AppTextStyles.title),
      ),
    );
  }
}
