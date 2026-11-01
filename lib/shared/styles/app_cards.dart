import 'package:material_ui/material_ui.dart';

class AppCards {
  static AppCard card({
    required Widget widget,
    VoidCallback? onPress,
    Color? color = Colors.blueGrey,
    double? height,
    double? width,
  }) {
    return AppCard(widget: widget, onPress: onPress, color: color, height: height, width: width);
  }
}

class AppCard extends StatelessWidget {
  final Widget widget;
  final VoidCallback? onPress;
  final Color? color;
  final double? height;
  final double? width;
  const AppCard({
    super.key,
    required this.widget,
    this.onPress,
    this.color = Colors.blueGrey,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: onPress,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          child: SizedBox(height: height, width: width, child: widget),
        ),
      ),
    );
  }
}
