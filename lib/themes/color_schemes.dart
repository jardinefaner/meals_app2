import 'package:flutter/material.dart';

const Color seedColor = Colors.red;

class ColorSchemes {
  static final ColorScheme light = ColorScheme.fromSeed(
    seedColor: seedColor,
    brightness: Brightness.light,
  );

  static final ColorScheme dark = ColorScheme.fromSeed(
    seedColor: seedColor,
    brightness: Brightness.dark,
  );
}