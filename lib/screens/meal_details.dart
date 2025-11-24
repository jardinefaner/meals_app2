import 'package:flutter/material.dart';
import 'package:meals_app2/models/meal.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({super.key, required this.meal});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        spacing: 24,
        children: [
          Text('Image'),
          Text('Title'),
          Text('Ingredients'),
          Text('Steps'),
        ],
      ),
    );
  }
}
