import 'package:flutter/material.dart';
import 'package:imc_smart/theme/style.dart';

class ImcCategories extends StatelessWidget {
  const ImcCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Categorias de IMC:',
          style: AppTextStyles.subTitle,
        ),
        SizedBox(
          height: 20,
        ),
        _buildCategoryItem('Abaixo do peso', '< 18.5', Colors.blue),
        _buildCategoryItem('Peso normal', '18.5 - 24.9', Colors.green),
        _buildCategoryItem('Sobrepeso', '25 - 29.9', Colors.orange),
        _buildCategoryItem('Obesidade Grau I', '30 - 34.9', Colors.deepOrange),
        _buildCategoryItem('Obesidade Grau II', '35 - 39.9', Colors.red),
        _buildCategoryItem('Obesidade Grau III', '≥ 40', Colors.purple),
      ],
    );
  }
}

Widget _buildCategoryItem(String category, String range, Color color) {
  return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(top: 2, right: 8),
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: AppTextStyles.body,
                children: [
                  TextSpan(text: category),
                  TextSpan(text: ' ($range)', style: AppTextStyles.body),
                ],
              ),
            ),
          ),
        ],
      ));
}
