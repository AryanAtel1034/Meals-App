import 'package:flutter/material.dart';
// import 'package:meals_app/main.dart';
import 'package:meals_app/model/category_model.dart';

class CategoryItems extends StatelessWidget {
  const CategoryItems({
    super.key,
    required this.categoryItems,
  });

  final CategoryModel categoryItems;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      
      borderRadius: BorderRadius.circular(13),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(13),
          ),
          gradient: LinearGradient(
            colors: [
              categoryItems.color.withOpacity(0.55),
              categoryItems.color.withOpacity(0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(
          categoryItems.title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
        ),
      ),
    );
  }
}
