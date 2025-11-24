import 'package:flutter/material.dart';
import 'package:meals_app2/models/category.dart';
import 'package:meals_app2/screens/meals.dart';
import 'package:meals_app2/widgets/texts.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({
    super.key,
    required this.category,
    required this.onSelectCategory,
  });

  final Category category;
  final void Function() onSelectCategory;

  // void handleTap(BuildContext context) {
  //   Navigator.of(context).push(MealsScreen(title: category.title, meals: []))
  // }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelectCategory,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [
              Theme.of(context).colorScheme.primaryContainer,
              Theme.of(
                context,
              ).colorScheme.primaryContainer.withValues(alpha: 0.7),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Texts(
          category.title,
          style: TypeStyle.title,
          size: TypeSize.medium,
        ),
      ),
    );
  }
}
