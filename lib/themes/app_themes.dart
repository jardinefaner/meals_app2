import 'package:flutter/material.dart';
import 'package:meals_app2/themes/color_schemes.dart';
import 'package:meals_app2/themes/text_themes.dart';

class AppThemes {
  static ThemeData light = ThemeData.from(
    useMaterial3: true,
    colorScheme: ColorSchemes.light,
    textTheme: TextThemes.light,
  );

  static ThemeData dark = ThemeData.from(
    useMaterial3: true,
    colorScheme: ColorSchemes.dark,
    textTheme: TextThemes.dark,
  );
}
