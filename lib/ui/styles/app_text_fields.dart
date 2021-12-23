// // import 'package:auto_size_text/auto_size_text.dart';
// import 'package:flutter/material.dart';

// class TextFields {

// }




// class CustomTextFormField extends StatelessWidget {
//   final EdgeInsets padding;
//   final Function(String) onChanged;
//   final int lines;
//   final bool secure;
//   final bool enabled;
//   final Color color;
//   final Color borderColor;
//   final Color hintColor;
//   final String hint;
//   final String label;
//   final Color textColor;
//   final TextEditingController controller;
//   final TextInputType keyboardType;
//   final Widget icon;
//   final String Function(String) validator;

//   const CustomTextFormField(
//       {Key key,
//       this.onChanged,
//       this.secure = false,
//       this.enabled = true,
//       this.padding = const EdgeInsets.symmetric(vertical: 5.0),
//       this.controller,
//       this.hint,
//       this.lines = 1,
//       this.keyboardType = TextInputType.text,
//       this.icon,
//       this.color = Colors.white,
//       this.borderColor = Colors.white,
//       this.hintColor,//=AppColors.primaryText,
//       this.validator,
//       this.textColor,// = AppColors.primaryText,
//       this.label})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: padding,
//       child: label == null ? buildTextFormField() : buildLabeledTextFormField(),
//     );
//   }

//   buildTextFormField() {
//     return TextFormField(
//       validator: validator,
//       maxLines: lines,
//       enabled: enabled,
//       keyboardType: keyboardType,
//       obscureText: secure,
//       controller: controller,
//       onChanged: onChanged == null ? null : (str) => onChanged(str),
//       style: TextStyle(fontSize: 17, color: textColor),
//       decoration: InputDecoration(
//         // suffixIcon: IconTheme(data: IconThemeData(size: 20), child: icon),

//         hintText: hint,
//         hintStyle: TextStyle(fontSize: 16, color: hintColor),
//         errorStyle: TextStyle(color: AppColors.accentText),
//         // helperStyle: TextStyle(fontSize: 16, color: color),
//         // labelStyle: TextStyle(fontSize: 16, color: Colors.white70),
//         contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//         border: InputBorder.none,
//         disabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.all(Radius.circular(8)),
//           borderSide: BorderSide(width: 1.3, color: borderColor),
//         ),
//         errorBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.all(Radius.circular(8)),
//           borderSide: BorderSide(width: 1.3, color: borderColor),
//         ),
//         focusedErrorBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.all(Radius.circular(8)),
//           borderSide: BorderSide(width: 1.3, color: AppColors.accentText),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.all(Radius.circular(8)),
//           borderSide: BorderSide(width: 1.3, color: borderColor),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.all(Radius.circular(8)),
//           borderSide: BorderSide(width: 1.3, color: borderColor),
//         ),
//       ),
//     );
//   }

//   buildLabeledTextFormField() {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       mainAxisSize: MainAxisSize.min,
//       textDirection: TextDirection.rtl,
//       children: [
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 0),
//             child: AutoSizeText(
//               label,
//               textAlign: TextAlign.center,
//               maxLines: 1,
//               maxFontSize: 18,
//               overflow: TextOverflow.fade,
//               style: TextStyle(fontSize: 18, color: color),
//             ),
//           ),
//         ),
//         Expanded(flex: 3, child: buildTextFormField())
//       ],
//     );
//   }
// }
