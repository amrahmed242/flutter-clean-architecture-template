import 'package:flutter/material.dart';

class PageBackground extends StatelessWidget {
  final double size;
  final String asset;
  const PageBackground({Key? key, required this.size, required this.asset})
      : super(key: key);

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
