import 'package:flutter/material.dart';
import 'package:imc_smart/theme/colors.dart';
import 'package:imc_smart/theme/style.dart';

class ButtonGradient extends StatefulWidget {
  final String title;
  final VoidCallback onCalculate;

  const ButtonGradient(
      {super.key, required this.title, required this.onCalculate});

  @override
  State<ButtonGradient> createState() => _ButtonGradientState();
}

class _ButtonGradientState extends State<ButtonGradient> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.primary,
              AppColors.secondary,
            ],
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: ElevatedButton(
          onPressed: widget.onCalculate,
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(15),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
          ),
          child: Text(
            widget.title,
            style: AppTextStyles.button,
          ),
        ),
      ),
    );
  }
}
