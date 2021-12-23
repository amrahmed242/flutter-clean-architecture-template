import 'package:flutter/material.dart';

class TextWStyle {
  final String text;
  final TextStyle style;

  TextWStyle({required this.text, required this.style});
}

class StyledTextWidget extends StatelessWidget {
  final List<TextWStyle> textWStyle;
  const StyledTextWidget({Key? key, required this.textWStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: textWStyle
            .map((o) => TextSpan(text: o.text, style: o.style))
            .toList(),
      ),
    );
  }
}
