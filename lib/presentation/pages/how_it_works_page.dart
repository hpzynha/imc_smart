import 'package:flutter/material.dart';
import 'package:imc_smart/presentation/widgets/gradient_text.dart';
import 'package:imc_smart/theme/colors.dart';
import 'package:imc_smart/theme/style.dart';

class HowItWorksPage extends StatelessWidget {
  const HowItWorksPage({super.key});

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
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            _buildSection(
              title: 'O que é IMC?',
              content:
                  'O Índice de Massa Corporal (IMC) é uma medida internacional usada para calcular se uma '
                  'pessoa está no peso ideal. Desenvolvido pelo matemático Lambert Quételet no século XIX, o '
                  'IMC é um método simples e rápido que relaciona o peso e a altura de uma pessoa.',
            ),
            SizedBox(
              height: 20,
            ),
            _buildImcTable(),
            SizedBox(
              height: 20,
            ),
            _buildSection(
              title: 'Limitações do IMC',
              content:
                  'O Índice de Massa Corporal (IMC) é uma medida internacional usada para calcular se uma '
                  'pessoa está no peso ideal. Desenvolvido pelo matemático Lambert Quételet no século XIX, o '
                  'IMC é um método simples e rápido que relaciona o peso e a altura de uma pessoa.',
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildSection({required String title, required String content}) {
  return Column(
    children: [
      Text(title, style: AppTextStyles.title),
      SizedBox(height: 10),
      Text(content, style: AppTextStyles.content),
    ],
  );
}

Widget _buildImcTable() {
  return Column(
    children: [
      Text(
        'Categorias de IMC',
        style: AppTextStyles.title,
      ),
      SizedBox(height: 15),
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Table(
          columnWidths: {
            0: FlexColumnWidth(2),
            1: FlexColumnWidth(3),
            2: FlexColumnWidth(4),
          },
          border: TableBorder(
            horizontalInside: BorderSide(color: Colors.grey, width: 0.5),
          ),
          children: [
            TableRow(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey, width: 0.5),
                ),
              ),
              children: [
                _buildTableCell('IMC', isHeader: true),
                _buildTableCell('Classificação', isHeader: true),
                _buildTableCell('Risco de Comorbidades', isHeader: true),
              ],
            ),
            TableRow(children: [
              _buildTableCell('Menor que 18,5'),
              _buildTableCell('Abaixo do peso'),
              _buildTableCell(
                  'Baixo (mas com risco de outros problemas clínicos)'),
            ]),
            TableRow(children: [
              _buildTableCell('18,5 a 24,9'),
              _buildTableCell('Peso normal'),
              _buildTableCell('Normal'),
            ]),
            TableRow(children: [
              _buildTableCell('25,0 a 29,9'),
              _buildTableCell('Sobrepeso'),
              _buildTableCell('Aumentado'),
            ]),
            TableRow(children: [
              _buildTableCell('30,0 a 34,9'),
              _buildTableCell('Obesidade Grau I'),
              _buildTableCell('Moderado'),
            ]),
            TableRow(children: [
              _buildTableCell('35,0 a 39,9'),
              _buildTableCell('Obesidade Grau II'),
              _buildTableCell('Grave'),
            ]),
            TableRow(children: [
              _buildTableCell('Maior ou igual a 40,0'),
              _buildTableCell('Obesidade Grau III'),
              _buildTableCell('Muito grave'),
            ]),
          ],
        ),
      ),
    ],
  );
}

Widget _buildTableCell(String text, {bool isHeader = false}) {
  return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: Text(text,
          style: isHeader ? AppTextStyles.subTitle : AppTextStyles.content));
}
