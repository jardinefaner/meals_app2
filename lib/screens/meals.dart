import 'package:flutter/material.dart';
import 'package:meals_app2/models/meal.dart';
import 'package:meals_app2/screens/meal_details.dart';
import 'package:meals_app2/widgets/meal_item.dart';
import 'package:meals_app2/widgets/texts.dart';

class MealsScreen extends StatelessWidget {
  MealsScreen({required this.title, required this.meals, super.key});

  final String title;
  List<Meal> meals;

  void _selectMeal(BuildContext context, String mealId) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => MealDetailsScreen(
          meal: meals.firstWhere((meal) => meal.id == mealId),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
      itemCount: meals.length,
      itemBuilder: (context, index) => MealItem(
        meal: meals[index],
        onSelectMeal: () {
          return _selectMeal(context, meals[index].id);
        },
      ),
    );

    if (meals.isEmpty) {
      content = const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Texts(
              'Uh oh... nothing here!',
              style: TypeStyle.title,
              size: TypeSize.medium,
            ),
            SizedBox(height: 16),
            Texts(
              'Try selecting a different category!',
              style: TypeStyle.body,
              size: TypeSize.medium,
            ),
          ],
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: content,
    );
  }
}
