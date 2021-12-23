// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';

// class FadedWidget extends HookWidget {
//   final Widget widget;
//   final int durationMill;
//   final bool repeat;
//   const FadedWidget({Key key, this.durationMill = 1000, this.repeat = false, this.widget}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // start the animation
//     final controller = useAnimationController(duration: Duration(milliseconds: durationMill ?? 1500))..forward();

//     if (repeat) {
//       controller..repeat(reverse: true);
//     }

//     return FadeTransition(opacity: controller, child: widget);
//   }
// }
