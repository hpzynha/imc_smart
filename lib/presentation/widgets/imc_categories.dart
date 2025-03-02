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
        _buildCategoryItem('Abaixo do peso', '< 18.5'),
        _buildCategoryItem('Peso normal', '18.5 - 24.9'),
        _buildCategoryItem('Sobrepeso', '25 - 29.9'),
        _buildCategoryItem('Obesidade Grau I', '30 - 34.9'),
        _buildCategoryItem('Obesidade Grau II', '35 - 39.9'),
        _buildCategoryItem('Obesidade Grau III', '≥ 40'),
      ],
    );
  }
}

Widget _buildCategoryItem(String category, String range) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 5),
    child: CheckboxListTile(
      contentPadding: EdgeInsets.zero,
      dense: true,
      controlAffinity: ListTileControlAffinity.leading,
      title: RichText(
        text: TextSpan(style: AppTextStyles.body, children: [
          TextSpan(
            text: '$category',
            style: AppTextStyles.body,
          ),
          TextSpan(
            text: range,
            style: AppTextStyles.body,
          ),
        ]),
      ),
      value: false,
      onChanged: null,
      activeColor: Colors.blue,
      checkboxShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
    ),
  );
}
