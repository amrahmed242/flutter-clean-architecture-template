// import 'package:docuvax/core/services/localization/localization.dart';
// import 'package:flutter/material.dart';

// import '../../styles/colors.dart';
// import '../loading_widget.dart';

// class TransparentButton extends StatelessWidget {
//   final bool localize;
//   final bool busy;
//   final bool bold;
//   final double width;
//   final double height;
//   final double raduis;
//   final double elevation;
//   final String text;
//   final Widget child;

//   final Color color;
//   final EdgeInsets margin;
//   final EdgeInsets padding;
//   final Function onPressed;
//   final Color textColor;
//   const TransparentButton(
//       {Key key,
//       this.busy = false,
//       this.localize = true,
//       this.onPressed,
//       this.child,
//       this.text = 'ok',
//       this.width,
//       this.height,
//       this.elevation = 0,
//       this.raduis = 12,
//       this.margin = const EdgeInsets.symmetric(vertical: 5),
//       this.padding = const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
//       this.textColor = AppColors.primaryElement,
//       this.color = AppColors.primaryElement,
//       this.bold = true})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final locale = AppLocalizations.of(context);

//     return Padding(
//       padding: margin,
//       child: MaterialButton(
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(raduis), side: BorderSide(style: BorderStyle.solid, width: 2, color: color)),
//         elevation: elevation,
//         hoverElevation: 0,
//         focusElevation: 0,
//         highlightElevation: elevation,
//         minWidth: width ?? double.infinity,
//         onPressed: () => onPressed == null || busy ? {} : onPressed(),
//         child: Padding(
//           padding: padding,
//           child: busy
//               ? LoadingIndicator(size: 16)
//               : child ??
//                   Text(localize ? locale.get(text) : text,
//                       style: TextStyle(color: textColor, fontSize: 14, fontWeight: bold ? FontWeight.bold : FontWeight.normal)),
//         ),
//       ),
//     );
//   }
// }
