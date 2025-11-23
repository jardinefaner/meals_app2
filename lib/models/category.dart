import 'package:flutter/material.dart';
import 'package:meals_app2/themes/color_schemes.dart';

class Category {
  const Category({required this.id, required this.title, this.color = seedColor});

  final String id;
  final String title;
  final Color color;
}
