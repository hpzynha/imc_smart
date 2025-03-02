import 'package:flutter/material.dart';
import 'package:imc_smart/presentation/widgets/button_gradient.dart';
import 'package:imc_smart/presentation/widgets/imc_categories.dart';
import 'package:imc_smart/presentation/widgets/input_field.dart';
import 'package:imc_smart/theme/colors.dart';
import 'package:imc_smart/theme/style.dart';

class SmartCard extends StatefulWidget {
  final TextEditingController weightController;
  final TextEditingController heightController;
  final VoidCallback onCalculate;
  const SmartCard(
      {super.key,
      required this.weightController,
      required this.heightController,
      required this.onCalculate});

  @override
  State<SmartCard> createState() => _SmartCardState();
}

class _SmartCardState extends State<SmartCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Card(
          color: Colors.white,
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Calculadora de IMC',
                    style: AppTextStyles.title,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  buildInputField(
                      controller: widget.weightController,
                      title: 'Peso (kg)',
                      example: 'Ex: 70'),
                  SizedBox(
                    height: 5,
                  ),
                  buildInputField(
                      title: 'Altura (cm)',
                      example: 'Ex: 170',
                      controller: widget.heightController),
                  SizedBox(
                    height: 20,
                  ),
                  ButtonGradient(
                    onCalculate: widget.onCalculate,
                    title: 'Calcular',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SmartCardResults extends StatelessWidget {
  final double? bmiResult;
  const SmartCardResults({super.key, this.bmiResult});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Card(
          color: Colors.white,
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Seu Resultado',
                    style: AppTextStyles.title,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: AppColors.buttonGradient,
                        ),
                      ),
                      Text(
                        '${bmiResult?.toStringAsFixed(2) ?? 00.00}',
                        style: AppTextStyles.results,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(),
                  ImcCategories(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
