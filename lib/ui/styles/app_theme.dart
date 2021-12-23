import 'package:flutter/material.dart';

// import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTheme {
  static final textTheme = const TextTheme(
    button: TextStyle(fontWeight: FontWeight.bold),
    headline1: TextStyle(fontWeight: FontWeight.bold),
    headline2: TextStyle(fontWeight: FontWeight.bold),
  ).apply(
    bodyColor: AppColors.primaryText,
    displayColor: AppColors.primaryText,
  );
  static final mainTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColors.backgroundColor,
    iconTheme: const IconThemeData(color: Colors.grey),
    buttonTheme: ButtonThemeData(buttonColor: AppColors.accentColor.withOpacity(.9)),
    primaryTextTheme: textTheme,
    // textTheme: GoogleFonts.poppinsTextTheme(textTheme),
    canvasColor: AppColors.backgroundColor,
  );
}
