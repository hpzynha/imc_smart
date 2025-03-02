import 'package:flutter/material.dart';
import 'package:imc_smart/presentation/widgets/gradient_text.dart';
import 'package:imc_smart/presentation/widgets/main_drawer.dart';
import 'package:imc_smart/presentation/widgets/smart_card.dart';
import 'package:imc_smart/theme/colors.dart';
import 'package:imc_smart/theme/style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: GradientText(
            text: 'IMC Smart',
            gradient: AppColors.buttonGradient,
            style: AppTextStyles.title),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          SmartCard(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

Widget _buildCalculator() {
  return SingleChildScrollView(
    padding: EdgeInsets.all(20),
    child: Form(
      child: Column(
        children: [TextFormField()],
      ),
    ),
  );
}
