import 'package:material_ui/material_ui.dart';

class PageBackground extends StatelessWidget {
  final double size;
  final String asset;
  const PageBackground({super.key, required this.size, required this.asset});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: .06,
      child: Center(
        child: Image.asset(
          'assets/images/$asset.png',
          fit: BoxFit.fitWidth,
          width: size,
          height: size,
        ),
      ),
    );
  }
}
