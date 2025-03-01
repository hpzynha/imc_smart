import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Gradient gradient;

  const GradientText({
    Key? key,
    required this.text,
    required this.style,
    required this.gradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      blendMode:
          BlendMode.srcIn, // Garante que o gradiente se aplique corretamente
      child: Text(
        text,
        style: style.copyWith(
          color: Colors
              .white, // Define a cor base, mas será sobrescrita pelo ShaderMask
        ),
      ),
    );
  }
}
