import 'package:flutter/material.dart';
import 'package:meals_app/model/meals_model.dart';
import 'package:meals_app/widgets/meal_items.dart';

class MealsDetails extends StatelessWidget {
  const MealsDetails({super.key, required this.meal});

  final MealModel meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(meal.title),
                backgroundColor: const Color.fromRGBO(17, 109, 110, 1),

      ),
    );
  }
}
