import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_category_data.dart';
import 'package:meals_app/widgets/category_items.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Category'),
        backgroundColor: const Color.fromRGBO(17, 109, 110, 1),
      ),
      body: GridView(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          for (final category in availableCategories)
            CategoryItems(
              categoryItems: category,
            )
        ],
      ),
    );
  }
}
