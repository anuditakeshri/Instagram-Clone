import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  GradientText(
      this.text,
      this.gradient,
      this.textstyle
      );

  final String text;
  final Gradient gradient;
  final TextStyle textstyle;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
          text,
          style: textstyle
      ),
    );
  }
}