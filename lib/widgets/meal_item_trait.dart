import 'package:flutter/material.dart';
import 'package:meals_app2/widgets/texts.dart';

class MealItemTrait extends StatelessWidget {
  const MealItemTrait({super.key, required this.icon, this.label});

  final IconData icon;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 16, color: Colors.white),
        const SizedBox(width: 4),
        Texts(label!, style: TypeStyle.label, size: TypeSize.large),
      ],
    );
  }
}
