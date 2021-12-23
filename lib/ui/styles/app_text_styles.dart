import 'package:flutter/material.dart';

import 'app_colors.dart';

class TextStyles {
  static const headerStyle =
      TextStyle(fontSize: 35, fontWeight: FontWeight.w900);
  static const subHeaderStyle =
      TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500);

  static const boldTextStyle = TextStyle(fontWeight: FontWeight.bold);
  static const normalTextStyle = TextStyle(fontWeight: FontWeight.normal);

  static const whiteTextStyle = TextStyle(color: Colors.white);
  static const redTextStyle = TextStyle(color: AppColors.secondaryText);
}
