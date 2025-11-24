import 'package:flutter/material.dart';
import 'package:meals_app2/screens/categories.dart';
import 'package:meals_app2/screens/meals.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final Widget _widget = const CategoriesScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pick your category')),
      body: _widget,
    );
  }
}
