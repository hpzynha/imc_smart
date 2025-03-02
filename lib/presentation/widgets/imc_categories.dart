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
      ],
    );
  }
}
