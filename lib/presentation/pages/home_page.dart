import 'package:flutter/material.dart';
import 'package:imc_smart/presentation/widgets/gradient_text.dart';
import 'package:imc_smart/presentation/widgets/main_drawer.dart';
import 'package:imc_smart/presentation/widgets/smart_card.dart';
import 'package:imc_smart/theme/colors.dart';
import 'package:imc_smart/theme/style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController weightController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  double? _bmiResult;
  bool _showResults = false;

  void _calculateBMI() {
    final double? weight = double.tryParse(weightController.text);
    final double? height = double.tryParse(heightController.text);

    if (weight == null || height == null || height == 0) {
      return;
    }

    setState(() {
      _bmiResult = weight / ((height / 100) * (height / 100));
      _showResults = true;
    });
  }

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SmartCard(
              weightController: weightController,
              heightController: heightController,
              onCalculate: _calculateBMI,
            ),
            SizedBox(height: 20),
            if (_showResults)
              SmartCardResults(
                bmiResult: _bmiResult,
              )
          ],
        ),
      ),
    );
  }
}
