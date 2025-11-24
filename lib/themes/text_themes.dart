import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextThemes {
  static TextTheme _createTextTheme(TextTheme base) {
    final TextTheme bodyTheme = GoogleFonts.montserratTextTheme(base);
    final TextTheme headingTheme = GoogleFonts.merriweatherTextTheme(base);

    return headingTheme.copyWith(
      headlineLarge: bodyTheme.headlineLarge,
      headlineMedium: bodyTheme.headlineMedium,
      headlineSmall: bodyTheme.headlineSmall,
      bodyLarge: bodyTheme.bodyLarge,
      bodyMedium: bodyTheme.bodyMedium,
      bodySmall: bodyTheme.bodySmall,
    );
  }

  static TextTheme light = _createTextTheme(ThemeData.light().textTheme);
  static TextTheme dark = _createTextTheme(ThemeData.dark().textTheme);
}
