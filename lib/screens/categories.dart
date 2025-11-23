import 'package:flutter/material.dart';
import 'package:meals_app2/widgets/category_grid_item.dart';

import '../data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 4 / 3,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        children: [
          ...availableCategories.map(
            (category) => CategoryGridItem(category: category),
          ),
        ],
      ),
    );
  }
}
