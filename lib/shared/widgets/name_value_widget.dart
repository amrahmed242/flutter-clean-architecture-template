import 'package:material_ui/material_ui.dart';

class TextWStyle {
  final String text;
  final TextStyle style;

  TextWStyle({required this.text, required this.style});
}

class StyledTextWidget extends StatelessWidget {
  final List<TextWStyle> textWStyle;
  const StyledTextWidget({super.key, required this.textWStyle});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: textWStyle.map((o) => TextSpan(text: o.text, style: o.style)).toList(),
      ),
    );
  }
}
