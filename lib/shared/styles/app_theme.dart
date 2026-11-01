import 'package:material_ui/material_ui.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTheme {
  static final textTheme = const TextTheme(
    labelLarge: TextStyle(fontWeight: FontWeight.bold),
    displayLarge: TextStyle(fontWeight: FontWeight.bold),
    displayMedium: TextStyle(fontWeight: FontWeight.bold),
  ).apply(bodyColor: AppColors.primaryText, displayColor: AppColors.primaryText);
  static final mainTheme = ThemeData.dark().copyWith(
    primaryTextTheme: textTheme,
    canvasColor: AppColors.backgroundColor,
    textTheme: GoogleFonts.poppinsTextTheme(textTheme),
    scaffoldBackgroundColor: AppColors.backgroundColor,
    iconTheme: const IconThemeData(color: Colors.grey),
    buttonTheme: ButtonThemeData(buttonColor: AppColors.accentColor.withValues(alpha: .9)),
  );
}
