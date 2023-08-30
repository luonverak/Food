import 'package:flutter/material.dart';

class FontStyleText extends StatelessWidget {
  const FontStyleText(
      {super.key,
      required this.text,
      required this.sizeText,
      this.weightText,
      this.colorText,
      this.line,
      this.textAlign});

  final String? text;
  final double? sizeText;
  final FontWeight? weightText;
  final Color? colorText;
  final int? line;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: sizeText,
        fontWeight: weightText,
        color: colorText,
      ),
      maxLines: line,
      textAlign: textAlign,
    );
  }
}
