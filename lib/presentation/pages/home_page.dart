import 'package:flutter/material.dart';
import 'package:imc_smart/presentation/widgets/gradient_text.dart';
import 'package:imc_smart/presentation/widgets/main_drawer.dart';
import 'package:imc_smart/presentation/widgets/smart_card.dart';
import 'package:imc_smart/providers/imc_provider.dart';
import 'package:imc_smart/theme/colors.dart';
import 'package:imc_smart/theme/style.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController weightController = TextEditingController();
  final TextEditingController heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
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
              onCalculate: () {
                context
                    .read<ImcProvider>()
                    .calculateBMI(weightController.text, heightController.text);
              },
            ),
            SizedBox(height: 20),
            Consumer<ImcProvider>(
              builder: (context, provider, child) {
                if (provider.showResults) {
                  return SmartCardResults(
                    bmiResult: provider.bmiResult,
                  );
                }
                return SizedBox.shrink();
              },
            )
          ],
        ),
      ),
    );
  }
}
