import 'package:flutter/material.dart';

class AppCards {
  static card({required Widget widget}) {
    return _AppCard(widget: widget);
  }
}

class _AppCard extends StatelessWidget {
  final Widget widget;
  final Function? onPress;
  final Color? color;
  final double? height;
  final double? width;
  const _AppCard(
      {Key? key,
      required this.widget,
      this.onPress,
      this.color = Colors.blueGrey,
      this.height,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () => onPress != null ? onPress!() : {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          child: SizedBox(height: height, width: width, child: widget),
        ),
      ),
    );
  }
}
