import 'package:flutter/material.dart';
import 'package:imc_smart/theme/style.dart';

import '../../theme/colors.dart';

Widget buildInputField({
  required String title,
  required String example,
  required TextEditingController controller,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: AppTextStyles.body,
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          hintText: example,
          filled: true,
          fillColor: AppColors.formFieldBackground,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(
              color: AppColors.formFieldBorder,
            ),
          ),
        ),
      ),
    ],
  );
}
