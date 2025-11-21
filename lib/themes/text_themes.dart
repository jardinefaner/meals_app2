import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextThemes {
  static TextTheme _createTextTheme(TextTheme base) {
    final TextTheme bodyTheme = GoogleFonts.montserratTextTheme(base);
    final TextTheme headingTheme = GoogleFonts.merriweatherTextTheme(base);

    return headingTheme.copyWith(
      bodyLarge: bodyTheme.bodyLarge,
      bodyMedium: bodyTheme.bodyMedium,
      bodySmall: bodyTheme.bodySmall,
      labelLarge: bodyTheme.labelLarge,
      labelMedium: bodyTheme.labelMedium,
      labelSmall: bodyTheme.labelSmall,
    );
  }

  static TextTheme light = _createTextTheme(ThemeData.light().textTheme);
  static TextTheme dark = _createTextTheme(ThemeData.dark().textTheme);
}
