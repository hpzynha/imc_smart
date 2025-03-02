import 'package:flutter/material.dart';
import 'package:imc_smart/presentation/widgets/button_gradient.dart';
import 'package:imc_smart/presentation/widgets/input_field.dart';
import 'package:imc_smart/theme/style.dart';

import '../../theme/colors.dart';

class SmartCard extends StatefulWidget {
  const SmartCard({super.key});

  @override
  State<SmartCard> createState() => _SmartCardState();
}

class _SmartCardState extends State<SmartCard> {
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  double? _bmiResult;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cálculo de IMC',
                    style: AppTextStyles.title,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  buildInputField(
                      controller: _weightController,
                      title: 'Peso (kg)',
                      example: 'Ex: 70'),
                  SizedBox(
                    height: 5,
                  ),
                  buildInputField(
                      title: 'Altura (cm)',
                      example: 'Ex: 170',
                      controller: _heightController),
                  SizedBox(
                    height: 20,
                  ),
                  ButtonGradient(
                    onPressed: () {},
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
