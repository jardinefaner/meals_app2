import 'package:flutter/material.dart';
import 'package:meals_app2/models/category.dart';
import 'package:meals_app2/screens/meals.dart';
import 'package:meals_app2/widgets/category_grid_item.dart';

import '../data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  void _selectCategory(BuildContext context, Category category) {
    final fileredMeals = dummyMeals.where((meal) => meal.categories.contains(category.id)).toList();

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => MealsScreen(title: category.title, meals: fileredMeals),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 4 / 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        children: [
          ...availableCategories.map(
            (category) => CategoryGridItem(
              category: category,
              onSelectCategory: () {
                _selectCategory(context, category);
              },
            ),
          ),
        ],
      ),
    );
  }
}
