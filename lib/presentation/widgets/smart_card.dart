import 'package:flutter/material.dart';
import 'package:imc_smart/presentation/widgets/button_gradient.dart';
import 'package:imc_smart/presentation/widgets/input_field.dart';
import 'package:imc_smart/theme/style.dart';

class SmartCard extends StatefulWidget {
  final TextEditingController weightController;
  final TextEditingController heightController;
  const SmartCard(
      {super.key,
      required this.weightController,
      required this.heightController});

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
